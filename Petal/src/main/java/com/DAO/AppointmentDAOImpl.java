package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.Appointment;

public class AppointmentDAOImpl implements AppointmentDAO{
	private Connection con;

	public AppointmentDAOImpl(Connection con) {
		super();
		this.con = con;
	}
	public boolean addAppointment(Appointment ap) {
		boolean f=false;
		
		try {
			
			String sql="insert into appointment(user_id,ownerName,petName,gender,mob,address,street,city,state,pincode,email,age,date,did,status) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, ap.getUserid());
			ps.setString(2, ap.getOwnerName());
			ps.setString(3, ap.getPetName());
			ps.setString(4, ap.getGender());
			ps.setString(5, ap.getMob());
			ps.setString(6, ap.getAdrs());
			ps.setString(7, ap.getStreet());
			ps.setString(8, ap.getCity());
			ps.setString(9, ap.getState());
			ps.setString(10, ap.getPinCode());
			ps.setString(11, ap.getEmail());
			ps.setString(12, ap.getAge());
			ps.setString(13, ap.getDate());
			ps.setInt(14, ap.getDoctorid());
			ps.setString(15, ap.getStatus());
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
	}
	public int appiontmentgetidbyuid(int uid) {
		int i=0;
		try {
			String sql="select id from appointment where user_id=? order by id DESC";
			PreparedStatement psmt=con.prepareStatement(sql);
			psmt.setInt(1, uid);
			ResultSet rs=psmt.executeQuery();
			if(rs.next()) {
				i=rs.getInt("id");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}
	
	
	
	
	

}
