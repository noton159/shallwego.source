package com.itbank.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.service.LoadService;
import com.itbank.service.PaymentService;
import com.itbank.shallwego.AccommDTO;
import com.itbank.shallwego.MemberDTO;
import com.itbank.shallwego.PaymentDTO;
import com.itbank.shallwego.ReviewDTO;
import com.itbank.shallwego.RoomDTO;

@Controller
@RequestMapping("/reservation")
public class ReservationController {
	
	@Autowired
	private PaymentService ps;
	@Autowired
	private LoadService ls;
	
	@GetMapping({"/reserComple", "/reserCancell", "/reserStaying", "/myReview"})
	public ModelAndView reservation(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("/reservation/reservation");
		String uri = request.getRequestURI().substring((request.getContextPath() + "/reservation/").length());
		HttpSession session = request.getSession();
		
		MemberDTO md = (MemberDTO) session.getAttribute("login");
		PaymentDTO pd = new PaymentDTO();
		pd.setCustomer_idx(md.getUser_idx());
		
		if(uri.equals("reserCancell")) {
			pd.setRefund(1);
		}else {
			pd.setRefund(0);
		}
		
		List<PaymentDTO> plist = ps.selectReservation(pd);
		List<ReviewDTO> rlist = ls.getMyReviewList(md.getUser_idx(), session);
		
		mav.addObject("reser", plist);
		mav.addObject("reviewList", rlist);
		mav.addObject("uri", uri);
		return mav;
	}
	
	@GetMapping("/booking/{payment_idx}")
	public ModelAndView booking(@PathVariable int payment_idx) {
		ModelAndView mav = new ModelAndView("reservation/booking");
		
		PaymentDTO pay_dto = ps.selectPay(payment_idx);
		RoomDTO room_dto = ls.selectOneRoom(pay_dto.getRoom_idx());
		AccommDTO acm_dto = ls.selectAccomm(room_dto.getAccomm_idx());
		
		mav.addObject("pay_dto", pay_dto);
		mav.addObject("acm_dto", acm_dto);
		mav.addObject("room_dto", room_dto);
		
		return mav;
	}
	
	@PostMapping("/booking/refund")
	public String refund(PaymentDTO pay_dto) {
		int result = ps.cancelBooking(pay_dto);
		return result == 1 ? "redirect:/reservation/reserCancell" : "redirect:/reservation/reserComple";
	}

}
