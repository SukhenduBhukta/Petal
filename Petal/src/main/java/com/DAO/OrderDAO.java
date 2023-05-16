package com.DAO;

import java.util.List;

import com.entity.Order;

public interface OrderDAO {
	public int getOrderNo();
	public boolean addOrder(List<Order> list);
	public List<Order> getOrderByUId(int uid);
	public List<Order> getOrderBySId(int sid);
	public boolean cancelOrder(String oid);
	public boolean paymentadd(int cid,int amount, String status, String ordid, int apid);
	public boolean paymentUpdate( String status, String ordid, String payId, String sign);
}
