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
}
