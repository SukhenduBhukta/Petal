package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CartDAOImpl;
import com.DAO.GroceryDAOImpl;
import com.DB.DBconnect;
import com.entity.Cart;
import com.entity.GroceryDtls;
@WebServlet("/cartServlet")
public class CartServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int uid=Integer.parseInt(req.getParameter("uid"));
			int pid=Integer.parseInt(req.getParameter("pid"));
			
			
			GroceryDAOImpl dao=new GroceryDAOImpl(DBconnect.getCon());
			GroceryDtls g=dao.getProductById(pid);
			
			Cart c=new Cart();
			c.setPid(pid);
			c.setUid(uid);
			c.setPname(g.getName());
			c.setPrice(Double.parseDouble(g.getPrice()));
			c.setCname(g.getCname());
			c.setSid(g.getSid());
			
			
			CartDAOImpl dao2=new CartDAOImpl(DBconnect.getCon());
			boolean f=dao2.addCart(c);
			HttpSession session=req.getSession();
			if(f) {
				session.setAttribute("addCart", "Product Added to cart successfully");
				resp.sendRedirect("cart.jsp");
			}
			else {
				session.setAttribute("failed", "Something wrong on server");
				resp.sendRedirect("grocery.jsp");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
