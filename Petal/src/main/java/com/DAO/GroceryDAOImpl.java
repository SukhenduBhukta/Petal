package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.GroceryDtls;

public class GroceryDAOImpl implements GroceryDAO{
	private Connection con;
	public GroceryDAOImpl(Connection con) {
		super();
		this.con = con;
	}
	public boolean addProduct(GroceryDtls p) {
		boolean f=false;
		try {
			String sql = "insert into grocery(name,category,price,description,status,photo) values(?,?,?,?,?,?)";
			PreparedStatement psmt=con.prepareStatement(sql);
			psmt.setString(1, p.getName());
			psmt.setString(2, p.getCategory());
			psmt.setString(3, p.getPrice());
			psmt.setString(4, p.getDescription());
			psmt.setString(5, p.getStatus());
			psmt.setString(6, p.getPhoto());
			int i=psmt.executeUpdate();
			if(i==1) {
				f=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	public List<GroceryDtls> getAllProduct() {
		GroceryDtls g=null;
		List<GroceryDtls> list=new ArrayList<GroceryDtls>();
		
		try {
			String sql="select * from grocery";
			PreparedStatement psmt=con.prepareStatement(sql);
			ResultSet rs=psmt.executeQuery();
			while(rs.next()) {
				g=new GroceryDtls();
				g.setId(rs.getInt(1));
				g.setName(rs.getString(2));
				g.setCategory(rs.getString(3));
				g.setPrice(rs.getString(4));
				g.setPhoto(rs.getString(5));
				g.setDescription(rs.getString(6));
				g.setStatus(rs.getString(7));
				
				
				list.add(g);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	public boolean deleteProduct(int id) {
		boolean f=false;
		try {
			String sql="delete from grocery where id=?";
			PreparedStatement psmt=con.prepareStatement(sql);
			psmt.setInt(1, id);
			int i=psmt.executeUpdate();
			if(i==1) {
				f=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	public GroceryDtls getProductById(int id) {
		GroceryDtls g=null;
		try {
			String sql="select * from grocery where id=?";
			PreparedStatement psmt=con.prepareStatement(sql);
			psmt.setInt(1, id);
			ResultSet rs=psmt.executeQuery();
			while(rs.next()) {
				g=new GroceryDtls();
				g.setId(rs.getInt(1));
				g.setName(rs.getString(2));
				g.setCategory(rs.getString(3));
				g.setPrice(rs.getString(4));
				g.setPhoto(rs.getString(5));
				g.setDescription(rs.getString(6));
				g.setStatus(rs.getString(7));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return g;
	}
	public boolean updateEditProduct(GroceryDtls g) {
		boolean f=false;
		try {
			String sqlString="update grocery set name=?,category=?,price=?,description=?, status=? where id=?";
			PreparedStatement psmt=con.prepareStatement(sqlString);
			psmt.setString(1, g.getName());
			psmt.setString(2, g.getCategory());
			psmt.setString(3, g.getPrice());
			psmt.setString(4, g.getDescription());
			psmt.setString(5, g.getStatus());
			psmt.setInt(6, g.getId());
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
