package com.user.servlet;

import java.io.IOException;

import javax.print.attribute.standard.RequestingUserName;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.DB.DBconnect;

@WebServlet("/updateAdd")
public class UpdateAdd extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("uid"));
			String house=req.getParameter("house");
			String land=req.getParameter("land");
			String city=req.getParameter("city");
			String state=req.getParameter("state");
			String pin=req.getParameter("pincode");
			
			UserDAOImpl daoImpl=new UserDAOImpl(DBconnect.getCon());
			boolean f=daoImpl.updateAddress(id, house, land, city, state, pin);
			HttpSession session=req.getSession();
			if(f) {
				session.setAttribute("sucMsg", "Update Address Succcessfully...");
				resp.sendRedirect("addressUpdate.jsp");
			}else {
				session.setAttribute("faildMsg", "Somthing Wrong on Server...");
				resp.sendRedirect("addressUpdate.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	

}
