package com.itbank.shallwego;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ReviewDTO {
	
	private int review_idx;			// 리뷰 인덱스 (기본키)
	private int accomm_idx;			// 숙소 인덱스 (외래키)
	private int room_idx;			// 방 인덱스 	(외래키)
	private int customer_idx;		// 고객 인덱스 (외래키)
	private int kindness;		// 친절도 (별)
	private int cleanliness;		// 청결도 (별)
	private int transportation;	// 편의성 (별)
	private String review_title;
	private String review_content;	// 리뷰내용 
	private Date review_date;
	private String room_name, userid;
	private int review_avg, count;
	private double accomm_avg;

	public String getDate() {
		String s1 = new SimpleDateFormat("yyyy-MM-dd").format(getReview_date());
		return s1;
	}
	
	public int getReview_idx() {
		return review_idx;
	}
	public void setReview_idx(int review_idx) {
		this.review_idx = review_idx;
	}
	public int getAccomm_idx() {
		return accomm_idx;
	}
	public void setAccomm_idx(int accomm_idx) {
		this.accomm_idx = accomm_idx;
	}
	public int getRoom_idx() {
		return room_idx;
	}
	public void setRoom_idx(int room_idx) {
		this.room_idx = room_idx;
	}
	public int getCustomer_idx() {
		return customer_idx;
	}
	public void setCustomer_idx(int customer_idx) {
		this.customer_idx = customer_idx;
	}
	public int getKindness() {
		return kindness;
	}
	public void setKindness(int kindness) {
		this.kindness = kindness;
	}
	public int getCleanliness() {
		return cleanliness;
	}
	public void setCleanliness(int cleanliness) {
		this.cleanliness = cleanliness;
	}
	public int getTransportation() {
		return transportation;
	}
	public void setTransportation(int transportation) {
		this.transportation = transportation;
	}
	public String getReview_title() {
		return review_title;
	}
	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public Date getReview_date() {
		return review_date;
	}
	public void setReview_date(Date review_date) {
		this.review_date = review_date;
	}
	public String getRoom_name() {
		return room_name;
	}
	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getReview_avg() {
		return review_avg;
	}
	public void setReview_avg(int review_avg) {
		this.review_avg = review_avg;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public double getAccomm_avg() {
		return accomm_avg;
	}
	public void setAccomm_avg(double accomm_avg) {
		this.accomm_avg = accomm_avg;
	}
	

}
