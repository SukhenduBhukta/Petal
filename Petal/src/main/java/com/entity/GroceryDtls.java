package com.entity;

public class GroceryDtls {
	private int id;
	private String name;
	
	private String category;
	private String price;
	private String photo;
	private String description;
	private String status;
	private String seller;
	private String semailString;
	public GroceryDtls() {
		super();
		// TODO Auto-generated constructor stub
	}
	


	public GroceryDtls(int id, String name, String category, String price, String photo, String description,
			String status, String seller, String semailString) {
		super();
		this.id = id;
		this.name = name;
		this.category = category;
		this.price = price;
		this.photo = photo;
		this.description = description;
		this.status = status;
		this.seller = seller;
		this.semailString = semailString;
	}



	public int getId() {
		return id;
	}
	public String getSeller() {
		return seller;
	}

	public void setSeller(String seller) {
		this.seller = seller;
	}

	public String getSemailString() {
		return semailString;
	}

	public void setSemailString(String semailString) {
		this.semailString = semailString;
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

	@Override
	public String toString() {
		return "GroceryDtls [id=" + id + ", name=" + name + ", category=" + category + ", price=" + price + ", photo="
				+ photo + ", description=" + description + ", status=" + status + ", seller=" + seller
				+ ", semailString=" + semailString + "]";
	}

	
	
	
}
