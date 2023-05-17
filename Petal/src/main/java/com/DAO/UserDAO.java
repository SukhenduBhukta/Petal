package com.DAO;

import java.util.List;

import javax.print.attribute.standard.RequestingUserName;

import com.entity.User;

public interface UserDAO {
	public boolean userRegister(User us);
	public User login(String email,String password, String designation);
	public List<User> getDoctorbyId();
	public User getDoctorbyId(int id);
	public List<User> getSeller();
	public boolean deleteDoctor(int id);
	public boolean deleteSeller(int id);
	public boolean addAddress(int uid, String home, String land, String city, String state, String pin);
	
	public boolean checkPassword(String ps, int id);
	public boolean updateProfile(User us);
	public boolean updateAddress(int uid, String home, String land, String city, String state, String pin);
	public int Sellercount();
}
