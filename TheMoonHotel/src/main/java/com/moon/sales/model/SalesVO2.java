package com.moon.sales.model;

public class SalesVO2 {
	private String locName; //지점명
	private String roomType; //객실 타입
	private int adult;//어른수
	private int kids;//어린이수
	private String ci_date;//체크인날짜
	private int quantity; //판매수량
	private int roomPrice;//객실 가격
	private int room_total_Price; //객실 가격 합계
	
	private int fac_adultNo; //부대시설 이용 성인수
	private int fac_kidsNo;	//부대시설 이용 어린이수
	private int fac_Adult_Price;//부대시설 이용 성인 요금
	private int fac_kids_Price;//부대시설 이용 어린이 요금
	private int fac_total_Price;//부대시설 이용 요금
	
	

	public SalesVO2() {
		super();
	}

	


	public SalesVO2(String locName, String roomType, int adult, int kids, String ci_date, int quantity, int roomPrice,
			int room_total_Price, int fac_adultNo, int fac_kidsNo, int fac_Adult_Price, int fac_kids_Price,
			int fac_total_Price) {
		super();
		this.locName = locName;
		this.roomType = roomType;
		this.adult = adult;
		this.kids = kids;
		this.ci_date = ci_date;
		this.quantity = quantity;
		this.roomPrice = roomPrice;
		this.room_total_Price = room_total_Price;
		this.fac_adultNo = fac_adultNo;
		this.fac_kidsNo = fac_kidsNo;
		this.fac_Adult_Price = fac_Adult_Price;
		this.fac_kids_Price = fac_kids_Price;
		this.fac_total_Price = fac_total_Price;
	}


	/**
	 * 객실매출조회
	 * @param locName
	 * @param roomType
	 * @param ci_date
	 * @param quantity
	 * @param roomPrice
	 * @param room_total_Price
	 */

	public SalesVO2(String locName, String roomType, String ci_date, int quantity, int roomPrice,
			int room_total_Price) {
		super();
		this.locName = locName;
		this.roomType = roomType;
		this.ci_date = ci_date;
		this.quantity = quantity;
		this.roomPrice = roomPrice;
		this.room_total_Price = room_total_Price;
	}




	public String getLocName() {
		return locName;
	}




	public void setLocName(String locName) {
		this.locName = locName;
	}




	public String getRoomType() {
		return roomType;
	}




	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}




	public int getAdult() {
		return adult;
	}




	public void setAdult(int adult) {
		this.adult = adult;
	}




	public int getKids() {
		return kids;
	}




	public void setKids(int kids) {
		this.kids = kids;
	}




	public String getCi_date() {
		return ci_date;
	}




	public void setCi_date(String ci_date) {
		this.ci_date = ci_date;
	}




	public int getQuantity() {
		return quantity;
	}




	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}




	public int getRoomPrice() {
		return roomPrice;
	}




	public void setRoomPrice(int roomPrice) {
		this.roomPrice = roomPrice;
	}




	public int getRoom_total_Price() {
		return room_total_Price;
	}




	public void setRoom_total_Price(int room_total_Price) {
		this.room_total_Price = room_total_Price;
	}




	public int getFac_adultNo() {
		return fac_adultNo;
	}




	public void setFac_adultNo(int fac_adultNo) {
		this.fac_adultNo = fac_adultNo;
	}




	public int getFac_kidsNo() {
		return fac_kidsNo;
	}




	public void setFac_kidsNo(int fac_kidsNo) {
		this.fac_kidsNo = fac_kidsNo;
	}




	public int getFac_Adult_Price() {
		return fac_Adult_Price;
	}




	public void setFac_Adult_Price(int fac_Adult_Price) {
		this.fac_Adult_Price = fac_Adult_Price;
	}




	public int getFac_kids_Price() {
		return fac_kids_Price;
	}




	public void setFac_kids_Price(int fac_kids_Price) {
		this.fac_kids_Price = fac_kids_Price;
	}




	public int getFac_total_Price() {
		return fac_total_Price;
	}




	public void setFac_total_Price(int fac_total_Price) {
		this.fac_total_Price = fac_total_Price;
	}

	
	
	
	
	
	
	
	
	
	
}



