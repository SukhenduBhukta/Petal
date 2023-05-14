package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;

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
			String sql = "insert into grocery(name, category, price, photo, description, status, seller, email, sid, cname, expdate) values(?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement psmt=con.prepareStatement(sql);
			psmt.setString(1, p.getName());
			psmt.setString(2, p.getCategory());
			psmt.setString(3, p.getPrice());
			psmt.setString(4, p.getPhoto());
			psmt.setString(5, p.getDescription());
			psmt.setString(6, p.getStatus());
			
			psmt.setString(7, p.getSeller());
			psmt.setString(8, p.getSemail());
			psmt.setInt(9,p.getSid());
			psmt.setString(10, p.getCname());
			psmt.setString(11, p.getExpdate());
			int i=psmt.executeUpdate();
			if(i==1) {
				f=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	public List<GroceryDtls> getAllProducById(int id) {
		GroceryDtls g=null;
		List<GroceryDtls> list=new ArrayList<GroceryDtls>();
		
		try {
			String sql="select * from grocery where sid=?";
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
				g.setSeller(rs.getString(8));
				g.setSemail(rs.getString(9));
				g.setSid(rs.getInt(10));
				g.setCname(rs.getString(11));
				g.setExpdate(rs.getString(12));
				
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
				g.setSeller(rs.getString(8));
				g.setSemail(rs.getString(9));
				g.setSid(rs.getInt(10));
				g.setCname(rs.getString(11));
				g.setExpdate(rs.getString(12));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return g;
	}
	public boolean updateEditProduct(GroceryDtls g) {
		boolean f=false;
		try {
			String sqlString="update grocery set name=?,category=?,price=?,description=?, status=?, expdate=? where id=?";
			PreparedStatement psmt=con.prepareStatement(sqlString);
			psmt.setString(1, g.getName());
			psmt.setString(2, g.getCategory());
			psmt.setString(3, g.getPrice());
			psmt.setString(4, g.getDescription());
			psmt.setString(5, g.getStatus());
			psmt.setString(6, g.getExpdate());
			psmt.setInt(7, g.getId());
			int i=psmt.executeUpdate();
			if(i==1) {
				f=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	public List<GroceryDtls> getFood() {
		List<GroceryDtls> list=new ArrayList<GroceryDtls>();
		GroceryDtls g=null;
		try {
			String sqlString="select * from grocery where category=? and status=? order by id DESC";
			PreparedStatement psmt=con.prepareStatement(sqlString);
			psmt.setString(1, "Food");
			psmt.setString(2, "Active");
			ResultSet rSet=psmt.executeQuery();
			int i=0;
			while (rSet.next() && i<8) {
				g=new GroceryDtls();
				g.setId(rSet.getInt(1));
				g.setName(rSet.getString(2));
				g.setCategory(rSet.getString(3));
				g.setPrice(rSet.getString(4));
				g.setPhoto(rSet.getString(5));
				g.setDescription(rSet.getString(6));
				g.setStatus(rSet.getString(7));
				g.setSeller(rSet.getString(8));
				g.setSemail(rSet.getString(9));
				g.setSid(rSet.getInt(10));
				g.setCname(rSet.getString(11));
				g.setExpdate(rSet.getString(12));
				list.add(g);
				i++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<GroceryDtls> getDress() {
		List<GroceryDtls> list=new ArrayList<GroceryDtls>();
		GroceryDtls g=null;
		try {
			String sqlString="select * from grocery where category=? and status=? order by id DESC";
			PreparedStatement psmt=con.prepareStatement(sqlString);
			psmt.setString(1, "Dress");
			psmt.setString(2, "Active");
			ResultSet rSet=psmt.executeQuery();
			int i=0;
			while (rSet.next() && i<4) {
				g=new GroceryDtls();
				g.setId(rSet.getInt(1));
				g.setName(rSet.getString(2));
				g.setCategory(rSet.getString(3));
				g.setPrice(rSet.getString(4));
				g.setPhoto(rSet.getString(5));
				g.setDescription(rSet.getString(6));
				g.setStatus(rSet.getString(7));
				g.setSeller(rSet.getString(8));
				g.setSemail(rSet.getString(9));
				g.setSid(rSet.getInt(10));
				g.setCname(rSet.getString(11));
				g.setExpdate(rSet.getString(12));
				list.add(g);
				i++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<GroceryDtls> getToy() {
		List<GroceryDtls> list=new ArrayList<GroceryDtls>();
		GroceryDtls g=null;
		try {
			String sqlString="select * from grocery where category=? and status=? order by id DESC";
			PreparedStatement psmt=con.prepareStatement(sqlString);
			psmt.setString(1, "Toy");
			psmt.setString(2, "Active");
			ResultSet rSet=psmt.executeQuery();
			int i=0;
			while (rSet.next() && i<4) {
				g=new GroceryDtls();
				g.setId(rSet.getInt(1));
				g.setName(rSet.getString(2));
				g.setCategory(rSet.getString(3));
				g.setPrice(rSet.getString(4));
				g.setPhoto(rSet.getString(5));
				g.setDescription(rSet.getString(6));
				g.setStatus(rSet.getString(7));
				g.setSeller(rSet.getString(8));
				g.setSemail(rSet.getString(9));
				g.setSid(rSet.getInt(10));
				g.setCname(rSet.getString(11));
				g.setExpdate(rSet.getString(12));
				list.add(g);
				i++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<GroceryDtls> getProductByType(String type) {
		List<GroceryDtls> list=new ArrayList<GroceryDtls>();
		GroceryDtls g=null;
		try {
			String sqlString="select * from grocery where category=? and status=? order by id DESC";
			PreparedStatement psmt=con.prepareStatement(sqlString);
			psmt.setString(1, type);
			psmt.setString(2, "Active");
			ResultSet rSet=psmt.executeQuery();
			int i=0;
			while (rSet.next() && i<4) {
				g=new GroceryDtls();
				g.setId(rSet.getInt(1));
				g.setName(rSet.getString(2));
				g.setCategory(rSet.getString(3));
				g.setPrice(rSet.getString(4));
				g.setPhoto(rSet.getString(5));
				g.setDescription(rSet.getString(6));
				g.setStatus(rSet.getString(7));
				g.setSeller(rSet.getString(8));
				g.setSemail(rSet.getString(9));
				g.setSid(rSet.getInt(10));
				g.setCname(rSet.getString(11));
				g.setExpdate(rSet.getString(12));
				list.add(g);
				i++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<GroceryDtls> getProductBySearch(String ch) {
		List<GroceryDtls> list=new ArrayList<GroceryDtls>();
		GroceryDtls g=null;
		try {
			String sqlString="select * from grocery where name like ? or category like ? or cname like ? or seller like ? and status=? order by id DESC";
			PreparedStatement psmt=con.prepareStatement(sqlString);
			psmt.setString(1, "%"+ch+"%");
			psmt.setString(2, "%"+ch+"%");
			psmt.setString(3, "%"+ch+"%");
			psmt.setString(4, "%"+ch+"%");
			psmt.setString(5, "Active");
			ResultSet rSet=psmt.executeQuery();
			int i=0;
			while (rSet.next()) {
				g=new GroceryDtls();
				g.setId(rSet.getInt(1));
				g.setName(rSet.getString(2));
				g.setCategory(rSet.getString(3));
				g.setPrice(rSet.getString(4));
				g.setPhoto(rSet.getString(5));
				g.setDescription(rSet.getString(6));
				g.setStatus(rSet.getString(7));
				g.setSeller(rSet.getString(8));
				g.setSemail(rSet.getString(9));
				g.setSid(rSet.getInt(10));
				g.setCname(rSet.getString(11));
				g.setExpdate(rSet.getString(12));
				list.add(g);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	
	

}
