package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.DB.DBconnect;

@WebServlet("/deleteseller")
public class SellerDeleteServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			UserDAOImpl dao = new UserDAOImpl(DBconnect.getCon());
			boolean f=dao.deleteSeller(id);
			HttpSession session = req.getSession();
			if(f) {
				session.setAttribute("sucMsg", "Sucessfully rejected...");
				resp.sendRedirect("admin/seller.jsp");
			}
			else {
				session.setAttribute("faildMsg", "Somthing wrong on server...");
				resp.sendRedirect("admin/seller.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
