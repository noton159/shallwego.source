package com.itbank.shallwego;

public class AccommDTO {
	
//	ACCOMTYPE
//	1. 호텔
//	2. 모텔
//	3. 펜션
//	4. 게스트하우스
	
//  ACCOMM 테이블             
//	------------------ -------- -------------- 
//	ACCOMM_IDX         NOT NULL NUMBER         
//	ACCOMM_NAME        NOT NULL VARCHAR2(100)  
//	ACCOMM_TYPE        NOT NULL NUMBER         
//	ACCOMM_ADDRESS     NOT NULL VARCHAR2(200)  
//	ACCOMM_CHECKIN     NOT NULL DATE           
//	ACCOMM_CHECKOUT    NOT NULL DATE           
//	ACCOMM_IMG                  VARCHAR2(500)  
//	ACCOMM_INTRO                VARCHAR2(2000) 
//	CF_IDX                      VARCHAR2(500)  
//	USAGE_GUIDE                 VARCHAR2(2000) 
//	RESERVATION_NOTICE          VARCHAR2(2000) 
//	ACCOMM_EVENT                VARCHAR2(100)  
//	ACCOMM_NOTICE               VARCHAR2(100) 
	
//	TIER 테이블
//	TIER_NUMBER		NUMBER
	
//  ROOM 테이블
//  ROOM_HIRE_TIME  NOT NULL NUMBER
	private int min;
	private int minprice1, minprice2, max_person;
	private String room_type;
	
	public int getMin() {
		return min;
	}
	public void setMin(int min) {
		this.min = min;
	}
	
	public void setMax_person(int max_person) {
		this.max_person = max_person;
	}
	public void setMinprice1(int minprice1) {
		this.minprice1 = minprice1;
	}
	public void setMinprice2(int minprice2) {
		this.minprice2 = minprice2;
	}
	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}
	public int getMax_person() {
		return max_person;
	}
	public int getMinprice1() {
		return minprice1;
	}
	public int getMinprice2() {
		return minprice2;
	}
	public String getRoom_type() {
		return room_type;
	}
	
	
	@Override
	public String toString() {
		return String.format("%s, %s, %s, %s\n", accomm_idx, room_type, minprice1, minprice2);
	}
	
		
	private int accomm_idx, accomm_type, tier_number, room_hire_time;
	private String accomm_name, accomm_address, accomm_img, accomm_intro, usage_guide, reservation_notice, accomm_event, accomm_notice, cf_idx;
	private String accomm_checkin, accomm_checkout;
	private String[] img_result;
	private int cost_price, count;
	private String title_img;
	private double accomm_avg;
	
	public double getAccomm_avg() {
		return accomm_avg;
	}
	public void setAccomm_avg(double accomm_avg) {
		this.accomm_avg = accomm_avg;
	}
	public int getAccomm_idx() {
		return accomm_idx;
	}
	public void setAccomm_idx(int accomm_idx) {
		this.accomm_idx = accomm_idx;
	}
	public int getAccomm_type() {
		return accomm_type;
	}
	public void setAccomm_type(int accomm_type) {
		this.accomm_type = accomm_type;
	}
	public String getAccomm_name() {
		return accomm_name;
	}
	public void setAccomm_name(String accomm_name) {
		this.accomm_name = accomm_name;
	}
	public String getAccomm_address() {
		return accomm_address;
	}
	public void setAccomm_address(String accomm_address) {
		this.accomm_address = accomm_address;
	}
	public String getAccomm_img() {
		return accomm_img;
	}
	public void setAccomm_img(String accomm_img) {
		this.accomm_img = accomm_img;
	}
	public String getAccomm_intro() {
		return accomm_intro;
	}
	public void setAccomm_intro(String accomm_intro) {
		this.accomm_intro = accomm_intro;
	}
	public String getUsage_guide() {
		return usage_guide;
	}
	public void setUsage_guide(String usage_guide) {
		this.usage_guide = usage_guide;
	}
	public String getReservation_notice() {
		return reservation_notice;
	}
	public void setReservation_notice(String reservation_notice) {
		this.reservation_notice = reservation_notice;
	}
	public String getAccomm_event() {
		return accomm_event;
	}
	public void setAccomm_event(String accomm_event) {
		this.accomm_event = accomm_event;
	}
	public String getAccomm_notice() {
		return accomm_notice;
	}
	public void setAccomm_notice(String accomm_notice) {
		this.accomm_notice = accomm_notice;
	}
	public String getCf_idx() {
		return cf_idx;
	}
	public void setCf_idx(String cf_idx) {
		this.cf_idx = cf_idx;
	}
	public String getAccomm_checkin() {
		return accomm_checkin;
	}
	public void setAccomm_checkin(String accomm_checkin) {
		this.accomm_checkin = accomm_checkin;
	}
	public String getAccomm_checkout() {
		return accomm_checkout;
	}
	public void setAccomm_checkout(String accomm_checkout) {
		this.accomm_checkout = accomm_checkout;
	}
	public int getTier_number() {
		return tier_number;
	}
	public void setTier_number(int tier_number) {
		this.tier_number = tier_number;
	}
	public int getRoom_hire_time() {
		return room_hire_time;
	}
	public void setRoom_hire_time(int room_hire_time) {
		this.room_hire_time = room_hire_time;
	}
	public String[] getImg_result() {
		return img_result;
	}
	public void setImg_result(String[] img_result) {
		this.img_result = img_result;
	}
	public int getCost_price() {
		return cost_price;
	}
	public void setCost_price(int cost_price) {
		this.cost_price = cost_price;
	}
	public String getTitle_img() {
		return title_img;
	}
	public void setTitle_img(String title_img) {
		this.title_img = title_img;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
}
