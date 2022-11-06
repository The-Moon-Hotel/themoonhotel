package com.moon.reservation.model;

public class ReservationService {
	private ReservationDAO reservDao;
	
	public ReservationService() {
		reservDao = new ReservationDAO();
	}
}
