package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.DB.DBconnect;
import com.entity.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String fname = req.getParameter("fname");
			String lname = req.getParameter("lname");
			String phone = req.getParameter("phone");
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			String option = req.getParameter("option");
			String check = req.getParameter("check");
			
			//System.out.println(name+" "+email+" "+phone+" "+option+" "+password+" "+check);
			
			User us = new User();
			us.setFname(fname);
			us.setLname(lname);
			us.setPhone(phone);
			us.setEmail(email);
			us.setPassword(password);
			us.setOption(option);
			
			HttpSession session = req.getSession();
			if(check!=null) {
				UserDAOImpl dao=new UserDAOImpl(DBconnect.getCon());
				boolean f=dao.userRegister(us);
				if(f) {
					session.setAttribute("sucMsg", "Successfully Register...");
					resp.sendRedirect("login.jsp");
				}
				else {
					session.setAttribute("faildMsg", "Something wrong on server...");
					resp.sendRedirect("registration.jsp");
				}
			}
			else {
				session.setAttribute("faildMsg", "Please Check Agree term & condition");
				resp.sendRedirect("registration.jsp");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	

}
