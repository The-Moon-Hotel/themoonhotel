package com.moon.guest.model;

import java.sql.Timestamp;

public class GuestVO {
	private int guestNo;
	private String name;
	private String userid;
	private String pwd;
	private String email;
	private String tel;
	private Timestamp joindate;
	private Timestamp outdate;
	private int sys;
	
	public GuestVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public GuestVO(int guestNo, String name, String userid, String pwd, String email, String tel, Timestamp joindate,
			Timestamp outdate, int sys) {
		super();
		this.guestNo = guestNo;
		this.name = name;
		this.userid = userid;
		this.pwd = pwd;
		this.email = email;
		this.tel = tel;
		this.joindate = joindate;
		this.outdate = outdate;
		this.sys = sys;
	}

	public int getGuestNo() {
		return guestNo;
	}

	public void setGuestNo(int guestNo) {
		this.guestNo = guestNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public Timestamp getJoindate() {
		return joindate;
	}

	public void setJoindate(Timestamp joindate) {
		this.joindate = joindate;
	}

	public Timestamp getOutdate() {
		return outdate;
	}

	public void setOutdate(Timestamp outdate) {
		this.outdate = outdate;
	}

	public int getSys() {
		return sys;
	}

	public void setSys(int sys) {
		this.sys = sys;
	}

	@Override
	public String toString() {
		return "GuestVO [guestNo=" + guestNo + ", name=" + name + ", userid=" + userid + ", pwd=" + pwd + ", email="
				+ email + ", tel=" + tel + ", joindate=" + joindate + ", outdate=" + outdate + ", sys=" + sys + "]";
	}
	
}
