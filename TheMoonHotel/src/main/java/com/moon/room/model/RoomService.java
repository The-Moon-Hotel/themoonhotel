package com.moon.room.model;

import java.sql.SQLException;
import java.util.List;

public class RoomService {
	private RoomDAO locDao;
	
	public RoomService() {
		locDao = new RoomDAO();
	}
	
	public List<RoomVO> selectRoom(String locName) throws SQLException{
		return locDao.selectRoom(locName);
	}
}
