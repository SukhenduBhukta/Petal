package com.entity;

public class Cart {
	private int cid;
	private int uid;
	private int pid;
	private String pname;
	private String cname;
	private int pcount;
	private double price;
	private double tprice;
	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Cart(int cid, int uid, int pid, String pname, String cname, int pcount, double price, double tprice) {
		super();
		this.cid = cid;
		this.uid = uid;
		this.pid = pid;
		this.pname = pname;
		this.cname = cname;
		this.pcount = pcount;
		this.price = price;
		this.tprice = tprice;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public int getPcount() {
		return pcount;
	}
	public void setPcount(int pcount) {
		this.pcount = pcount;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public double getTprice() {
		return tprice;
	}
	public void setTprice(double tprice) {
		this.tprice = tprice;
	}
	@Override
	public String toString() {
		return "Cart [cid=" + cid + ", uid=" + uid + ", pid=" + pid + ", pname=" + pname + ", cname=" + cname
				+ ", pcount=" + pcount + ", price=" + price + ", tprice=" + tprice + "]";
	}
	
}
