package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.AppointmentDAOImpl;
import com.DB.DBconnect;

@WebServlet("/rating")
public class RattingServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int r=Integer.parseInt(req.getParameter("rate"));
			int uid=Integer.parseInt(req.getParameter("id"));
			int did=Integer.parseInt(req.getParameter("did"));
			String des=req.getParameter("des");
			//System.out.println(r+" "+uid+" "+did+" "+des);
			
			AppointmentDAOImpl daoImpl=new AppointmentDAOImpl(DBconnect.getCon());
			boolean f=daoImpl.giveRatingDoctor(r, uid, did, des);
			HttpSession session=req.getSession();
			if(f) {
				session.setAttribute("succMsgs", "Thank You for Rating us.");
				resp.sendRedirect("viewAppoint.jsp");
			}else {
				session.setAttribute("faildMsgs", "Please Try after some time");
				resp.sendRedirect("viewAppoint.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
