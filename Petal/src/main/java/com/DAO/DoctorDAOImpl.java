package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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
	
	
}
