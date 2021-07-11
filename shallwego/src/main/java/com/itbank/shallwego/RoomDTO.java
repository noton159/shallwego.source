package com.itbank.shallwego;

public class RoomDTO {
//	이름             널?       유형             
//	-------------- -------- -------------- 
//	ROOM_IDX       NOT NULL NUMBER         
//	ACCOMM_IDX     NOT NULL NUMBER         
//	ROOM_NAME      NOT NULL VARCHAR2(100)  
//	MIN_PERSON     NOT NULL NUMBER         
//	MAX_PERSON     NOT NULL NUMBER         
//	ROOM_TYPE      NOT NULL NUMBER         
//	ROOM_HIRE_TIME          NUMBER         
//	ROOM_IMG                VARCHAR2(2000) 
//	ROOM_INFO               VARCHAR2(2000) 
	
//  COST_PRICE
//	WEEKEND
	
//	MIN_PRICE
	
	private int room_idx, accomm_idx, min_person, max_person, room_type, room_hire_time;
	private String room_name, room_img, room_info;
	private int cost_price, weekend;
	private String[] img_result;
	
	public int getRoom_idx() {
		return room_idx;
	}
	public void setRoom_idx(int room_idx) {
		this.room_idx = room_idx;
	}
	public int getAccomm_idx() {
		return accomm_idx;
	}
	public void setAccomm_idx(int accomm_idx) {
		this.accomm_idx = accomm_idx;
	}
	public int getMin_person() {
		return min_person;
	}
	public void setMin_person(int min_person) {
		this.min_person = min_person;
	}
	public int getMax_person() {
		return max_person;
	}
	public void setMax_person(int max_person) {
		this.max_person = max_person;
	}
	public int getRoom_type() {
		return room_type;
	}
	public void setRoom_type(int room_type) {
		this.room_type = room_type;
	}
	public int getRoom_hire_time() {
		return room_hire_time;
	}
	public void setRoom_hire_time(int room_hire_time) {
		this.room_hire_time = room_hire_time;
	}
	public String getRoom_name() {
		return room_name;
	}
	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}
	public String getRoom_img() {
		return room_img;
	}
	public void setRoom_img(String room_img) {
		this.room_img = room_img;
	}
	public String getRoom_info() {
		return room_info;
	}
	public void setRoom_info(String room_info) {
		this.room_info = room_info;
	}
	public int getCost_price() {
		return cost_price;
	}
	public void setCost_price(int cost_price) {
		this.cost_price = cost_price;
	}
	public int getWeekend() {
		return weekend;
	}
	public void setWeekend(int weekend) {
		this.weekend = weekend;
	}
	public String[] getImg_result() {
		return img_result;
	}
	public void setImg_result(String[] img_result) {
		this.img_result = img_result;
	}
	
}
