package com.itbank.shallwego;

public class SalesDTO {
//	이름                      널?       유형            
//	----------------------- -------- ------------- 
//	SALES_IDX               NOT NULL NUMBER        
//	CUSTOMER_IDX            NOT NULL NUMBER        
//	REPRESENTATIVE          NOT NULL VARCHAR2(100) 
//	MUTUAL_NAME             NOT NULL VARCHAR2(100) 
//	BUSINESS_ADDRESS        NOT NULL VARCHAR2(100) 
//	SALES_EMAIL             NOT NULL VARCHAR2(100) 
//	CONTACT_INFO            NOT NULL VARCHAR2(20)  
//	BUSINESS_LICENSE_NUMBER NOT NULL VARCHAR2(100)
	
	private int sales_idx, customer_idx;
	private String representative, mutual_name, business_address, sales_email, contact_info, business_license_number;
	
	public int getSales_idx() {
		return sales_idx;
	}
	public void setSales_idx(int sales_idx) {
		this.sales_idx = sales_idx;
	}
	public int getCustomer_idx() {
		return customer_idx;
	}
	public void setCustomer_idx(int customer_idx) {
		this.customer_idx = customer_idx;
	}
	public String getRepresentative() {
		return representative;
	}
	public void setRepresentative(String representative) {
		this.representative = representative;
	}
	public String getMutual_name() {
		return mutual_name;
	}
	public void setMutual_name(String mutual_name) {
		this.mutual_name = mutual_name;
	}
	public String getBusiness_address() {
		return business_address;
	}
	public void setBusiness_address(String business_address) {
		this.business_address = business_address;
	}
	public String getSales_email() {
		return sales_email;
	}
	public void setSales_email(String sales_email) {
		this.sales_email = sales_email;
	}
	public String getContact_info() {
		return contact_info;
	}
	public void setContact_info(String contact_info) {
		this.contact_info = contact_info;
	}
	public String getBusiness_license_number() {
		return business_license_number;
	}
	public void setBusiness_license_number(String business_license_number) {
		this.business_license_number = business_license_number;
	}
}
