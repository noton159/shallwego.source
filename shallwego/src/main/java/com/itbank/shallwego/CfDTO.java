package com.itbank.shallwego;

public class CfDTO {
//	이름      널?       유형            
//	------- -------- ------------- 
//	CF_IDX  NOT NULL NUMBER        
//	CF_NAME NOT NULL VARCHAR2(20)  
//	CF_IMG  NOT NULL VARCHAR2(100)
	
	private int cf_idx;
	private String cf_name, cf_img;
	
	public int getCf_idx() {
		return cf_idx;
	}
	public void setCf_idx(int cf_idx) {
		this.cf_idx = cf_idx;
	}
	public String getCf_name() {
		return cf_name;
	}
	public void setCf_name(String cf_name) {
		this.cf_name = cf_name;
	}
	public String getCf_img() {
		return cf_img;
	}
	public void setCf_img(String cf_img) {
		this.cf_img = cf_img;
	}
	
}
