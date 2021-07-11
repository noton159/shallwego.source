package com.itbank.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itbank.service.ReviewService;
import com.itbank.shallwego.ReviewDTO;

@Controller
public class ReviewController {

	@Autowired
	private ReviewService rs;
	
	// 리뷰 등록 
//	@PostMapping("/memberInfo")
//	public String review(ReviewDTO dto) {
//		ModelAndView mav = new ModelAndView("member/memberInfo");
//		int row = rs.insertReview(dto);
//		return "member/memberInfo";
//	}
	
	// 리뷰등록
	@PostMapping(value = "/reservation/writeReview", 
				consumes = "application/json;charset=utf8")
	@ResponseBody
	public int review(@RequestBody ReviewDTO dto) {
		int regist = rs.insertReview(dto);
		return regist;
	}
	
	
}
