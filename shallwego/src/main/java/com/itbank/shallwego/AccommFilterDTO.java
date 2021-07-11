package com.itbank.shallwego;

import java.util.List;

// index_room에 왼쪽필터 
public class AccommFilterDTO {

	// 검색
	private String destination;				// 검색어
	private String start;					// 체크인
	private String end;						// 체크아웃
	private int person;						// 사람 수
	
	private String region;					// 지역
	private int accomm_search_type;			// 숙소타입 검색
	private String accomm_search_name;		// 숙소이름 검색

	// 1박 요금
	private int accomm_filter_type;			// 숙소타입 필터(호텔, 모텔, 펜션, 게스트하우스)
	private int min_filter_price;			// 최소가격 
	private int max_filter_price;			// 최대가격
	
	// 평점 
	private int avg;
	
	// 성급
	private boolean[] tiers;
	private List<Integer> tList;
	
	
	
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getEnd() {
		return end;
	}
	public void setEnd(String end) {
		this.end = end;
	}
	public int getPerson() {
		return person;
	}
	public void setPerson(int person) {
		this.person = person;
	}
	
	
	
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public int getAccomm_search_type() {
		return accomm_search_type;
	}
	public void setAccomm_search_type(int accomm_search_type) {
		this.accomm_search_type = accomm_search_type;
	}
	public String getAccomm_search_name() {
		return accomm_search_name;
	}
	public void setAccomm_search_name(String accomm_search_name) {
		this.accomm_search_name = accomm_search_name;
	}
	
	
	
	public void setAccomm_filter_type(int accomm_filter_type) {
		this.accomm_filter_type = accomm_filter_type;
	}
	public void setAvg(int avg) {
		this.avg = avg;
	}
	public int getAccomm_filter_type() {
		return accomm_filter_type;
	}
	public void setAccomm_type(int accomm_filter_type) {
		this.accomm_filter_type = accomm_filter_type;
	}
	public int getMin_filter_price() {
		return min_filter_price;
	}
	public void setMin_filter_price(int min_filter_price) {
		this.min_filter_price = min_filter_price;
	}
	public int getMax_filter_price() {
		return max_filter_price;
	}
	public void setMax_filter_price(int max_filter_price) {
		this.max_filter_price = max_filter_price;
	}
	
	
	
	public int getAvg() {
		return avg;
	}
	public void setAccomm_avg(int avg) {
		this.avg = avg;
	}
	
	
	
	public boolean[] getTiers() {
		return tiers;
	}
	public void setTiers(boolean[] tiers) {
		this.tiers = tiers;
	}
	
	public List<Integer> gettList() {
		return tList;
	}
	public void settList(List<Integer> tList) {
		this.tList = tList;
	}
	
}
