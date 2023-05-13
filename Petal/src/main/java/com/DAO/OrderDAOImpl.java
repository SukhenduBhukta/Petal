package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Order;

public class OrderDAOImpl implements OrderDAO {
	private Connection con;

	public OrderDAOImpl(Connection con) {
		super();
		this.con = con;
	}

	public int getOrderNo() {
		int i = 0;
		try {

			String sql = "select * from order_table";
			PreparedStatement psmt = con.prepareStatement(sql);
			ResultSet rs = psmt.executeQuery();
			while (rs.next()) {
				i++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}

	public boolean addOrder(List<Order> list) {
		boolean f = false;

		try {
			String sql = "insert into order_table(orderid, uid, name, house, phone, pid, landmark, city, state, pincode, status, payment, sid) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
			con.setAutoCommit(false);
			PreparedStatement psmt = con.prepareStatement(sql);
			for (Order o : list) {
				psmt.setString(1, o.getOid());
				psmt.setInt(2, o.getUid());
				psmt.setString(3, o.getName());
				psmt.setString(4, o.getHouse());
				psmt.setString(5, o.getPhone());
				psmt.setInt(6, o.getPid());
				psmt.setString(7, o.getLandmark());
				psmt.setString(8, o.getCity());
				psmt.setString(9, o.getState());
				psmt.setString(10, o.getPin());
				psmt.setString(11, o.getStatus());
				psmt.setString(12, o.getPayment());
				psmt.setInt(13, o.getSid());
				psmt.addBatch();
			}
			int[] count = psmt.executeBatch();
			con.commit();
			f = true;
			con.setAutoCommit(true);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public List<Order> getOrderByUId(int uid) {
		List<Order> list = new ArrayList<Order>();
		Order o = null;
		try {
			String sql = "select * order_table where uid=?";
			PreparedStatement psmt = con.prepareStatement(sql);
			psmt.setInt(1, uid);
			ResultSet rs = psmt.executeQuery();
			while (rs.next()) {
				o = new Order();
				o.setOid(rs.getString(1));
				o.setUid(rs.getInt(2));
				o.setName(rs.getString(3));
				o.setHouse(rs.getString(4));
				o.setPhone(rs.getString(5));
				o.setPid(rs.getInt(6));
				o.setLandmark(rs.getString(7));
				o.setCity(rs.getString(8));
				o.setState(rs.getString(9));
				o.setPin(rs.getString(10));
				o.setStatus(rs.getString(11));
				o.setPayment(rs.getString(12));
				o.setSid(rs.getInt(13));
				list.add(o);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public List<Order> getOrderBySId(int sid) {
		List<Order> list = new ArrayList<Order>();
		Order o = null;
		try {
			String sql1 = "select status from order_table where sid=?";
			PreparedStatement psmt1 = con.prepareStatement(sql1);
			psmt1.setInt(1, sid);
			ResultSet rs1 = psmt1.executeQuery();
			if (rs1.next()) {
				if (!rs1.getString("status").equals("Cancel")) {
					String sql = "select * from order_table where sid=? order by status DESC";
					PreparedStatement psmt = con.prepareStatement(sql);
					psmt.setInt(1, sid);
					ResultSet rs = psmt.executeQuery();
					while (rs.next()) {
						o = new Order();
						o.setOid(rs.getString(1));
						o.setUid(rs.getInt(2));
						o.setName(rs.getString(3));
						o.setHouse(rs.getString(4));
						o.setPhone(rs.getString(5));
						o.setPid(rs.getInt(6));
						o.setLandmark(rs.getString(7));
						o.setCity(rs.getString(8));
						o.setState(rs.getString(9));
						o.setPin(rs.getString(10));
						o.setStatus(rs.getString(11));
						o.setPayment(rs.getString(12));
						o.setSid(rs.getInt(13));
						list.add(o);

					}
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public boolean paymentadd(int cid, int amount, String status, String ordid ,int apid) {
		boolean f=false;
		try {
			String sql="insert into payments(amount, status, razorpay_order_id, cid, apid) values(?,?,?,?,?)";
			PreparedStatement psmt=con.prepareStatement(sql);
			psmt.setInt(1, amount);
			psmt.setString(2, status);
			psmt.setString(3, ordid);
			psmt.setInt(4, cid);
			psmt.setInt(5, apid);
			int i=psmt.executeUpdate();
			if(i==1) {
				f=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public boolean paymentUpdate(String status, String ordid, String payId, String sign) {
		boolean f=false;
		try {
			String sql="update payments set status=?,razorpay_payment_id=?,razorpay_signature=? where razorpay_order_id=?";
			PreparedStatement psmt=con.prepareStatement(sql);
			psmt.setString(1, status);
			psmt.setString(2, payId);
			psmt.setString(3, sign);
			psmt.setString(4, ordid);
			int i=psmt.executeUpdate();
			if(i==1) {
				f=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	
	
	
	

}
