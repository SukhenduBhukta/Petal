package com.DAO;

import java.util.List;

import com.entity.User;

public interface UserDAO {
	public boolean userRegister(User us);
	public User login(String email,String password, String designation);
	public List<User> getDoctorbyId();
	public User getDoctorbyId(int id);
	public List<User> getSeller();
	public boolean deleteDoctor(int id);
	public boolean deleteSeller(int id);
	public boolean addAddress(int uid);
}
