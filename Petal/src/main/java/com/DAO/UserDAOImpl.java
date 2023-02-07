package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;

public class UserDAOImpl implements UserDAO {

	
	private Connection con;
	
	public UserDAOImpl(Connection con) {
		super();
		this.con = con;
	}

	public boolean userRegister(User us) {
		boolean f=false;
		try {
			String sql="insert into user(fname,lname,phone,email,password,designation) values(?,?,?,?,?,?)";
			PreparedStatement psmt=con.prepareStatement(sql);
			psmt.setString(1, us.getFname());
			psmt.setString(2, us.getLname());
			psmt.setString(3, us.getPhone());
			psmt.setString(4, us.getEmail());
			psmt.setString(5, us.getPassword());
			psmt.setString(6, us.getOption());
			
			int i=psmt.executeUpdate();
			con.close();
			if(i==1) {
				f=true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public User login(String email, String password) {
		User us=null;
		try {
			String sql="select * from user where email=? and password=?";
			PreparedStatement psmt=con.prepareStatement(sql);
			psmt.setString(1, email);
			psmt.setString(2, password);
			ResultSet rs=psmt.executeQuery();
			while(rs.next()) {
				us=new User();
				us.setUserid(rs.getInt(1));
				us.setFname(rs.getString(2));
				us.setLname(rs.getString(3));
				us.setPhone(rs.getString(4));
				us.setEmail(rs.getString(5));
				us.setPassword(rs.getString(6));
				us.setOption(rs.getString(7));
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return us;
	}

}
