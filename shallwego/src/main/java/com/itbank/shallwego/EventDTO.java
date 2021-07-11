package com.itbank.shallwego;

import java.text.SimpleDateFormat;
import java.util.Date;

public class EventDTO {
	
	private int event_idx;	// 이벤트 인덱스 
	private String event_img, 
					event_title,  
					event_subtitle, 
					event_content;
	// 이미지, 제목, 부제목, 내용
	private Date event_start, event_end;	// 이벤트 시작날짜, 끝날짜 
	private int deleted;
	
	public String getStart() {
		String s1 = new SimpleDateFormat("yyyy-MM-dd").format(getEvent_start());
		return s1;
	}
	public String getEnd() {
		String s1 = new SimpleDateFormat("yyyy-MM-dd").format(getEvent_end());
		return s1;
	}
	
	
	public int getEvent_idx() {
		return event_idx;
	}
	public void setEvent_idx(int event_idx) {
		this.event_idx = event_idx;
	}
	public String getEvent_img() {
		return event_img;
	}
	public void setEvent_img(String event_img) {
		this.event_img = event_img;
	}
	public String getEvent_title() {
		return event_title;
	}
	public void setEvent_title(String event_title) {
		this.event_title = event_title;
	}
	public String getEvent_subtitle() {
		return event_subtitle;
	}
	public void setEvent_subtitle(String event_subtitle) {
		this.event_subtitle = event_subtitle;
	}
	public String getEvent_content() {
		return event_content;
	}
	public void setEvent_content(String event_content) {
		this.event_content = event_content;
	}
	public Date getEvent_start() {
		return event_start;
	}
	public void setEvent_start(Date event_start) {
		this.event_start = event_start;
	}
	public Date getEvent_end() {
		return event_end;
	}
	public void setEvent_end(Date event_end) {
		this.event_end = event_end;
	}


	public int getDeleted() {
		return deleted;
	}
	public void setDeleted(int deleted) {
		this.deleted = deleted;
	}
	
	

}
