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

	public boolean addDoctor(Doctor doct,int id) {
		boolean f=false;
		try {
			String sql="insert into doctor(dfname, dlname, phone, email, password, photo) values(?,?,?,?,?,?)";
			PreparedStatement psmt=con.prepareStatement(sql);
			psmt.setString(1, doct.getDfname());
			psmt.setString(2, doct.getLfname());
			psmt.setString(3, doct.getPhone());
			psmt.setString(4, doct.getEmial());
			psmt.setString(5, doct.getPassword());
			psmt.setString(6, doct.getDpic());
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
			String sql="select * from doctor";
			PreparedStatement psmt=con.prepareStatement(sql);
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
				list.add(doct);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
}
