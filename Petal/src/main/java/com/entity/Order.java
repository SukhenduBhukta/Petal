package com.entity;



public class Order {
	private String oid;
	private String uname;
	private String email;
	
	private String house;
	private String phone;
	private String landmark;
	private String city;
	private String state;
	private String pin;
	private int pid;
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Order(String oid, String uname, String email, String house, String phone, String landmark, String city,
			String state, String pin, int pid) {
		super();
		this.oid = oid;
		this.uname = uname;
		this.email = email;
		this.house = house;
		this.phone = phone;
		this.landmark = landmark;
		this.city = city;
		this.state = state;
		this.pin = pin;
		this.pid = pid;
	}
	public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHouse() {
		return house;
	}
	public void setHouse(String house) {
		this.house = house;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
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
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	@Override
	public String toString() {
		return "Order [oid=" + oid + ", uname=" + uname + ", email=" + email + ", house=" + house + ", phone=" + phone
				+ ", landmark=" + landmark + ", city=" + city + ", state=" + state + ", pin=" + pin + ", pid=" + pid
				+ "]";
	}
	
	
	
	
	
}
