package com.entity;

import javax.print.attribute.standard.RequestingUserName;

public class Doctor {
	private int did;
	private String dfname;
	private String lfname;
	private String phone;
	private String emial;
	private String password;
	private String dpic;
	private String pimg;
	private String designation;
	private String status;
	public Doctor() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	public Doctor(int did, String dfname, String lfname, String phone, String emial, String password, String dpic,
			String pimg, String designation, String status) {
		super();
		this.did = did;
		this.dfname = dfname;
		this.lfname = lfname;
		this.phone = phone;
		this.emial = emial;
		this.password = password;
		this.dpic = dpic;
		this.pimg = pimg;
		this.designation = designation;
		this.status = status;
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

	public String getPimg() {
		return pimg;
	}

	public void setPimg(String pimg) {
		this.pimg = pimg;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getStatus() {
		return status;
	}



	public void setStatus(String status) {
		this.status = status;
	}



	@Override
	public String toString() {
		return "Doctor [did=" + did + ", dfname=" + dfname + ", lfname=" + lfname + ", phone=" + phone + ", emial="
				+ emial + ", password=" + password + ", dpic=" + dpic + ", pimg=" + pimg + ", designation="
				+ designation + ", status=" + status + "]";
	}
	
	
}
