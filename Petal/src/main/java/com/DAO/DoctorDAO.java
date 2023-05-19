package com.DAO;

import java.util.List;

import com.entity.Doctor;
import com.entity.User;

public interface DoctorDAO {
	public boolean addDoctor(Doctor doct,int id);
	public boolean deleteDoctor(int id);
	public List<Doctor> getDoctorbyId();
	public Doctor getDoctorSinglebyId(int did);
	public Doctor login(String email,String password);
	public String activeIn(int uid);
	public boolean active(int uid);
	public boolean inActive(int uid);
	public boolean updateProfile(Doctor us);
	public boolean checkPassword(String ps, int id);
	public void sendEmail(String message, String subject, String to, String from);
	public int Doctorcount();
	public double DoctorStar(int did);
}
