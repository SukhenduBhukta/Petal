package com.doctor.servlet;

import java.io.File;
import java.io.IOException;

import javax.print.attribute.standard.RequestingUserName;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.DoctorDAOImpl;
import com.DAO.UserDAOImpl;
import com.DB.DBconnect;
import com.entity.Doctor;
import com.entity.User;

@WebServlet("/editprofile2")
@MultipartConfig
public class EditProfileServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			//System.out.println(req.getParameter("uid")+" "+req.getParameter("fname")+" "+req.getParameter("lname")+" "+req.getParameter("email"));
			int id=Integer.parseInt(req.getParameter("uid"));
			String fname=req.getParameter("fname");
			String lname=req.getParameter("lname");
			String email=req.getParameter("email");
			String phoneno=req.getParameter("mobileNumber");
			String desig=req.getParameter("desig");
			String password=req.getParameter("password");
			Part part=req.getPart("profilePic");
			String fileName=part.getSubmittedFileName();
			System.out.println(fileName);
			
			Doctor us=new Doctor();
			us.setDid(id);
			us.setDfname(fname);
			us.setLfname(lname);
			us.setEmial(email);
			us.setDesignation(desig);
			us.setPhone(phoneno);
			us.setPimg(fileName);
			
			HttpSession session=req.getSession();
			DoctorDAOImpl dao=new DoctorDAOImpl(DBconnect.getCon());
			
			boolean f=dao.checkPassword(password, id);
			System.out.println(f);
			if(f) {
				boolean f2=dao.updateProfile(us);
				System.out.println(f2);
				if(f2) {
					String path=getServletContext().getRealPath("")+"Documents";
					
					part.write(path + File.separator + fileName);
					session.removeAttribute("userobj");
					session.setAttribute("sucMsg", "Profile Updated Successfully and please Re-login to reflect your data.");
					resp.sendRedirect("login.jsp");
				}
				else {
					session.setAttribute("faildMsg", "Somthing Wrong on Server...");
					resp.sendRedirect("doctor/editprofile.jsp");
				}
			}
			else {
				session.setAttribute("faildMsg", "Your Password is incorrect...");
				resp.sendRedirect("doctor/editprofile.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
