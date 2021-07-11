package com.itbank.shallwego;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

public class BoardDTO implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private int inquiry_idx, customer_idx, ic_idx;	// 게시판 인덱스, 유저 아이디엑스, 문의 유형
	private String accomm_type; // 카테고리 유형 (호텔 모텔 ...)
	private String inquiry_title, inquiry_content; // 문의제목, 문의내용 
	private Date inquiry_date; // 작성날짜 
	private int deleted;

	
	public String getDate() {
		String s1 = new SimpleDateFormat("yyyy-MM-dd").format(getInquiry_date());
		return s1;
	}
	
	@Override
	public String toString() {
		String s1 = new SimpleDateFormat("yyyy-mm-dd").format(inquiry_date);
		return String.format("%s, %s, %s, %s, %s, %s, %s",
				inquiry_idx,
				customer_idx,
				ic_idx,
				accomm_type,
				inquiry_title,
				inquiry_content,
				s1
			);
	}
	
	
	
	public int getInquiry_idx() {
		return inquiry_idx;
	}
	public void setInquiry_idx(int inquiry_idx) {
		this.inquiry_idx = inquiry_idx;
	}
	public int getCustomer_idx() {
		return customer_idx;
	}
	public void setCustomer_idx(int customer_idx) {
		this.customer_idx = customer_idx;
	}
	public int getIc_idx() {
		return ic_idx;
	}
	public void setIc_idx(int ic_idx) {
		this.ic_idx = ic_idx;
	}
	public String getAccomm_type() {
		return accomm_type;
	}
	public void setAccomm_type(String accomm_type) {
		this.accomm_type = accomm_type;
	}
	public String getInquiry_title() {
		return inquiry_title;
	}
	public void setInquiry_title(String inquiry_title) {
		this.inquiry_title = inquiry_title;
	}
	public String getInquiry_content() {
		return inquiry_content;
	}
	public void setInquiry_content(String inquiry_content) {
		this.inquiry_content = inquiry_content;
	}
	public Date getInquiry_date() {
		return inquiry_date;
	}
	public void setInquiry_date(Date inquiry_date) {
		this.inquiry_date = inquiry_date;
	}
	public int getDeleted() {
		return deleted;
	}
	public void setDeleted(int deleted) {
		this.deleted = deleted;
	}
		
}
