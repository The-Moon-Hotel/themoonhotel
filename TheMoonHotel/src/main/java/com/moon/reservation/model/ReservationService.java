package com.moon.reservation.model;

import java.sql.SQLException;

public class ReservationService {
	private ReservationDAO reservDao;
	
	public ReservationService() {
		reservDao = new ReservationDAO();
	}
	
	public int insertReservation (ReservationVO reservVo) throws SQLException {
		return reservDao.insertReservation(reservVo);
	}
}
