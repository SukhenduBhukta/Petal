package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

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
			String sql="insert into user(name,phone,email,password,designation) values(?,?,?,?,?)";
			PreparedStatement psmt=con.prepareStatement(sql);
			psmt.setString(1, us.getName());
			psmt.setString(2, us.getPhone());
			psmt.setString(3, us.getEmail());
			psmt.setString(4, us.getPassword());
			psmt.setString(5, us.getOption());
			
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

}
