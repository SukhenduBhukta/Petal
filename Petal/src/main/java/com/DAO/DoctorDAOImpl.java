package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.Random;

import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Authenticator;

import com.entity.Doctor;
import com.entity.User;

public class DoctorDAOImpl implements DoctorDAO{
	private Connection con;

	public DoctorDAOImpl(Connection con) {
		super();
		this.con = con;
	}

	
	
	public Doctor login(String email, String password) {
		Doctor us=null;
		try {
			String sql="select * from doctor where email=? and password=?";
			PreparedStatement psmt=con.prepareStatement(sql);
			psmt.setString(1, email);
			psmt.setString(2, password);
			ResultSet rs=psmt.executeQuery();
			while(rs.next()) {
				us=new Doctor();
				us.setDid(rs.getInt(1));
				us.setDfname(rs.getString(2));
				us.setLfname(rs.getString(3));
				us.setPhone(rs.getString(4));
				us.setEmial(rs.getString(5));
				us.setPassword(rs.getString(6));
				us.setDpic(rs.getString(7));
				us.setPimg(rs.getString(8));
				us.setDesignation(rs.getString(9));
				us.setStatus(rs.getString(10));
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return us;
	}



	public boolean addDoctor(Doctor doct,int id) {
		boolean f=false;
		try {
			String sql="insert into doctor(dfname, dlname, phone, email, password, photo, status) values(?,?,?,?,?,?,?)";
			PreparedStatement psmt=con.prepareStatement(sql);
			psmt.setString(1, doct.getDfname());
			psmt.setString(2, doct.getLfname());
			psmt.setString(3, doct.getPhone());
			psmt.setString(4, doct.getEmial());
			psmt.setString(5, doct.getPassword());
			psmt.setString(6, doct.getDpic());
			psmt.setString(7, "active");
			int i=psmt.executeUpdate();
			if(i==1 && deleteDoctor(id)) {
				f=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public boolean deleteDoctor(int id) {
		boolean f=false;
		try {
			String sql="delete from user where userid=?";
			PreparedStatement psmt=con.prepareStatement(sql);
			psmt.setInt(1, id);
			int i=psmt.executeUpdate();
			if(i==1) {
				f=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public List<Doctor> getDoctorbyId() {
		List<Doctor> list = new ArrayList<Doctor>();
		Doctor doct=null;
		try {
			String sql="select * from doctor where status=?";
			PreparedStatement psmt=con.prepareStatement(sql);
			psmt.setString(1, "active");
			ResultSet rs = psmt.executeQuery();
			while(rs.next()) {
				doct=new Doctor();
				doct.setDid(rs.getInt(1));
				doct.setDfname(rs.getString(2));;
				doct.setLfname(rs.getString(3));
				doct.setPhone(rs.getString(4));
				doct.setEmial(rs.getString(5));
				doct.setPassword(rs.getString(6));
				doct.setDpic(rs.getString(7));
				doct.setPimg(rs.getString(8));
				doct.setDesignation(rs.getString(9));
				list.add(doct);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}



	public Doctor getDoctorSinglebyId(int did) {
		Doctor doct=null;
		try {
			String sql="select * from doctor where did=? and status=?";
			PreparedStatement psmt=con.prepareStatement(sql);
			psmt.setInt(1, did);
			psmt.setString(2, "active");
			ResultSet rs = psmt.executeQuery();
			while(rs.next()) {
				doct=new Doctor();
				doct.setDid(rs.getInt(1));
				doct.setDfname(rs.getString(2));;
				doct.setLfname(rs.getString(3));
				doct.setPhone(rs.getString(4));
				doct.setEmial(rs.getString(5));
				doct.setPassword(rs.getString(6));
				doct.setDpic(rs.getString(7));
				doct.setPimg(rs.getString(8));
				doct.setDesignation(rs.getString(9));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return doct;
	}



	public String activeIn(int uid) {
		String s="";
		try {
			String sql="select status from doctor where did=?";
			PreparedStatement psmt2=con.prepareStatement(sql);
			psmt2.setInt(1, uid);
			ResultSet rSet=psmt2.executeQuery();
			if(rSet.next())
				s+=rSet.getString("status");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return s;
	}



	public boolean active(int uid) {
		boolean s=false;
		try {
			String sql="update doctor set status=? where did=?";
			PreparedStatement psmt2=con.prepareStatement(sql);
			psmt2.setString(1, "active");
			psmt2.setInt(2, uid);
			int i=psmt2.executeUpdate();
			if(i==1)
				s=true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return s;
	}



	public boolean inActive(int uid) {
		boolean s=false;
		try {
			String sql="update doctor set status=? where did=?";
			PreparedStatement psmt2=con.prepareStatement(sql);
			psmt2.setString(1, "inactive");
			psmt2.setInt(2, uid);
			int i=psmt2.executeUpdate();
			if(i==1)
				s=true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return s;
	}
	public boolean checkPassword(String ps, int id) {
		boolean f=false;
		try {
			String sql="select * from doctor where password=? and did=?";
			PreparedStatement psmt=con.prepareStatement(sql);
			psmt.setString(1, ps);
			psmt.setInt(2, id);
			ResultSet rSet=psmt.executeQuery();
			while(rSet.next()) {
				f=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public boolean updateProfile(Doctor us) {
		boolean f=false;
		try {
			String sql="update doctor set dfname=?,dlname=?,email=?,phone=?,pimg=?,designation=? where did=?";
			PreparedStatement psmt=con.prepareStatement(sql);
			psmt.setString(1, us.getDfname());
			psmt.setString(2, us.getLfname());
			psmt.setString(3, us.getEmial());
			psmt.setString(4, us.getPhone());
			psmt.setString(5, us.getPimg());
			psmt.setString(6, us.getDesignation());
			psmt.setInt(7, us.getDid());
			
			int i=psmt.executeUpdate();
			if(i==1) {
				f=true;
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
		public void sendEmail(String message2, String subject, String to, String from) {
		
			RequestDispatcher dispatcher=null;
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
					message.setFrom(new InternetAddress(to));
					message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
					message.setSubject(subject);
					message.setContent(message2, "text/html");
					Transport.send(message);
					//System.out.println("message sent successfully");
				} catch (MessagingException e) {
					throw new RuntimeException(e);
				}
			
			}
	
		
		
		
	
	
	
}
