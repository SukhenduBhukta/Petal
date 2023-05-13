package com.user.servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.AppointmentDAOImpl;
import com.DB.DBconnect;
import com.entity.Appointment;
@WebServlet("/takeAppointment")
public class AppointmentServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int userid=Integer.parseInt(req.getParameter("userid"));
			String ownerName=req.getParameter("ownerName");
			String petName=req.getParameter("petName");
			String gender=req.getParameter("option");
			String mobile=req.getParameter("mobile");
			String address=req.getParameter("address");
			String street=req.getParameter("street");
			String city=req.getParameter("city");
			String state=req.getParameter("state");
			String pinCode=req.getParameter("pinCode");
			String email=req.getParameter("email");
			String age=req.getParameter("age");
			String date=req.getParameter("date");
			int  doctor_id=Integer.parseInt(req.getParameter("option1"));
			
			Appointment ap=new Appointment();
			ap.setUserid(userid);
			ap.setOwnerName(ownerName);
			ap.setPetName(petName);
			ap.setGender(gender);
			ap.setMob(mobile);
			ap.setAdrs(address);
			ap.setStreet(street);
			ap.setCity(city);
			ap.setState(state);
			ap.setPinCode(pinCode);
			ap.setEmail(email);
			ap.setAge(age);
			ap.setDate(date);
			ap.setDoctorid(doctor_id);
			ap.setStatus("under process");
			AppointmentDAOImpl dao=new AppointmentDAOImpl(DBconnect.getCon());
			
			HttpSession session=req.getSession();
			
			boolean f=dao.addAppointment(ap);
			if(f) {
				session.setAttribute("succMsg", "Appointment request submitted successfully");
				resp.sendRedirect("payment.jsp");
			}else{
				session.setAttribute("errorMsg", "Something went wrong");
				resp.sendRedirect("appointment.jsp");
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	
}
