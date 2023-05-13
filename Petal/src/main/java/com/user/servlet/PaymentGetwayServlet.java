package com.user.servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import com.DAO.OrderDAOImpl;
import com.DB.DBconnect;
import com.entity.Payment;
import com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.google.gson.Gson;
import com.razorpay.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
@WebServlet("/payment")
public class PaymentGetwayServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final String keyid = "rzp_test_YtOxkCnyNridLG";
    private static final String keysecret= "1dz9RGvLdR0DWPMn5GxaVxMf";
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
        	RazorpayClient razorpay = new RazorpayClient(keyid, keysecret);
        	BufferedReader reader = req.getReader();
            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                sb.append(line);
            }
            String requestBody = sb.toString();
            JSONObject data = new JSONObject(requestBody);
            int amount=data.getInt("amount");
            int uid=data.getInt("uid");
            int apid=data.getInt("apid");
            
        	JSONObject orderRequest = new JSONObject();
        	orderRequest.put("amount", amount*100);
        	orderRequest.put("currency", "INR");
        	orderRequest.put("payment_capture", 1);
        	orderRequest.put("receipt", "txn_123456");
        	Order order = razorpay.orders.create(orderRequest);
        	//System.out.println(order);
        	String status=order.get("status");
        	String oid=order.get("id");
        	String jsonString = new Gson().toJson(order);
        	//System.out.println(jsonString);
        	resp.setContentType("application/json");
        	PrintWriter out = resp.getWriter();
            
        	out.print(jsonString);
        	out.flush();
            
        	OrderDAOImpl dao=new OrderDAOImpl(DBconnect.getCon());
        	
        	boolean f= dao.paymentadd(uid, amount, status, oid,apid);
        	
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
    
    
}
