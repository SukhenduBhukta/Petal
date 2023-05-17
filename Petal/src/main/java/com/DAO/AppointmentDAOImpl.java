package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.print.attribute.standard.RequestingUserName;

import org.apache.taglibs.standard.tag.common.xml.IfTag;

import com.entity.Appointment;
import com.entity.Payment;

public class AppointmentDAOImpl implements AppointmentDAO {
	private Connection con;

	public AppointmentDAOImpl(Connection con) {
		super();
		this.con = con;
	}

	public boolean addAppointment(Appointment ap) {
		boolean f = false;

		try {

			String sql = "insert into appointment(user_id,ownerName,petName,gender,mob,address,street,city,state,pincode,email,age,date,did,status) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, ap.getUserid());
			ps.setString(2, ap.getOwnerName());
			ps.setString(3, ap.getPetName());
			ps.setString(4, ap.getGender());
			ps.setString(5, ap.getMob());
			ps.setString(6, ap.getAdrs());
			ps.setString(7, ap.getStreet());
			ps.setString(8, ap.getCity());
			ps.setString(9, ap.getState());
			ps.setString(10, ap.getPinCode());
			ps.setString(11, ap.getEmail());
			ps.setString(12, ap.getAge());
			ps.setString(13, ap.getDate());
			ps.setInt(14, ap.getDoctorid());
			ps.setString(15, ap.getStatus());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public int appiontmentgetidbyuid(int uid) {
		int i = 0;
		try {
			String sql = "select id from appointment where user_id=? order by id DESC";
			PreparedStatement psmt = con.prepareStatement(sql);
			psmt.setInt(1, uid);
			ResultSet rs = psmt.executeQuery();
			if (rs.next()) {
				i = rs.getInt("id");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}

	public boolean paymentadd(int cid, int amount, String status, String ordid, int apid) {
		boolean f = false;
		try {
			String sql = "insert into payments(amount, status, razorpay_order_id, cid, apid) values(?,?,?,?,?)";
			PreparedStatement psmt = con.prepareStatement(sql);
			psmt.setInt(1, amount);
			psmt.setString(2, status);
			psmt.setString(3, ordid);
			psmt.setInt(4, cid);
			psmt.setInt(5, apid);
			int i = psmt.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public boolean paymentUpdate(String status, String ordid, String payId, String sign) {
		boolean f = false;
		try {
			String sql = "update payments set status=?,razorpay_payment_id=?,razorpay_signature=? where razorpay_order_id=?";
			PreparedStatement psmt = con.prepareStatement(sql);
			psmt.setString(1, status);
			psmt.setString(2, payId);
			psmt.setString(3, sign);
			psmt.setString(4, ordid);
			int i = psmt.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public List<Appointment> getAllappointByUid(int uid) {
		List<Appointment> list = new ArrayList<Appointment>();
		Appointment ap = null;
		try {
			List<Integer> apid = new ArrayList<Integer>();
			String sql3 = "select id from appointment where user_id=?";
			PreparedStatement psmt3 = con.prepareStatement(sql3);
			psmt3.setInt(1, uid);
			ResultSet rs3 = psmt3.executeQuery();
			while (rs3.next()) {
				apid.add(rs3.getInt("id"));
			}

			for (int i = apid.size()-1; i >=0 ; i--) {
				int aid = apid.get(i);
				String sql1 = "select status,apid from payments where apid=? order by status DESC";
				PreparedStatement psmt = con.prepareStatement(sql1);
				psmt.setInt(1, aid);
				ResultSet rs = psmt.executeQuery();
				if (rs.next()) {
					if (rs.getString("status").equals("paid")) {
						//System.out.println(rs.getString("status"));
						int apiid = rs.getInt("apid");
						String sql2 = "select * from appointment where user_id=? and id=?";
						PreparedStatement psmt2 = con.prepareStatement(sql2);
						psmt2.setInt(1, uid);
						psmt2.setInt(2, apiid);
						ResultSet rs2 = psmt2.executeQuery();
						while (rs2.next()) {
							ap = new Appointment();
							ap.setId(rs2.getInt(1));
							ap.setUserid(rs2.getInt(2));
							ap.setOwnerName(rs2.getString(3));
							ap.setPetName(rs2.getString(4));
							ap.setGender(rs2.getString(5));
							ap.setMob(rs2.getString(6));
							ap.setAdrs(rs2.getString(7));
							ap.setStreet(rs2.getString(8));
							ap.setCity(rs2.getString(9));
							ap.setState(rs2.getString(10));
							ap.setPinCode(rs2.getString(11));
							ap.setEmail(rs2.getString(12));
							ap.setAge(rs2.getString(13));
							ap.setDate(rs2.getString(14));
							ap.setDoctorid(rs2.getInt(15));
							ap.setStatus(rs2.getString(16));
							ap.setTime(rs2.getString(17));
							ap.setLink(rs2.getString(18));
							ap.setReport(rs2.getString(19));
							list.add(ap);
						}
					}
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<Appointment> getAllappointByDid(int did) {
		List<Appointment> list = new ArrayList<Appointment>();
		Appointment ap = null;
		try {
			String sql = "select id from appointment where did=?";
			PreparedStatement psmt1 = con.prepareStatement(sql);
			psmt1.setInt(1, did);
			ResultSet rs1 = psmt1.executeQuery();
			List<Integer> apid = new ArrayList<Integer>();
			while (rs1.next()) {
				apid.add(rs1.getInt("id"));
			}

			for (int i = 0; i < apid.size(); i++) {
				int aid = apid.get(i);
				String sql1 = "select status,apid from payments where apid=? order by status DESC";
				PreparedStatement psmt = con.prepareStatement(sql1);
				psmt.setInt(1, aid);
				ResultSet rs = psmt.executeQuery();
				if (rs.next()) {
					// System.out.println(rs.getString("status")+" ");
					if (rs.getString("status").equals("paid")) {
						Integer apiid = rs.getInt("apid");
						String sql2 = "select * from appointment where did=? and status=? and id=?";
						PreparedStatement psmt2 = con.prepareStatement(sql2);
						psmt2.setInt(1, did);
						psmt2.setString(2, "under process");
						psmt2.setInt(3, apiid);
						ResultSet rs2 = psmt2.executeQuery();
						while (rs2.next()) {
							ap = new Appointment();
							ap.setId(rs2.getInt(1));
							ap.setUserid(rs2.getInt(2));
							ap.setOwnerName(rs2.getString(3));
							ap.setPetName(rs2.getString(4));
							ap.setGender(rs2.getString(5));
							ap.setMob(rs2.getString(6));
							ap.setAdrs(rs2.getString(7));
							ap.setStreet(rs2.getString(8));
							ap.setCity(rs2.getString(9));
							ap.setState(rs2.getString(10));
							ap.setPinCode(rs2.getString(11));
							ap.setEmail(rs2.getString(12));
							ap.setAge(rs2.getString(13));
							ap.setDate(rs2.getString(14));
							ap.setDoctorid(rs2.getInt(15));
							ap.setStatus(rs2.getString(16));
							ap.setTime(rs2.getString(17));
							ap.setLink(rs2.getString(18));
							ap.setReport(rs2.getString(19));
							list.add(ap);
						}
					}
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<Appointment> getAllUpdateappointByDid(int did) {
		List<Appointment> list = new ArrayList<Appointment>();
		Appointment ap = null;
		try {
			String sql = "select id from appointment where did=?";
			PreparedStatement psmt1 = con.prepareStatement(sql);
			psmt1.setInt(1, did);
			ResultSet rs1 = psmt1.executeQuery();
			List<Integer> apid = new ArrayList<Integer>();
			while (rs1.next()) {
				apid.add(rs1.getInt("id"));
			}

			for (int i = 0; i < apid.size(); i++) {
				int aid = apid.get(i);
				String sql1 = "select status,apid from payments where apid=? order by status DESC";
				PreparedStatement psmt = con.prepareStatement(sql1);
				psmt.setInt(1, aid);
				ResultSet rs = psmt.executeQuery();
				if (rs.next()) {
					// System.out.println(rs.getString("status")+" ");
					if (rs.getString("status").equals("paid")) {
						Integer apiid = rs.getInt("apid");
						String sql2 = "select * from appointment where did=? and status=? and id=?";
						PreparedStatement psmt2 = con.prepareStatement(sql2);
						psmt2.setInt(1, did);
						psmt2.setString(2, "schedule");
						psmt2.setInt(3, apiid);
						ResultSet rs2 = psmt2.executeQuery();
						while (rs2.next()) {
							ap = new Appointment();
							ap.setId(rs2.getInt(1));
							ap.setUserid(rs2.getInt(2));
							ap.setOwnerName(rs2.getString(3));
							ap.setPetName(rs2.getString(4));
							ap.setGender(rs2.getString(5));
							ap.setMob(rs2.getString(6));
							ap.setAdrs(rs2.getString(7));
							ap.setStreet(rs2.getString(8));
							ap.setCity(rs2.getString(9));
							ap.setState(rs2.getString(10));
							ap.setPinCode(rs2.getString(11));
							ap.setEmail(rs2.getString(12));
							ap.setAge(rs2.getString(13));
							ap.setDate(rs2.getString(14));
							ap.setDoctorid(rs2.getInt(15));
							ap.setStatus(rs2.getString(16));
							ap.setTime(rs2.getString(17));
							ap.setLink(rs2.getString(18));
							ap.setReport(rs2.getString(19));
							list.add(ap);
						}
					}
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public boolean updateAppointment(String time, String link, int apid) {
		boolean f = false;
		try {

			String sql = "update appointment set time=?,link=?,status=? where id=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, time);
			ps.setString(2, link);
			ps.setString(3, "schedule");
			ps.setInt(4, apid);

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();

		}

		return f;
	}

	public boolean updateAppointment1(String report, int apid) {
		boolean f = false;
		try {

			String sql = "update appointment set report=?,status=? where id=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, report);
			ps.setString(2, "Done");
			ps.setInt(3, apid);

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();

		}

		return f;
	}

	public List<Appointment> getAllappoint() {
		List<Appointment> list = new ArrayList<Appointment>();
		Appointment ap = null;
		try {
			String sql = "select * from appointment";
			PreparedStatement psmt2 = con.prepareStatement(sql);
			ResultSet rs2 = psmt2.executeQuery();
			while (rs2.next()) {
				ap = new Appointment();
				ap.setId(rs2.getInt(1));
				ap.setUserid(rs2.getInt(2));
				ap.setOwnerName(rs2.getString(3));
				ap.setPetName(rs2.getString(4));
				ap.setGender(rs2.getString(5));
				ap.setMob(rs2.getString(6));
				ap.setAdrs(rs2.getString(7));
				ap.setStreet(rs2.getString(8));
				ap.setCity(rs2.getString(9));
				ap.setState(rs2.getString(10));
				ap.setPinCode(rs2.getString(11));
				ap.setEmail(rs2.getString(12));
				ap.setAge(rs2.getString(13));
				ap.setDate(rs2.getString(14));
				ap.setDoctorid(rs2.getInt(15));
				ap.setStatus(rs2.getString(16));
				ap.setTime(rs2.getString(17));
				ap.setLink(rs2.getString(18));
				ap.setReport(rs2.getString(19));
				list.add(ap);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public Payment getPayByapid(int id) {
		Payment p=null;
		try {
			String sql = "select * from payments where apid=?";
			PreparedStatement psmt2 = con.prepareStatement(sql);
			psmt2.setInt(1, id);
			ResultSet rs2 = psmt2.executeQuery();
			while (rs2.next()) {
				p=new Payment();
				p.setPayid(rs2.getInt(1));
				p.setAmount(rs2.getInt(2));
				p.setStatus(rs2.getString(3));
				p.setRazorpay_payment_id(rs2.getString(4));
				p.setRazorpay_order_id(rs2.getString(5));
				p.setRazorpay_signature(rs2.getString(6));
				p.setCid(rs2.getInt(7));
				p.setApid(rs2.getInt(8));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return p;
	}

	public boolean giveRatingDoctor(int r, int uid, int did, String des) {
		boolean f=false;
		try {
			String sql = "insert into doctor_rating(did, uid, rcount, comment) values(?,?,?,?)";
			PreparedStatement psmt2 = con.prepareStatement(sql);
			psmt2.setInt(1, did);
			psmt2.setInt(2, uid);
			psmt2.setInt(3, r);
			psmt2.setString(4, des);
			int i=psmt2.executeUpdate();
			if(i==1) {
				f=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	

}
