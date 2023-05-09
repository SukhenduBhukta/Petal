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
	private String pimg;
	private String house;
	private String landmark;
	private String city;
	private String state;
	private String pin;
	

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(int userid, String fname, String lname, String phone, String email, String option, String password,
			String photoName, String pimg, String house, String landmark, String city, String state, String pin) {
		super();
		this.userid = userid;
		this.fname = fname;
		this.lname = lname;
		this.phone = phone;
		this.email = email;
		this.option = option;
		this.password = password;
		this.photoName = photoName;
		this.pimg = pimg;
		this.house = house;
		this.landmark = landmark;
		this.city = city;
		this.state = state;
		this.pin = pin;
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
	
	public String getPimg() {
		return pimg;
	}

	public void setPimg(String pimg) {
		this.pimg = pimg;
	}

	public String getHouse() {
		return house;
	}

	public void setHouse(String house) {
		this.house = house;
	}


	public String getLandmark() {
		return landmark;
	}
	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}


	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = state;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}







	@Override
	public String toString() {
		return "User [userid=" + userid + ", fname=" + fname + ", lname=" + lname + ", phone=" + phone + ", email="
				+ email + ", option=" + option + ", password=" + password + ", photoName=" + photoName + ", pimg="
				+ pimg + ", house=" + house + ", landmark=" + landmark + ", city=" + city + ", state=" + state
				+ ", pin=" + pin + "]";
	}


	
}
