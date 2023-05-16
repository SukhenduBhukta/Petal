package com.DAO;

import java.util.List;

import com.entity.Appointment;

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
	
}
