package com.itbank.shallwego;

import java.util.Date;

public class BookingDTO {

	
	private Date payment_date;
	private String email, phone_number, username, accomm_checkin, accomm_checkout;
	private int cf_idx, cost_price;
	
	public Date getPayment_date() {
		return payment_date;
	}
	public void setPayment_date(Date payment_date) {
		this.payment_date = payment_date;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
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
	public int getCf_idx() {
		return cf_idx;
	}
	public void setCf_idx(int cf_idx) {
		this.cf_idx = cf_idx;
	}
	public int getCost_price() {
		return cost_price;
	}
	public void setCost_price(int cost_price) {
		this.cost_price = cost_price;
	}
}
