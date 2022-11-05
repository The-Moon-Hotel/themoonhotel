package com.moon.room.model;

public class LocInfoVO {
	private int locNo;
	private String locName;
	private int roomNo;
	private String roomType;
	private int price;
	
	public LocInfoVO() {
		super();
	}

	public LocInfoVO(int locNo, String locName, int roomNo, String roomType, int price) {
		super();
		this.locNo = locNo;
		this.locName = locName;
		this.roomNo = roomNo;
		this.roomType = roomType;
		this.price = price;
	}

	public int getLocNo() {
		return locNo;
	}

	public void setLocNo(int locNo) {
		this.locNo = locNo;
	}

	public String getLocName() {
		return locName;
	}

	public void setLocName(String locName) {
		this.locName = locName;
	}

	public int getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}

	public String getRoomType() {
		return roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "LocInfoVO [locNo=" + locNo + ", locName=" + locName + ", roomNo=" + roomNo + ", roomType=" + roomType
				+ ", price=" + price + "]";
	}
	
	
}
