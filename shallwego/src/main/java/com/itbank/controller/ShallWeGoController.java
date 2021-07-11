package com.itbank.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.itbank.service.AdminService;
import com.itbank.service.LoadService;
import com.itbank.service.MemberService;
import com.itbank.service.PaymentService;
import com.itbank.shallwego.AccommDTO;
import com.itbank.shallwego.CouponDTO;
import com.itbank.shallwego.MemberDTO;
import com.itbank.shallwego.PaymentDTO;
import com.itbank.shallwego.RoomDTO;
import com.itbank.shallwego.SalesDTO;

@Controller
public class ShallWeGoController {
   
   @Autowired
   private AdminService as;
   @Autowired
   private LoadService ls;
   @Autowired
   private PaymentService ps;
   @Autowired
   private MemberService ms;
   
   @RequestMapping("/") 
   public String index() {
      return "index";
   }
   
   @GetMapping("/admin/accomm")
   public String accomm() {
      return "admin/accomm";
   }
   
   @GetMapping("/admin/room_type")
   public String room_type() {
      return "admin/room_type";
   }
   
   @GetMapping("/admin/sales")
   public String sales() {
	   return "admin/sales";
   }
   
   @GetMapping("/reservation/payment/{room_idx}")
   public ModelAndView payment(@PathVariable int room_idx, HttpSession session) {
	   ModelAndView mav = new ModelAndView("reservation/payment");
	   
	   MemberDTO member_dto = (MemberDTO) session.getAttribute("login");
	   List<CouponDTO> list = ms.getCouponList(member_dto.getUser_idx());
	   RoomDTO room_dto = ls.selectOneRoom(room_idx);
	   AccommDTO acm_dto = ls.selectAccomm(room_dto.getAccomm_idx());
//	   세금 및 봉사료랑 객실요금
	   int cal = room_dto.getCost_price();
	   int tax = cal / 10;
	   int texx = cal - tax;
	   
	   mav.addObject("list", list);
	   mav.addObject("tax", tax);
	   mav.addObject("texx", texx);
	   mav.addObject("room_dto", room_dto);
	   mav.addObject("acm_dto", acm_dto);
	   
	   return mav;
   }
   
   @PostMapping("/reservation/payment")
   public ModelAndView paymented(PaymentDTO pay_dto) {
	   ModelAndView mav = new ModelAndView();
	   
	   int result = ps.booking(pay_dto);
	   
	   RoomDTO room_dto = ls.selectOneRoom(pay_dto.getRoom_idx());
	   AccommDTO acm_dto = ls.selectAccomm(room_dto.getAccomm_idx());
	   
	   mav.addObject("acm_dto", acm_dto);
	   mav.addObject("room_dto", room_dto);
	   mav.addObject("pay_dto", pay_dto);
	   
	   // 예약확인칸으로 이동시키는 함수
	   RedirectView red = new RedirectView();
	   red.setUrl("reserComple");
	   // 파라미터(값들을)url에서 숨길 수 있다.
	   red.setExposeModelAttributes(false);
	   mav.setView(red);

	   return mav;
   }
   
   @PostMapping("/admin/accomm")
   public String accomm(AccommDTO input, HttpSession session) {
      
      // 여기나 room에서 숙소의 idx를 받아와서 room_type.jsp의 number input에 넣으면 편할듯
      int row = as.insertAccomm(input);
      int row2 = 1;
      
      int idx = as.selectOne(input.getAccomm_name());
      
      if(input.getAccomm_type() == 1) {
         AccommDTO tmp = new AccommDTO();
         tmp.setAccomm_idx(idx);
         tmp.setTier_number(input.getTier_number());
         row2 = as.insertTier(tmp);
      }
      
      session.setAttribute("idx", idx);
      return row != 0 && row2 != 0 ? "redirect:/admin/room_type" : "";
   }
   
   @PostMapping("/admin/room_type")
   public String room(RoomDTO user) {
	  
      int row = as.insertRoom(user);
      
      return row != 0 ? "redirect:/admin/room_type" : "admin/accomm";
   }
   
   @PostMapping("/admin/sales")
   public String sales(SalesDTO user) {
      int row = as.insertSales(user);
      
      return row != 0 ? "index" : "admin/sales";
   }
   
}
