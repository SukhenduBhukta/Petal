package com.user.servlet;

import java.io.BufferedReader;
import java.io.IOException;

import javax.print.attribute.standard.RequestingUserName;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import com.DAO.AppointmentDAOImpl;
import com.DAO.DoctorDAOImpl;
import com.DAO.OrderDAOImpl;
import com.DB.DBconnect;

@WebServlet("/payUpdate")
public class UpdatePay extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BufferedReader reader = req.getReader();
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            sb.append(line);
        }
        String requestBody = sb.toString();
        JSONObject data = new JSONObject(requestBody);
        String payid=data.getString("payment_id");
        String orderid=data.getString("id");
        String sign=data.getString("signature");
        String status=data.getString("status");
        
        OrderDAOImpl dao=new OrderDAOImpl(DBconnect.getCon());
        boolean f=dao.paymentUpdate(status, orderid, payid, sign);
        AppointmentDAOImpl dao3=new AppointmentDAOImpl(DBconnect.getCon());
        int apid=dao.getapid(orderid);
        String email=dao3.getEmailByapid(apid);
        String message = "<html><body>Wlecome,<br>Your Appointment Successfully Booked.<br><br>Payment Id:- "+payid+"<br><br>Order Id:-"+orderid+"</body></html>";
        String sub="Payment Successfull";
        
        DoctorDAOImpl dao2DaoImpl=new DoctorDAOImpl(DBconnect.getCon());
        dao2DaoImpl.sendEmail(message, sub, email, status);
        resp.setContentType("text/plain");
        resp.getWriter().write("success");
        HttpSession session=req.getSession();
        if(f) {
        	resp.sendRedirect("thankyou.jsp");
        }else {
        	resp.sendRedirect("appointment.jsp");
        }
	}
	
}
