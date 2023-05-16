package com.doctor.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.DoctorDAO;
import com.DAO.DoctorDAOImpl;
import com.DB.DBconnect;

@WebServlet("/active")
public class ActiveDoctorServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int did=Integer.parseInt(req.getParameter("did"));
			//System.out.println(did);
			DoctorDAOImpl dao=new DoctorDAOImpl(DBconnect.getCon());
			boolean f=dao.inActive(did);
			HttpSession session=req.getSession();
			if(f) {
				resp.sendRedirect("doctor/home.jsp");
			}else {
				resp.sendRedirect("doctor/home.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
