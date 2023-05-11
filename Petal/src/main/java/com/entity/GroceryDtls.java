package com.entity;

public class GroceryDtls {
	private int id;
	private String name;
	private String cname;
	private String expdate;
	private String category;
	private String price;
	private String photo;
	private String description;
	private String status;
	private String seller;
	private String semail;
	private int sid;
	public GroceryDtls() {
		super();
		// TODO Auto-generated constructor stub
	}
	



	public GroceryDtls(int id, String name, String cname, String expdate, String category, String price, String photo,
			String description, String status, String seller, String semail, int sid) {
		super();
		this.id = id;
		this.name = name;
		this.cname = cname;
		this.expdate = expdate;
		this.category = category;
		this.price = price;
		this.photo = photo;
		this.description = description;
		this.status = status;
		this.seller = seller;
		this.semail = semail;
		this.sid = sid;
	}




	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getSeller() {
		return seller;
	}
	public void setSeller(String seller) {
		this.seller = seller;
	}
	public String getSemail() {
		return semail;
	}
	public void setSemail(String semail) {
		this.semail = semail;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getExpdate() {
		return expdate;
	}
	public void setExpdate(String expdate) {
		this.expdate = expdate;
	}

	@Override
	public String toString() {
		return "GroceryDtls [id=" + id + ", name=" + name + ", cname=" + cname + ", expdate=" + expdate + ", category="
				+ category + ", price=" + price + ", photo=" + photo + ", description=" + description + ", status="
				+ status + ", seller=" + seller + ", semail=" + semail + ", sid=" + sid + "]";
	}




	














	
	
	
}
