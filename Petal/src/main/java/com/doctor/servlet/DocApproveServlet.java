package com.doctor.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.*;
import com.DB.DBconnect;
import com.entity.Appointment;


@WebServlet("/DocApproval")

public class DocApproveServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int apid = Integer.parseInt(req.getParameter("id"));
		String email=req.getParameter("email");
		String time = req.getParameter("time");
		String link = req.getParameter("link");
		String message = "<html><body>Meeting Link:- <a href='" + link + "'>"+link+"</a><br>Time:- "+time+"</body></html>";
		String subject = "Meeting Details From petal";
		String from = "petal.adm1n@gmail.com";
		

		Appointment da = new Appointment();

		da.setTime(time);
		da.setLink(link);

		AppointmentDAOImpl dao1=new AppointmentDAOImpl(DBconnect.getCon());
		boolean f=dao1.updateAppointment(time, link, apid);
		
		HttpSession session=req.getSession();
		if(f) {
			DoctorDAOImpl dao2=new DoctorDAOImpl(DBconnect.getCon());
			dao2.sendEmail(message, subject, email, from);
			session.setAttribute("SuccMsg", "Successfully submited...");
			resp.sendRedirect("doctor/home.jsp");
		}else {
			session.setAttribute("faildMsg", "Something wrong on server...");
			resp.sendRedirect("doctor/home.jsp");
		}

	}

}
