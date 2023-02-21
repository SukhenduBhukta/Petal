package com.seller.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.GroceryDAOImpl;
import com.DB.DBconnect;
import com.entity.GroceryDtls;

@WebServlet("/editproduct")
@MultipartConfig
public class EditProductServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			String name=req.getParameter("name");
			String category=req.getParameter("category");
			String price=req.getParameter("price");
			String status=req.getParameter("status");
			String description=req.getParameter("description");
			
			
			GroceryDtls g=new GroceryDtls();
			g.setId(id);
			g.setName(name);
			g.setCategory(category);
			g.setPrice(price);
			g.setStatus(status);
			g.setDescription(description);
			
			HttpSession session=req.getSession();
			GroceryDAOImpl dao=new GroceryDAOImpl(DBconnect.getCon());
			boolean f=dao.updateEditProduct(g);
			if(f) {
				session.setAttribute("sucMsg", "Product updated Successfully...");
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
