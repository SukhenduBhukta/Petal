package com.entity;

public class User {
	private int userid;
	private String fname;
	private String lname;
	private String phone;
	private String email;
	private String option;
	private String password;
	private String photoName;
	
	

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public User(String fname, String lname, String phone, String email, String option, String password,
			String photoName) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.phone = phone;
		this.email = email;
		this.option = option;
		this.password = password;
		this.photoName = photoName;
	}

	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhotoName() {
		return photoName;
	}
	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}
	@Override
	public String toString() {
		return "User [userid=" + userid + ", fname=" + fname + ", lname=" + lname + ", phone=" + phone + ", email="
				+ email + ", option=" + option + ", password=" + password + ", photoName=" + photoName + "]";
	}
	
	

	
}
