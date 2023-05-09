package com.entity;

public class Appointment {
	private int id;
	private int userid;
	private String ownerName;
	private String petName;
	private String Gender;
	private String mob;
	private String adrs;
	private String street;
	private String city;
	private String state;
	private String pinCode;
	private String email;
	private String age;
	private String date;
	private int doctorid;
	private String status;
	public Appointment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Appointment(int id, int userid, String ownerName, String petName, String gender, String mob, String adrs,
			String street, String city, String state, String pinCode, String email, String age, String date,
			int doctorid, String status) {
		super();
		this.id = id;
		this.userid = userid;
		this.ownerName = ownerName;
		this.petName = petName;
		Gender = gender;
		this.mob = mob;
		this.adrs = adrs;
		this.street = street;
		this.city = city;
		this.state = state;
		this.pinCode = pinCode;
		this.email = email;
		this.age = age;
		this.date = date;
		this.doctorid = doctorid;
		this.status = status;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getOwnerName() {
		return ownerName;
	}
	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}
	public String getPetName() {
		return petName;
	}
	public void setPetName(String petName) {
		this.petName = petName;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getMob() {
		return mob;
	}
	public void setMob(String mob) {
		this.mob = mob;
	}
	public String getAdrs() {
		return adrs;
	}
	public void setAdrs(String adrs) {
		this.adrs = adrs;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
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
	public String getPinCode() {
		return pinCode;
	}
	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getDoctorid() {
		return doctorid;
	}
	public void setDoctorid(int doctorid) {
		this.doctorid = doctorid;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Appointment [id=" + id + ", userid=" + userid + ", ownerName=" + ownerName + ", petName=" + petName
				+ ", Gender=" + Gender + ", mob=" + mob + ", adrs=" + adrs + ", street=" + street + ", city=" + city
				+ ", state=" + state + ", pinCode=" + pinCode + ", email=" + email + ", age=" + age + ", date=" + date
				+ ", doctorid=" + doctorid + ", status=" + status + "]";
	}
	
	
}
