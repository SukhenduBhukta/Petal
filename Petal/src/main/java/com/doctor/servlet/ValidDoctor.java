package com.doctor.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.DoctorDAO;
import com.DAO.DoctorDAOImpl;
import com.DAO.UserDAOImpl;
import com.DB.DBconnect;
import com.entity.Doctor;
import com.entity.User;

@WebServlet("/addDoctor")
@MultipartConfig
public class ValidDoctor extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			UserDAOImpl dao2=new UserDAOImpl(DBconnect.getCon());
			User us=dao2.getDoctorbyId(id);
			String dfname=us.getFname();
			String dlname=us.getLname();
			String phone=us.getPhone();
			String email=us.getEmail();
			String password=us.getPassword();
			String pic=us.getPhotoName();
//			System.out.println(dfname+" "+ dlname);
			Doctor doct=new Doctor();
			doct.setDfname(dfname);
			doct.setLfname(dlname);
			doct.setPhone(phone);
			doct.setEmial(email);
			doct.setPassword(password);
			doct.setDpic(pic);
			DoctorDAOImpl dao=new DoctorDAOImpl(DBconnect.getCon());
			
			
			boolean f=dao.addDoctor(doct,id);
			HttpSession session = req.getSession();
			if(f) {
				session.setAttribute("sucMsg", "Sucessfully Doctor Added...");
				resp.sendRedirect("admin/doctor.jsp");
			}
			else {
				session.setAttribute("faildMsg", "Somthing wrong on server...");
				resp.sendRedirect("admin/doctor.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

}
