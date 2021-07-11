package com.itbank.shallwego;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ReplyDTO {

	private int answer_idx, inquiry_idx;	// 관리자 인덱스, 게시물 인덱스 
	private String answer_content, answer_writer; // 댓글 내용, 댓글 작성자 
	private Date answer_date;	// 댓글 작성날짜 
	private int deleted;

	public String getDate() {
		String s1 = new SimpleDateFormat("yyyy-MM-dd").format(getAnswer_date());
		return s1;
	}
	
	
	public int getAnswer_idx() {
		return answer_idx;
	}
	public void setAnswer_idx(int answer_idx) {
		this.answer_idx = answer_idx;
	}
	public int getInquiry_idx() {
		return inquiry_idx;
	}
	public void setInquiry_idx(int inquiry_idx) {
		this.inquiry_idx = inquiry_idx;
	}
	public String getAnswer_content() {
		return answer_content;
	}
	public void setAnswer_content(String answer_content) {
		this.answer_content = answer_content;
	}
	public String getAnswer_writer() {
		return answer_writer;
	}
	public void setAnswer_writer(String answer_writer) {
		this.answer_writer = answer_writer;
	}
	public Date getAnswer_date() {
		return answer_date;
	}
	public void setAnswer_date(Date answer_date) {
		this.answer_date = answer_date;
	}
	public int getDeleted() {
		return deleted;
	}
	public void setDeleted(int deleted) {
		this.deleted = deleted;
	}
	
	
}

