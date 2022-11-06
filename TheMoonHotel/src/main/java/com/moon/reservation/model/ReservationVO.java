package com.moon.reservation.model;

import java.sql.Date;

public class ReservationVO {
	private int reservNo;
	private int guestNo;
	private int roomNo;
	private int facNo;
	private int adult;
	private int kids;
	private Date ci_date;
	private Date co_date;
	private int totalPrice;
	
	public ReservationVO() {
		super();
	}

	public ReservationVO(int reservNo, int guestNo, int roomNo, int facNo, int adult, int kids, Date ci_date,
			Date co_date, int totalPrice) {
		super();
		this.reservNo = reservNo;
		this.guestNo = guestNo;
		this.roomNo = roomNo;
		this.facNo = facNo;
		this.adult = adult;
		this.kids = kids;
		this.ci_date = ci_date;
		this.co_date = co_date;
		this.totalPrice = totalPrice;
	}



	public int getReservNo() {
		return reservNo;
	}

	public void setReservNo(int reservNo) {
		this.reservNo = reservNo;
	}

	public int getGuestNo() {
		return guestNo;
	}

	public void setGuestNo(int guestNo) {
		this.guestNo = guestNo;
	}

	public int getFacNo() {
		return facNo;
	}

	public void setFacNo(int facNo) {
		this.facNo = facNo;
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

	public Date getCi_date() {
		return ci_date;
	}

	public void setCi_date(Date ci_date) {
		this.ci_date = ci_date;
	}

	public Date getCo_date() {
		return co_date;
	}

	public void setCo_date(Date co_date) {
		this.co_date = co_date;
	}
	
	public int getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}



	@Override
	public String toString() {
		return "ReservationVO [reservNo=" + reservNo + ", guestNo=" + guestNo + ", roomNo=" + roomNo + ", facNo="
				+ facNo + ", adult=" + adult + ", kids=" + kids + ", ci_date=" + ci_date + ", co_date=" + co_date
				+ ", totalPrice=" + totalPrice + "]";
	}

	
}
