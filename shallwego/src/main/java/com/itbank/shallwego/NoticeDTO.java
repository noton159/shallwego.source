package com.itbank.shallwego;

import java.text.SimpleDateFormat;
import java.util.Date;

public class NoticeDTO {
	
	private int notice_idx;
	private String notice_title, notice_content, admin_idx;
	private Date notice_date;
	private int deleted;
	
	public String getDate() {
		String s1 = new SimpleDateFormat("yyyy-MM-dd").format(getNotice_date());
		return s1;
	}
	
	
	public int getNotice_idx() {
		return notice_idx;
	}
	public void setNotice_idx(int notice_idx) {
		this.notice_idx = notice_idx;
	}
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	
	public Date getNotice_date() {
		return notice_date;
	}
	public void setNotice_date(Date notice_date) {
		this.notice_date = notice_date;
	}
	public String getAdmin_idx() {
		return admin_idx;
	}
	public void setAdmin_idx(String admin_idx) {
		this.admin_idx = admin_idx;
	}


	public int getDeleted() {
		return deleted;
	}
	public void setDeleted(int deleted) {
		this.deleted = deleted;
	}
	
	
	
}
