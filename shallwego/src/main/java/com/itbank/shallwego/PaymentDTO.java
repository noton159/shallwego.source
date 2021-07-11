package com.itbank.shallwego;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class PaymentDTO {
//  PAYMENT
//   ------------- -------- ------------ 
//   PAYMENT_IDX   NOT NULL NUMBER       
//   CUSTOMER_IDX  NOT NULL NUMBER       
//   CARD_NUMBER   NOT NULL VARCHAR2(20) 
//   PAYMENT_PRICE NOT NULL NUMBER       
//   CVC_NUMBER    NOT NULL NUMBER       
//   REFUND        NOT NULL NUMBER
   
   private int coupon_idx, payment_idx, customer_idx, payment_price, cvc_number, refund, room_idx, accomm_idx, people;
   private String card_number, checkin, checkout;
   private Date payment_date;
   
   public String getStart() throws ParseException {
      SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
      Date checkin = sdf.parse(getCheckin());
      String s1 = sdf.format(checkin);
      return s1;
   }
   
   public String getEnd() throws ParseException {
      SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
      Date checkout = sdf.parse(getCheckout());
      String s1 = sdf.format(checkout);
      return s1;
   }

   public String getCheckin() {
      return checkin;
   }
   public void setCheckin(String checkin) {
      this.checkin = checkin;
   }
   public String getCheckout() {
      return checkout;
   }
   public void setCheckout(String checkout) {
      this.checkout = checkout;
   }
   private String accomm_name;
   
   public int getPayment_idx() {
      return payment_idx;
   }
   public void setPayment_idx(int payment_idx) {
      this.payment_idx = payment_idx;
   }
   public int getCustomer_idx() {
      return customer_idx;
   }
   public void setCustomer_idx(int customer_idx) {
      this.customer_idx = customer_idx;
   }
   public int getPayment_price() {
      return payment_price;
   }
   public void setPayment_price(int payment_price) {
      this.payment_price = payment_price;
   }
   public int getCvc_number() {
      return cvc_number;
   }
   public void setCvc_number(int cvc_number) {
      this.cvc_number = cvc_number;
   }
   public int getRefund() {
      return refund;
   }
   public void setRefund(int refund) {
      this.refund = refund;
   }
   public String getCard_number() {
      return card_number;
   }
   public void setCard_number(String card_number) {
      this.card_number = card_number;
   }
   public Date getPayment_date() {
      return payment_date;
   }
   public void setPayment_date(Date payment_date) {
      this.payment_date = payment_date;
   }
   public int getRoom_idx() {
      return room_idx;
   }
   public void setRoom_idx(int room_idx) {
      this.room_idx = room_idx;
   }
   public String getAccomm_name() {
      return accomm_name;
   }
   public void setAccomm_name(String accomm_name) {
      this.accomm_name = accomm_name;
   }
   public int getAccomm_idx() {
      return accomm_idx;
   }
   public void setAccomm_idx(int accomm_idx) {
      this.accomm_idx = accomm_idx;
   }
   public int getCoupon_idx() {
	   return coupon_idx;
   }
   public void setCoupon_idx(int coupon_idx) {
	   this.coupon_idx = coupon_idx;
   }
   public int getPeople() {
	   return people;
   }
   public void setPeople(int people) {
	   this.people = people;
   }
   
   
}