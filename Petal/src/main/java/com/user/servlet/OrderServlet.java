package com.user.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CartDAOImpl;
import com.DAO.OrderDAOImpl;
import com.DAO.UserDAOImpl;
import com.DB.DBconnect;
import com.entity.Cart;
import com.entity.Order;
import com.entity.User;

@WebServlet("/makeOrder")
public class OrderServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int uid=Integer.parseInt(req.getParameter("uid"));
			String name= req.getParameter("name");
			String phone= req.getParameter("Phone");
			String house= req.getParameter("street");
			String landmark= req.getParameter("landmark");
			String city= req.getParameter("city");
			String state= req.getParameter("state");
			String pin= req.getParameter("pincode");
			
			CartDAOImpl dao1=new CartDAOImpl(DBconnect.getCon());
			OrderDAOImpl dao2=new OrderDAOImpl(DBconnect.getCon());
			
			List<Cart> list1=dao1.getCartbyUserid(uid);
			Order o=null;
			int i=dao2.getOrderNo();
			List<Order> list2=new ArrayList<Order>();
			
			for(Cart c:list1) {
				o=new Order();
				o.setOid("PETAL-0"+c.getPid()+"-000"+i);
				o.setUid(uid);
				o.setName(name);
				o.setHouse(house);
				o.setPhone(phone);
				o.setLandmark(landmark);
				o.setPid(c.getPid());
				o.setCity(city);
				o.setState(state);
				o.setPin(pin);
				o.setStatus("Ordered");
				o.setPayment("COD");
				o.setSid(c.getSid());
				i++;
				list2.add(o);
			}
			boolean f=dao2.addOrder(list2);
			
			UserDAOImpl dao3=new UserDAOImpl(DBconnect.getCon());
			
			HttpSession session=req.getSession();
			if(f) {
				boolean f1=dao3.addAddress(uid, house, landmark, city, state, pin);
				if(f1) {
					session.setAttribute("succMsg", "Address save Successfully...");
				}
				session.setAttribute("succMsg", "Order Successfully...");
				resp.sendRedirect("thankyou.jsp");
			}else {
				session.setAttribute("succMsg", "Order Successfully...");
				resp.sendRedirect("cart.jsp");
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
}
