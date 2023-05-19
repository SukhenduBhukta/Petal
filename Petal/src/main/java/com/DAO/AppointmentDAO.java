package com.DAO;

import java.util.List;

import javax.print.attribute.standard.RequestingUserName;

import com.entity.Appointment;
import com.entity.Payment;

public interface AppointmentDAO {
	public boolean addAppointment(Appointment ap);
	public int appiontmentgetidbyuid(int uid);
	public boolean paymentadd(int cid,int amount, String status, String ordid, int apid);
	public boolean paymentUpdate( String status, String ordid, String payId, String sign);
	
	public List<Appointment> getAllappointByUid(int uid);
	public List<Appointment> getAllappointByDid(int did);
	public boolean updateAppointment1(String report, int apid);
	public List<Appointment> getAllUpdateappointByDid(int did);
	public boolean updateAppointment(String time, String link, int apid);
	public List<Appointment> getAllappoint();
	public Payment getPayByapid(int id);
	public boolean giveRatingDoctor(int r, int uid, int did, String des);
	public String getEmailByapid(int id);
}
