package com.user.servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.OrderDAOImpl;
import com.DB.DBconnect;
@WebServlet("/cancelOrder")
public class CancelOrder extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String oid=req.getParameter("oid");
			OrderDAOImpl dao=new OrderDAOImpl(DBconnect.getCon());
			boolean f=dao.cancelOrder(oid);
			
			HttpSession session=req.getSession();
			if(f) {
				session.setAttribute("removeCart", "Cancel product successfully");
				resp.sendRedirect("viewOrder.jsp");
			}
			else {
				session.setAttribute("failed", "Something wrong on server");
				resp.sendRedirect("viewOrder.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
