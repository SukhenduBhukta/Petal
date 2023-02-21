package com.user.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBconnect;

@WebServlet("/newpassword")
public class NewPassword extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String password=req.getParameter("password");
		String repassword=req.getParameter("repassword");
		HttpSession session=req.getSession();
		RequestDispatcher dispatcher=null;
		if (password!=null && repassword!=null && password.equals(repassword)) {
			try {
				Connection con=DBconnect.getCon();
				String sql="update user set password=? where email=?";
				PreparedStatement psmt=con.prepareStatement(sql);
				psmt.setString(1, password);
				psmt.setString(2, (String) session.getAttribute("email"));
				int i=psmt.executeUpdate();
				if(i==1) {
					req.setAttribute("sucMsg", "resetSuccess");
					dispatcher = req.getRequestDispatcher("login.jsp");
				} else {
					req.setAttribute("faildMsg", "resetFailed");
					dispatcher = req.getRequestDispatcher("login.jsp");
				}
				dispatcher.forward(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}
