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
			HttpSession session = req.getSession();

			String email = req.getParameter("email");
			String password = req.getParameter("password");
			String check = req.getParameter("check");
			// System.out.print(email+" "+password);

			if (check != null) {
				if ("admin@gmail.com".equals(email) && "admin123".equals(password)) {
					User us = new User();
					session.setAttribute("userobj", us);
					resp.sendRedirect("admin/home.jsp");
				}
				else {
					User us = dao.login(email, password);
					if (us != null) {
						session.setAttribute("userobj", us);
						resp.sendRedirect("user.jsp");
					}
					else {
						session.setAttribute("faildMsg", "Email & Password Invalid");
						resp.sendRedirect("login.jsp");
					}
				}
			}
			else {
				session.setAttribute("faildMsg", "Please check");
				resp.sendRedirect("login.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
