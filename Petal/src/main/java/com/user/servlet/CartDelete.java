package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CartDAOImpl;
import com.DB.DBconnect;
@WebServlet("/cartDelete")
public class CartDelete extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int pid=Integer.parseInt(req.getParameter("pid"));
			int uid=Integer.parseInt(req.getParameter("uid"));
			CartDAOImpl dao=new CartDAOImpl(DBconnect.getCon());
			boolean f=dao.deleteProduct(pid, uid);
			HttpSession session=req.getSession();
			if(f) {
				session.setAttribute("removeCart", "One product removed from cart successfully");
				resp.sendRedirect("cart.jsp");
			}
			else {
				session.setAttribute("failed", "Something wrong on server");
				resp.sendRedirect("cart.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
