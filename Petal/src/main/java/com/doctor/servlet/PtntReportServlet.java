package com.doctor.servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.*;
import com.DB.DBconnect;
import com.entity.Appointment;


@WebServlet("/patientreport")
@MultipartConfig

public class PtntReportServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int apid = Integer.parseInt(req.getParameter("id"));
		//String report = req.getParameter("report");
		Part part=req.getPart("report");
		String report=part.getSubmittedFileName();

		Appointment da = new Appointment();

		da.setReport(report);
		AppointmentDAOImpl dao1=new AppointmentDAOImpl(DBconnect.getCon());
		boolean f=dao1.updateAppointment1(report, apid);
		
		HttpSession session = req.getSession();
		if(f) {
			String path=getServletContext().getRealPath("")+"Documents";
			//File file=new File(path);
			//System.out.print(path);
			part.write(path + File.separator + report);
			session.setAttribute("SuccMsg", "Successfully submited...");
			resp.sendRedirect("doctor/home.jsp");
		}else {
			session.setAttribute("faildMsg", "Something wrong on server...");
			resp.sendRedirect("doctor/home.jsp");
		}
	}

}
