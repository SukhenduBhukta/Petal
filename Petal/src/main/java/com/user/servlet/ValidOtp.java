package com.user.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/validotp")
public class ValidOtp extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int value=Integer.parseInt(req.getParameter("otp"));
		HttpSession session=req.getSession();
		int otp=(Integer)session.getAttribute("otp");
		RequestDispatcher dispatcher=null;
		if(value==otp) {
			req.setAttribute("email", req.getParameter("email"));
			req.setAttribute("status", "success");
			dispatcher=req.getRequestDispatcher("newpassword.jsp");
			dispatcher.forward(req, resp);
		}
		else {
			req.setAttribute("Msg", "Wrong otp");
			dispatcher=req.getRequestDispatcher("enterotp.jsp");
			dispatcher.forward(req, resp);
		}
	}

}
