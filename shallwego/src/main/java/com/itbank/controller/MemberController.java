package com.itbank.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.service.MemberService;
import com.itbank.shallwego.CouponDTO;
import com.itbank.shallwego.MemberDTO;
import com.itbank.shallwego.TermsDTO;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberService mbs;
	@Autowired
	ServletContext application;

	// 쿠폰 개수 가져오기
	private void couponCount(HttpSession session) {
		MemberDTO user = (MemberDTO) session.getAttribute("login");
		int couponCount = mbs.getCouponCount(user.getUser_idx());
		session.setAttribute("couponCount", couponCount);
	}
	
	@GetMapping("/join")
	public void join() {}
	
	
//	사용중인 id 체크 
	@PostMapping(value="/checkId", produces="application/text;charset=utf8")
	@ResponseBody
	public String checkId(String userid) {
		boolean alreadyExist = mbs.searchId(userid);
		return alreadyExist ? "이미 사용중인 ID입니다." : "사용가능한 ID입니다!";
	}

//	회원가입 
	@PostMapping("/join")
	public String join(MemberDTO dto, String pnum1, String pnum2, String pnum3) {
		dto.setPhone_number(pnum1 + pnum2 + pnum3); 
		int row = mbs.insertMember(dto);
		String viewName = row == 1 ? "redirect:/member/login" : "redirect:/member/join";
		return viewName;
	}
	
	@GetMapping("/login")
	public void login() {}
	
//	계정체크 (id/password일치) 
	@PostMapping(value = "/userCheck", produces = "application/json;charset=utf8" )
	@ResponseBody
	public String userCheck(MemberDTO user) {
		boolean alreadyExist = mbs.searchUser(user);
		return alreadyExist ? "" : "ID/Password가 일치하지 않습니다.";
	}

//	로그인 
	@PostMapping("/login")
	public String login(MemberDTO user, HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		MemberDTO login = mbs.getMember(user);
		String firstName = login.getUsername().substring(1);
		String lastName = login.getUsername().substring(0,1);
		
		session.setAttribute("login", login);
		couponCount(session);
		session.setAttribute("firstName", firstName);
		session.setAttribute("lastName", lastName);
		
		String userid = user.getUserid();
		String storeid = request.getParameter("storeid");
		
		Cookie c = new Cookie("userid", userid);
		boolean flag = (storeid != null) && (session.getAttribute("login") != null);
		c.setMaxAge(flag ? 60 * 60 * 24 * 100 : 0);
		response.addCookie(c);
		
		String uri = (String)session.getAttribute("requestURI");
		uri = (uri == null) ? "/" : uri;
		
		String viewName = "redirect:" + uri;
		return viewName;
	}
	
	
//	비밀번호 찾기 시 DB에 있는 이메일인지 체크
	@PostMapping(value = "/emailCheck", produces = "application/json;charset=utf8")
	@ResponseBody
	public String checkEmail(String email, HttpSession session) {
		boolean alreadyExist = mbs.searchEmail(email);
		if(alreadyExist) {
			session.setAttribute("email", email);
		}
		return alreadyExist ? "" : "해당 이메일에 등록된 계정이 없습니다.";
	}

//	비밀번호 변경
	@PostMapping(value = "/pwChange", consumes = "application/text;charset=utf8")
	@ResponseBody
	public int pwChange(@RequestBody String userpw, HttpSession session) {
		String email = (String) session.getAttribute("email");
		int row = mbs.pwChange(userpw, email);
		session.removeAttribute("email");
		return row;
	}
	
//	화면전환 
	@GetMapping({"/memberInfo", "/coupon"})
	public ModelAndView memberInfo(HttpServletRequest request) {
		HttpSession session = request.getSession();	//세션을 요청한다. 
		String uri = request.getRequestURI().substring((request.getContextPath() + "/member/").length());
		MemberDTO dto = (MemberDTO) session.getAttribute("login");
		List<CouponDTO> list = mbs.getCouponList(dto.getUser_idx());
		session.setAttribute("couponList", list);
		ModelAndView mav = new ModelAndView("/member/memberInfo");
		mav.addObject("uri", uri);
		return mav;
	}
	
	@PostMapping("registCoupon")
	public String registCoupon(@RequestParam HashMap<String, Object> map, HttpSession session) {
		int row = mbs.registCoupon(map);
		couponCount(session);
		return "redirect:/member/coupon";
	}
	
//	로그아웃 
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();	// 세션을 지워버린다.
		return "redirect:/";
	}
	
	// produces : 생산 / consume : 소비 
	
	// 컨트롤러는 오직 경로를 지정해줄 뿐이고,
	// 디에오는 같을 수 있다.
	// 하나의 함수에 두개의 컨트롤러=[-[.가 존재 할 수 있다.
	
	// ************************************
	// [memberInfo]
	
	// 멤버 수정
	@RequestMapping(value = "/infoUpdate")
	public String updateMember(MemberDTO dto, HttpSession session) throws IllegalStateException, IOException {
		//MultipartFile file = request.getFile("uploadFile"); // 요청에서 파일을 꺼내서
		String webPath="/resources/" + dto.getUserid() +"/";
		String savePath = application.getRealPath(webPath);
		String name = mbs.uploadFile(dto.getPhoto(),savePath);				// 서비스에게 전달하고 결과를 저장
		dto.setProfile(name);
		
		int row = mbs.updateMember(dto);
		if(row == 1) {
			session.setAttribute("login", dto);
		}
		
		return "redirect:/member/memberInfo";
	}
	
	
}
