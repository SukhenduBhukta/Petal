package com.entity;

public class Doctor {
	private int did;
	private String dfname;
	private String lfname;
	private String phone;
	private String emial;
	private String password;
	private String dpic;
	public Doctor() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Doctor(int did, String dfname, String lfname, String phone, String emial, String password, String dpic) {
		super();
		this.did = did;
		this.dfname = dfname;
		this.lfname = lfname;
		this.phone = phone;
		this.emial = emial;
		this.password = password;
		this.dpic = dpic;
	}
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public String getDfname() {
		return dfname;
	}
	public void setDfname(String dfname) {
		this.dfname = dfname;
	}
	public String getLfname() {
		return lfname;
	}
	public void setLfname(String lfname) {
		this.lfname = lfname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmial() {
		return emial;
	}
	public void setEmial(String emial) {
		this.emial = emial;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDpic() {
		return dpic;
	}
	public void setDpic(String dpic) {
		this.dpic = dpic;
	}
	@Override
	public String toString() {
		return "Doctor [did=" + did + ", dfname=" + dfname + ", lfname=" + lfname + ", phone=" + phone + ", emial="
				+ emial + ", password=" + password + ", dpic=" + dpic + "]";
	}
	
	
}
