package com.entity;



public class Order {
	private String oid;
	private int uid;
	private String name;
	private String email;
	
	private String house;
	private String phone;
	private String landmark;
	private String city;
	private String state;
	private String pin;
	private int pid;
	private String status;
	private String payment;
	private int sid;
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}

	


	public Order(String oid, int uid, String name, String email, String house, String phone, String landmark,
			String city, String state, String pin, int pid, String status, String payment, int sid) {
		super();
		this.oid = oid;
		this.uid = uid;
		this.name = name;
		this.email = email;
		this.house = house;
		this.phone = phone;
		this.landmark = landmark;
		this.city = city;
		this.state = state;
		this.pin = pin;
		this.pid = pid;
		this.status = status;
		this.payment = payment;
		this.sid = sid;
	}




	public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}
	
	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
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
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}



	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}







	public int getSid() {
		return sid;
	}




	public void setSid(int sid) {
		this.sid = sid;
	}




	@Override
	public String toString() {
		return "Order [oid=" + oid + ", uid=" + uid + ", name=" + name + ", email=" + email + ", house=" + house
				+ ", phone=" + phone + ", landmark=" + landmark + ", city=" + city + ", state=" + state + ", pin=" + pin
				+ ", pid=" + pid + ", status=" + status + ", payment=" + payment + ", sid=" + sid + "]";
	}






	

	

	
	
	
	
	
	
}
