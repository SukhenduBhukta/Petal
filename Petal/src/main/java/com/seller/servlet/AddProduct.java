package com.seller.servlet;

import java.io.File;
import java.io.IOException;
import java.security.cert.TrustAnchor;
import java.sql.Connection;

import javax.print.attribute.standard.RequestingUserName;
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


@WebServlet("/add_product")
@MultipartConfig
public class AddProduct extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String name=req.getParameter("name");
			String category=req.getParameter("category");
			int sprice=Integer.parseInt(req.getParameter("price"));
			int aprice=(int)(sprice*102)/100;
			String price=Integer.toString(aprice);
			String status=req.getParameter("status");
			String description=req.getParameter("description");
			Part part=req.getPart("photo");
			String photo=part.getSubmittedFileName();
			int id=Integer.parseInt(req.getParameter("id"));
			String sname=req.getParameter("sname");
			String email=req.getParameter("email");
			String cname=req.getParameter("cname");
			String expdate= req.getParameter("expdate");
			
			HttpSession session =req.getSession();
			
			
			GroceryDtls g=new GroceryDtls();
			
			g.setName(name);
			g.setCategory(category);
			g.setPrice(price);
			g.setStatus(status);
			g.setDescription(description);
			g.setPhoto(photo);
			g.setSid(id);
			g.setSeller(sname);
			g.setSemail(email);
			g.setCname(cname);
			g.setExpdate(expdate);
			
			
			
			GroceryDAOImpl dao = new GroceryDAOImpl(DBconnect.getCon());
			
			
			boolean f = dao.addProduct(g);
			if(f) {
				String path=getServletContext().getRealPath("")+"Documents";
				part.write(path + File.separator + photo);
				session.setAttribute("sucMsg", "Product successfully Added...");
				resp.sendRedirect("seller/addproduct.jsp");
			}
			else {
				session.setAttribute("faildMsg", "Somthing wrong on server...");
				resp.sendRedirect("seller/addproduct.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
