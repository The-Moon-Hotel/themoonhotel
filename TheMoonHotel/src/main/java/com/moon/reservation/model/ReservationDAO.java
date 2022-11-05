package com.moon.reservation.model;

import com.moon.db.ConnectionPoolMgr;

public class ReservationDAO {
	private ConnectionPoolMgr pool;
	
	public ReservationDAO() {
		pool = new ConnectionPoolMgr();
	}
	
	
}
