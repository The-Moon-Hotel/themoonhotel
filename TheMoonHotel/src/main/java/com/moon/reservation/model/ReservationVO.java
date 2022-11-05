package com.moon.reservation.model;

import java.sql.Timestamp;

public class ReservationVO {
	private int reservNo;
	private int guestNo;
	private int facNo;
	private int adult;
	private int kids;
	private Timestamp ci_date;
	private Timestamp co_date;
	
	public ReservationVO() {
		super();
	}

	public ReservationVO(int reservNo, int guestNo, int facNo, int adult, int kids, Timestamp ci_date,
			Timestamp co_date) {
		super();
		this.reservNo = reservNo;
		this.guestNo = guestNo;
		this.facNo = facNo;
		this.adult = adult;
		this.kids = kids;
		this.ci_date = ci_date;
		this.co_date = co_date;
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

	public Timestamp getCi_date() {
		return ci_date;
	}

	public void setCi_date(Timestamp ci_date) {
		this.ci_date = ci_date;
	}

	public Timestamp getCo_date() {
		return co_date;
	}

	public void setCo_date(Timestamp co_date) {
		this.co_date = co_date;
	}

	@Override
	public String toString() {
		return "reservationVO [reservNo=" + reservNo + ", guestNo=" + guestNo + ", facNo=" + facNo + ", adult=" + adult
				+ ", kids=" + kids + ", ci_date=" + ci_date + ", co_date=" + co_date + "]";
	}
}
