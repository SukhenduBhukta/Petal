package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Cart;


public class CartDAOImpl implements CartDAO{
	private Connection con;

	public CartDAOImpl(Connection con) {
		super();
		this.con = con;
	}

	public boolean addCart(Cart c) {
		boolean f=false;
		try {
			String sql1="select pcount from cart where pid=? and uid=?";
			PreparedStatement psmt1=con.prepareStatement(sql1);
			psmt1.setInt(1, c.getPid());
			psmt1.setInt(2, c.getUid());
			ResultSet rs1=psmt1.executeQuery();
			if(rs1.next()) {
				int count1=rs1.getInt("pcount")+1;
				String sql2="update cart set pcount=?, tprice=? where pid=?";
				PreparedStatement psmt2=con.prepareStatement(sql2);
				psmt2.setInt(1, count1);
				double total=count1*c.getPrice();
				psmt2.setDouble(2, total);
				psmt2.setInt(3, c.getPid());
				int i=psmt2.executeUpdate();
				if(i==1) {
					f=true;
				}
			}else {
				String sql3="insert into cart(uid, pid, pname, cname, pcount, price, tprice) values(?,?,?,?,?,?,?)";
				PreparedStatement psmt3=con.prepareStatement(sql3);
				psmt3.setInt(1, c.getUid());
				psmt3.setInt(2, c.getPid());
				psmt3.setString(3, c.getPname());
				psmt3.setString(4, c.getCname());
				psmt3.setInt(5, 1);
				psmt3.setDouble(6, c.getPrice());
				psmt3.setDouble(7, c.getPrice());
				int i=psmt3.executeUpdate();
				if(i==1) {
					f=true;
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}

	public List<Cart> getCartbyUserid(int uid) {
		List<Cart> list = new ArrayList<Cart>();
		Cart c = null;
		try {
			String sql="select * from cart where uid=? order by cid DESC";
			PreparedStatement psmt=con.prepareStatement(sql);
			psmt.setInt(1, uid);
			ResultSet rs=psmt.executeQuery();
			while (rs.next()) {
				c=new Cart();
				c.setCid(rs.getInt(1));
				c.setUid(rs.getInt(2));
				c.setPid(rs.getInt(3));
				c.setPname(rs.getString(4));
				c.setCname(rs.getString(5));
				c.setPcount(rs.getInt(6));
				c.setPrice(rs.getDouble(7));
				c.setTprice(rs.getDouble(8));
				list.add(c);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	public boolean deleteProduct(int pid, int uid) {
		boolean f=false;
		try {
			String sql1="select pcount,price from cart where pid=? and uid=?";
			PreparedStatement psmt1=con.prepareStatement(sql1);
			psmt1.setInt(1, pid);
			psmt1.setInt(2, uid);
			ResultSet rs1=psmt1.executeQuery();
			
			if(rs1.next()) {
				if(rs1.getInt("pcount")>1) {
				int count1=rs1.getInt("pcount")-1;
				String sql2="update cart set pcount=?, tprice=? where pid=?";
				PreparedStatement psmt2=con.prepareStatement(sql2);
				psmt2.setInt(1, count1);
				double total=count1*rs1.getDouble("price");
				psmt2.setDouble(2, total);
				psmt2.setInt(3, pid);
				int i=psmt2.executeUpdate();
				if(i==1) {
					f=true;
				}
			}else {
				String sql3="delete from cart where pid=? and uid=?";
				PreparedStatement psmt3=con.prepareStatement(sql3);
				psmt3.setInt(1, pid);
				psmt3.setInt(2, uid);
				int i=psmt3.executeUpdate();
				if(i==1) {
					f=true;
				}
			}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	
	
}
