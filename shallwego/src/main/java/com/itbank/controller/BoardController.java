package com.itbank.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.service.BoardService;
import com.itbank.shallwego.BoardDTO;
import com.itbank.shallwego.EventDTO;
import com.itbank.shallwego.MemberDTO;
import com.itbank.shallwego.NoticeDTO;
import com.itbank.shallwego.ReplyDTO;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private BoardService bs;

	@RequestMapping("/board")
	public ModelAndView boardList() {
		ModelAndView mav = new ModelAndView("/board/board");
		return mav;
	}
	
	// 내가 쓴 게시글이 있냐 없냐 (있으면 불러온다)
	// - 카테고리유형과 문의유형을 DB에서 불러와야한다.
	@GetMapping({ "/event", "/notice", "/inquiry" })
	public ModelAndView inquiry(HttpServletRequest request) {
		HttpSession session = request.getSession();
		ModelAndView mav = new ModelAndView("/board/board");
		// 세션 받아와보고 안되면 위에 방법 ㄱㄱ

		// 등록된 공지 가져오기
		List<NoticeDTO> noticeList = bs.getNotice();
		session.setAttribute("noticeList", noticeList);
		
		// 등록된 이벤트 가져오기
		List<EventDTO> eventList = bs.getEvent();
		session.setAttribute("eventList", eventList);

		// 1:1 문의 작성하기
		List<HashMap<String, String>> qaCategory = bs.getCaregory();
		List<HashMap<String, String>> accommType = bs.getAccommtype();
		session.setAttribute("qaCategory", qaCategory);
		session.setAttribute("accommType", accommType);

		// 내가 쓴 1:1문의사항 가져오기
		MemberDTO user = (MemberDTO) session.getAttribute("login");
		List<BoardDTO> inquiryList = bs.getInquiryList(user.getUser_idx());
		session.setAttribute("inquiryList", inquiryList);
		
		// 관리자 댓글 출력하기 
		List<ReplyDTO> replyList = bs.getReply();
		session.setAttribute("replyList", replyList);
		
		// 주소요청
		String uri = request.getRequestURI().substring((request.getContextPath() + "/board/").length());
		mav.addObject("uri", uri);
		return mav;
	}

	// 공지사항 등록 
	@PostMapping(
			value = "/writeNotice", 
			produces = "application/text;charset=utf8",
			consumes = "application/json;charset=utf8")
	@ResponseBody
	public String writeNotice(@RequestBody NoticeDTO dto) {
		boolean regist = bs.insertNotice(dto);
		return regist ? "게시글이 등록되었습니다." : "게시글 등록에 실패하였습니다.";
	}
	
	//	공지사항 삭제
	@PostMapping("/deleteNotice")
	public ModelAndView deleteNotice(int notice_idx) {
		ModelAndView mav = new ModelAndView("redirect:/board/notice");
		int row = bs.deleteNotice(notice_idx);
		return mav;
	}
	
	// 이벤트 등록 ( 내가 쓴 게시글이 등록에 성공했냐 못했냐 )
	@PostMapping(value = "/writeEvent", produces = "application/text;charset=utf8")
	@ResponseBody
	public String writeEvent(EventDTO dto) {
		boolean regist = bs.insertEvent(dto);
		return regist ? "이벤트가 등록되었습니다." : "이벤트 등록에 실패하였습니다.";
	}
	
	//	이벤트 삭제
	@PostMapping("/deleteEvent")
	public ModelAndView deleteEvent(int event_idx) {
		ModelAndView mav = new ModelAndView("redirect:/board/event");
		int row = bs.deleteEvent(event_idx);
		return mav;
	}
	

	// 1:1문의 등록 ( 내가 쓴 게시글이 등록에 성공했냐 못했냐 )
	// - 세션을 적어준다. 왜냐하면 내가 로그인한 정보가 세션에 담겨있기 떄문이다.
	@PostMapping(value = "/writeQa", produces = "application/text;charset=utf8")
	@ResponseBody
	public String writeQa(BoardDTO dto) {
		boolean regist = bs.insertQa(dto);
		return regist ? "게시글이 등록되었습니다." : "게시글 등록에 실패하였습니다.";
	}
	
	//	1:1문의 삭제
	@PostMapping("/deleteInquiry")
	public ModelAndView deleteInquiry(int inquiry_idx) {
		ModelAndView mav = new ModelAndView("redirect:/board/inquiry");
		int row = bs.deleteInquiry(inquiry_idx);
		return mav;
	}

	// 관리자 댓글 작성하기
	@PostMapping(value = "/qaReply", consumes = "application/json;charset=utf8")
	@ResponseBody
	public String qaReply(@RequestBody HashMap<String, Object> map) {
		boolean regist = bs.insertReply(map);
		return regist ? "" : "댓글을 입력해주세요.";
	}
	
	// 관리자 댓글 수정하기 
	@PostMapping(value = "/modifyReply", consumes = "application/json;charset=utf8")
	@ResponseBody
	public int modifyReply(@RequestBody ReplyDTO dto) {
		int row;
		row = bs.modifyReply(dto);
		return row;
	}
	
	// 관리자 댓글 삭제하기 
	@PostMapping(value = "/deleteReply", consumes = "application/json;charset=utf8")
	@ResponseBody
	public int deleteReply(@RequestBody ReplyDTO dto) {
		int row;
		row = bs.deleteReply(dto);
		return row;
	}
	
}
