package com.moon.noticeBoard.model;

import java.sql.Timestamp;

public class NoticeBoardVO {
	private int noticeNo;
	private int guestNo;
	private String n_title;
	private Timestamp n_regdate;
	private String n_content;
	private int n_count;
	private String n_fileName;
	private long n_fileSize;
	private String userid;
	public NoticeBoardVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "NoticeBoardVO [noticeNo=" + noticeNo + ", guestNo=" + guestNo + ", n_title=" + n_title + ", n_regdate="
				+ n_regdate + ", n_content=" + n_content + ", n_count=" + n_count + ", n_fileName=" + n_fileName
				+ ", n_fileSize=" + n_fileSize + ", userid=" + userid + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}
	
	public NoticeBoardVO(int noticeNo, int guestNo, String n_title, Timestamp n_regdate, String n_content, int n_count,
			String n_fileName, long n_fileSize) {
		super();
		this.noticeNo = noticeNo;
		this.guestNo = guestNo;
		this.n_title = n_title;
		this.n_regdate = n_regdate;
		this.n_content = n_content;
		this.n_count = n_count;
		this.n_fileName = n_fileName;
		this.n_fileSize = n_fileSize;
	}
	public NoticeBoardVO(int noticeNo, int guestNo, String n_title, Timestamp n_regdate, String n_content, int n_count,
			String n_fileName, long n_fileSize, String userid) {
		super();
		this.noticeNo = noticeNo;
		this.guestNo = guestNo;
		this.n_title = n_title;
		this.n_regdate = n_regdate;
		this.n_content = n_content;
		this.n_count = n_count;
		this.n_fileName = n_fileName;
		this.n_fileSize = n_fileSize;
		this.userid = userid;
	}
	public int getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}
	public int getGuestNo() {
		return guestNo;
	}
	public void setGuestNo(int guestNo) {
		this.guestNo = guestNo;
	}
	public String getN_title() {
		return n_title;
	}
	public void setN_title(String n_title) {
		this.n_title = n_title;
	}
	public Timestamp getN_regdate() {
		return n_regdate;
	}
	public void setN_regdate(Timestamp n_regdate) {
		this.n_regdate = n_regdate;
	}
	public String getN_content() {
		return n_content;
	}
	public void setN_content(String n_content) {
		this.n_content = n_content;
	}
	public int getN_count() {
		return n_count;
	}
	public void setN_count(int n_count) {
		this.n_count = n_count;
	}
	public String getN_fileName() {
		return n_fileName;
	}
	public void setN_fileName(String n_fileName) {
		this.n_fileName = n_fileName;
	}
	public long getN_fileSize() {
		return n_fileSize;
	}
	public void setN_fileSize(long n_fileSize) {
		this.n_fileSize = n_fileSize;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	
}
