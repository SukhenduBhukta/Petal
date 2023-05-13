package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.User;

public class UserDAOImpl implements UserDAO {

	private Connection con;

	public UserDAOImpl(Connection con) {
		super();
		this.con = con;
	}

	public boolean userRegister(User us) {
		boolean f = false;
		try {
			String sql = "insert into user(fname,lname,phone,email,password,designation,photo) values(?,?,?,?,?,?,?)";
			PreparedStatement psmt = con.prepareStatement(sql);
			psmt.setString(1, us.getFname());
			psmt.setString(2, us.getLname());
			psmt.setString(3, us.getPhone());
			psmt.setString(4, us.getEmail());
			psmt.setString(5, us.getPassword());
			psmt.setString(6, us.getOption());
			psmt.setString(7, us.getPhotoName());

			int i = psmt.executeUpdate();
			con.close();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public User login(String email, String password, String designation) {
		User us = null;
		try {
			String sql = "select * from user where email=? and password=? and designation=?";
			PreparedStatement psmt = con.prepareStatement(sql);
			psmt.setString(1, email);
			psmt.setString(2, password);
			psmt.setString(3, designation);
			ResultSet rs = psmt.executeQuery();
			while (rs.next()) {
				us = new User();
				us.setUserid(rs.getInt(1));
				us.setFname(rs.getString(2));
				us.setLname(rs.getString(3));
				us.setPhone(rs.getString(4));
				us.setEmail(rs.getString(5));
				us.setPassword(rs.getString(6));
				us.setOption(rs.getString(7));
				us.setPhotoName(rs.getString(8));
				us.setPimg(rs.getString(9));
				us.setHouse(rs.getString(10));
				us.setLandmark(rs.getString(11));
				us.setCity(rs.getString(12));
				us.setState(rs.getString(13));
				us.setPin(rs.getString(14));

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return us;
	}

	public List<User> getDoctorbyId() {
		List<User> list = new ArrayList<User>();
		User us = null;
		try {
			String sql = "select * from user where designation=?";
			PreparedStatement psmt = con.prepareStatement(sql);
			psmt.setString(1, "Doctor");
			ResultSet rs = psmt.executeQuery();
			while (rs.next()) {
				us = new User();
				us.setUserid(rs.getInt(1));
				us.setFname(rs.getString(2));
				us.setLname(rs.getString(3));
				us.setPhone(rs.getString(4));
				us.setEmail(rs.getString(5));
				us.setPassword(rs.getString(6));
				us.setOption(rs.getString(7));
				us.setPhotoName(rs.getString(8));
				us.setPimg(rs.getString(9));
				us.setHouse(rs.getString(10));
				us.setLandmark(rs.getString(11));
				us.setCity(rs.getString(12));
				us.setState(rs.getString(13));
				us.setPin(rs.getString(14));
				list.add(us);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public User getDoctorbyId(int id) {
		User us = null;
		try {
			String sql = "select * from user where userid=?";
			PreparedStatement psmt = con.prepareStatement(sql);
			psmt.setInt(1, id);
			ResultSet rs = psmt.executeQuery();
			while (rs.next()) {
				us = new User();
				us.setUserid(rs.getInt(1));
				us.setFname(rs.getString(2));
				us.setLname(rs.getString(3));
				us.setPhone(rs.getString(4));
				us.setEmail(rs.getString(5));
				us.setPassword(rs.getString(6));
				us.setOption(rs.getString(7));
				us.setPhotoName(rs.getString(8));
				us.setPimg(rs.getString(9));
				us.setHouse(rs.getString(10));
				us.setLandmark(rs.getString(11));
				us.setCity(rs.getString(12));
				us.setState(rs.getString(13));
				us.setPin(rs.getString(14));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return us;
	}

	public List<User> getSeller() {
		List<User> list = new ArrayList<User>();
		User us = null;
		try {
			String sql = "select * from user where designation=?";
			PreparedStatement psmt = con.prepareStatement(sql);
			psmt.setString(1, "Seller");
			ResultSet rs = psmt.executeQuery();
			while (rs.next()) {
				us = new User();
				us.setUserid(rs.getInt(1));
				us.setFname(rs.getString(2));
				us.setLname(rs.getString(3));
				us.setPhone(rs.getString(4));
				us.setEmail(rs.getString(5));
				us.setPassword(rs.getString(6));
				us.setOption(rs.getString(7));
				us.setPhotoName(rs.getString(8));
				us.setPimg(rs.getString(9));
				us.setHouse(rs.getString(10));
				us.setLandmark(rs.getString(11));
				us.setCity(rs.getString(12));
				us.setState(rs.getString(13));
				us.setPin(rs.getString(14));
				list.add(us);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public boolean deleteDoctor(int id) {
		boolean f = false;
		try {
			String sql = "delete from user where userid=?";
			PreparedStatement psmt = con.prepareStatement(sql);
			psmt.setInt(1, id);
			int i = psmt.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public boolean deleteSeller(int id) {
		boolean f = false;
		try {
			String sql = "delete from user where userid=?";
			PreparedStatement psmt = con.prepareStatement(sql);
			psmt.setInt(1, id);
			int i = psmt.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public boolean addAddress(int uid, String home, String land, String city, String state, String pin) {
		boolean f = false;
		try {
			String sql1 = "select city from user where userid=?";
			PreparedStatement psmt1 = con.prepareStatement(sql1);
			psmt1.setInt(1, uid);
			ResultSet rs1 = psmt1.executeQuery();
			if (rs1.next()) {
				if (rs1.getString("city") == null) {
					String sql = "update user set house=?,landmark=?,city=?,state=?,pincode=? where userid=?";
					PreparedStatement psmt = con.prepareStatement(sql);
					psmt.setString(1, home);
					psmt.setString(2, land);
					psmt.setString(3, city);
					psmt.setString(4, state);
					psmt.setString(5, pin);
					psmt.setInt(6, uid);
					int i = psmt.executeUpdate();
					if (i == 1) {
						f = true;
					}
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

}
