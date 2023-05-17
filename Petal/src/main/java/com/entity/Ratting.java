package com.entity;

public class Ratting {
	private int did;
	private int rid;
	private int uid;
	private int rcount;
	private String comment;
	public Ratting() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Ratting(int did, int rid, int uid, int rcount, String comment) {
		super();
		this.did = did;
		this.rid = rid;
		this.uid = uid;
		this.rcount = rcount;
		this.comment = comment;
	}
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getRcount() {
		return rcount;
	}
	public void setRcount(int rcount) {
		this.rcount = rcount;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	@Override
	public String toString() {
		return "Ratting [did=" + did + ", rid=" + rid + ", uid=" + uid + ", rcount=" + rcount + ", comment=" + comment
				+ "]";
	}
	
	
	
}
