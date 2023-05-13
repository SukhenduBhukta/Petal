package com.DAO;

import com.entity.Appointment;

public interface AppointmentDAO {
	public boolean addAppointment(Appointment ap);
	public int appiontmentgetidbyuid(int uid);
	
}
