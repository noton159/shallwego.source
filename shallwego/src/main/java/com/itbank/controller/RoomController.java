package com.itbank.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.service.LoadService;
import com.itbank.shallwego.AccommDTO;
import com.itbank.shallwego.AccommFilterDTO;
import com.itbank.shallwego.ReviewDTO;
import com.itbank.shallwego.RoomDTO;

@Controller
@RequestMapping("/room")
public class RoomController {
	
	@Autowired
	private LoadService ls;
	
	// 룸디테일로 이동 
	@GetMapping("/room_detail")
	public void room_detail() {}
	
	// 숙소 상세 보기 
	@GetMapping("/room_detail/{accomm_idx}")
	public ModelAndView room(@PathVariable int accomm_idx) {
		ModelAndView mav = new ModelAndView("room/room_detail");
		
		AccommDTO dto = ls.selectAccomm(accomm_idx);
		List<RoomDTO> roomList = ls.selectRoom(accomm_idx);
		
		mav.addObject("titles", dto.getImg_result());
		mav.addObject("acc_dto", dto);
		mav.addObject("roomList", roomList);
		mav.addObject("accomm_idx", accomm_idx);
		
		return mav;
	}

	// 리뷰 불러오기
	@GetMapping("/review/{accomm_idx}")
	public ModelAndView review(@PathVariable int accomm_idx, HttpSession session, int filter) {
		ModelAndView mav = new ModelAndView("/room/review");
		List<ReviewDTO> list = ls.getReviewList(accomm_idx, session, filter);
		mav.addObject("reviewList", list);
		
		return mav;
	}
	
	// 인덱스룸 
	@RequestMapping("/indexRoom")
	public ModelAndView indexRoom(AccommFilterDTO dto, HttpSession session) {
		ModelAndView mav = new ModelAndView("room/indexRoom");
		
		List<AccommDTO> list = null;
		List<Integer> tList = new ArrayList<Integer>();
		
		// 1. 필터에 초기값 설정해주기 
		// (min_price = 0, max_price = 500000, avg = 0, tier = null)
	
		// - 최대가격이 0이면 500000원으로 세팅해준다.
//		if(dto.getMax_price() == 0) {
//			dto.setMax_price(500000);
//		}

		if(dto.getTiers() == null) {
			dto.setTiers(new boolean[6]);
			dto.setMax_filter_price(500000);
		}else {
			boolean[] tiers = dto.getTiers();
			boolean ck = false;
			
			if(tiers[tiers.length - 1]) {
				ck = false;
			}else {
				for(int i = 0; i <tiers.length; i++) {
					if(tiers[i]) {
						tList.add(i + 1);
						ck = true;
					}
				}
			}
			if(ck) {
				dto.settList(tList);
			}
		}
		
		list = ls.selectSearchList(dto, session);
		if(list == null) {
			mav.setViewName("redirect:/");
			return mav;
		}
		
		// 3. 열심히 만든애들 갖다 써야하니까 저장해주기.
		mav.addObject("dto", dto);
		mav.addObject("list", list);
		
		return mav;
	}
	
	

	
}



