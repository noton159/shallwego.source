package com.itbank.shallwego;

import java.text.SimpleDateFormat;
import java.util.Date;

public class CouponDTO {
	
	private int coupon_idx, coupon_details_idx, customer_idx, coupon_use;
	private String coupon_serial_number;
	private Date coupon_start, coupon_end;
	
	private String coupon_name;
	private int coupon_price, coupon_constraint;
	
	public String getDate() {
		String s1 = new SimpleDateFormat("yyyy-MM-dd").format(getCoupon_start());
		String s2 = new SimpleDateFormat("yyyy-MM-dd").format(getCoupon_end());
		return s1 + " ~ " + s2;
	}
	
	
	public int getCoupon_idx() {
		return coupon_idx;
	}
	public void setCoupon_idx(int coupon_idx) {
		this.coupon_idx = coupon_idx;
	}
	public int getCoupon_details_idx() {
		return coupon_details_idx;
	}
	public void setCoupon_details_idx(int coupon_details_idx) {
		this.coupon_details_idx = coupon_details_idx;
	}
	public int getCustomer_idx() {
		return customer_idx;
	}
	public void setCustomer_idx(int customer_idx) {
		this.customer_idx = customer_idx;
	}
	public int getCoupon_use() {
		return coupon_use;
	}
	public void setCoupon_use(int coupon_use) {
		this.coupon_use = coupon_use;
	}
	public String getCoupon_serial_number() {
		return coupon_serial_number;
	}
	public void setCoupon_serial_number(String coupon_serial_number) {
		this.coupon_serial_number = coupon_serial_number;
	}
	public Date getCoupon_start() {
		return coupon_start;
	}
	public void setCoupon_start(Date coupon_start) {
		this.coupon_start = coupon_start;
	}
	public Date getCoupon_end() {
		return coupon_end;
	}
	public void setCoupon_end(Date coupon_end) {
		this.coupon_end = coupon_end;
	}
	public String getCoupon_name() {
		return coupon_name;
	}
	public void setCoupon_name(String coupon_name) {
		this.coupon_name = coupon_name;
	}
	public int getCoupon_price() {
		return coupon_price;
	}
	public void setCoupon_price(int coupon_price) {
		this.coupon_price = coupon_price;
	}
	public int getCoupon_constraint() {
		return coupon_constraint;
	}
	public void setCoupon_constraint(int coupon_constraint) {
		this.coupon_constraint = coupon_constraint;
	}
}
