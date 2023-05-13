package com.entity;

public class Payment {
	private int payid;
	private int cid;
	private int amount;
	private String status;
	private String razorpay_payment_id;
	private String razorpay_order_id;
	private String razorpay_signature;
	private int apid;
	public Payment() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Payment(int payid, int cid, int amount, String status, String razorpay_payment_id, String razorpay_order_id,
			String razorpay_signature, int apid) {
		super();
		this.payid = payid;
		this.cid = cid;
		this.amount = amount;
		this.status = status;
		this.razorpay_payment_id = razorpay_payment_id;
		this.razorpay_order_id = razorpay_order_id;
		this.razorpay_signature = razorpay_signature;
		this.apid = apid;
	}

	public int getPayid() {
		return payid;
	}
	public void setPayid(int payid) {
		this.payid = payid;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getRazorpay_payment_id() {
		return razorpay_payment_id;
	}
	public void setRazorpay_payment_id(String razorpay_payment_id) {
		this.razorpay_payment_id = razorpay_payment_id;
	}
	public String getRazorpay_order_id() {
		return razorpay_order_id;
	}
	public void setRazorpay_order_id(String razorpay_order_id) {
		this.razorpay_order_id = razorpay_order_id;
	}
	public String getRazorpay_signature() {
		return razorpay_signature;
	}
	public void setRazorpay_signature(String razorpay_signature) {
		this.razorpay_signature = razorpay_signature;
	}
	
	public int getApid() {
		return apid;
	}

	public void setApid(int apid) {
		this.apid = apid;
	}

	@Override
	public String toString() {
		return "Payment [payid=" + payid + ", cid=" + cid + ", amount=" + amount + ", status=" + status
				+ ", razorpay_payment_id=" + razorpay_payment_id + ", razorpay_order_id=" + razorpay_order_id
				+ ", razorpay_signature=" + razorpay_signature + ", apid=" + apid + "]";
	}

	
	
	
}
