package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.DoctorDAOImpl;
import com.DAO.UserDAOImpl;
import com.DB.DBconnect;
import com.entity.Doctor;
import com.entity.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			UserDAOImpl dao = new UserDAOImpl(DBconnect.getCon());
			DoctorDAOImpl dao2=new DoctorDAOImpl(DBconnect.getCon());
			HttpSession session = req.getSession();

			String email = req.getParameter("email");
			String password = req.getParameter("password");
			String designation=req.getParameter("option");
			//String check = req.getParameter("check");
			// System.out.print(email+" "+password);

				if ("admin@gmail.com".equals(email) && "admin123".equals(password)) {
					User us = new User();
					session.setAttribute("userobj1", us);
					resp.sendRedirect("admin/home.jsp");
				}
				else if ("Seller".equals(designation)) {
					User us = dao.login(email, password,designation);
					if (us != null) {
						session.setAttribute("userobj3", us);
						resp.sendRedirect("seller/home.jsp");
					}
					else {
						session.setAttribute("faildMsg", "Email & Password Invalid");
						resp.sendRedirect("login.jsp");
					}
				}
				else if ("Doctor".equals(designation)) {
					Doctor us = dao2.login(email, password);
					if (us != null) {
						session.setAttribute("userobj2", us);
						resp.sendRedirect("doctor/home.jsp");
					}
					else {
						session.setAttribute("faildMsg", "Email & Password Invalid");
						resp.sendRedirect("login.jsp");
					}
				}
				else {
					User us = dao.login(email, password,designation);
					if (us != null) {
						session.setAttribute("userobj", us);
						resp.sendRedirect("index.jsp");
					}
					else {
						session.setAttribute("faildMsg", "Email & Password Invalid");
						resp.sendRedirect("login.jsp");
					}
				}
			

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
