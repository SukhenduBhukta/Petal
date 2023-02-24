package com.user.servlet;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.mail.Message;
import javax.mail.MessagingException;



@WebServlet("/Forgotpswd")
public class ForgotPswd extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("null")
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		RequestDispatcher dispatcher=null;
		int otp=0;
		HttpSession session=req.getSession();
		if(email!=null || !email.equals("")) {
			Random random=new Random();
			otp=random.nextInt(99999);
			String to=email;
			Properties props = new Properties();
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.socketFactory.port", "465");
			props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.port", "465");
			Session session2 = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication("petal.adm1n@gmail.com", "ltcftqmaxpfvjomx");
				}
			});
			try {
				MimeMessage message=new MimeMessage(session2);
				message.setFrom(new InternetAddress(email));
				message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
				message.setSubject("OTP");
				message.setText("Your otp is: "+otp);
				Transport.send(message);
				System.out.println("message sent successfully");
			} catch (MessagingException e) {
				throw new RuntimeException(e);
			}
			dispatcher=req.getRequestDispatcher("enterotp.jsp");
			req.setAttribute("Msg", "OTP is sent to your email id");
			session.setAttribute("otp", otp);
			session.setAttribute("email", email);
			dispatcher.forward(req, resp);
		}
	}

}
