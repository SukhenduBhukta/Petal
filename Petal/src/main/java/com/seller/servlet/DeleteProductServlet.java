package com.seller.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.GroceryDAOImpl;
import com.DB.DBconnect;

@WebServlet("/DeleteProduct")
public class DeleteProductServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			GroceryDAOImpl dao= new GroceryDAOImpl(DBconnect.getCon());
			Boolean f=dao.deleteProduct(id);
			HttpSession session=req.getSession();
			if(f) {
				session.setAttribute("sucMsg", "Product deleted Successfully...");
				resp.sendRedirect("seller/allProduct.jsp");
			}
			else {
				session.setAttribute("faildMsg", "Something wrong on Server...");
				resp.sendRedirect("seller/allProduct.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
