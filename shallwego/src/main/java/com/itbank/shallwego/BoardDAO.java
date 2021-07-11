package com.itbank.shallwego;

import java.util.HashMap;
import java.util.List;

public interface BoardDAO {

//	질문 등록하기 
	int insertQa(BoardDTO dto);
	
//	이벤트 등록하기 
	int insertEvent(EventDTO dto);
	
//	공지사항 등록하기 
	int insertNotice(NoticeDTO dto);

//  공지사항 불러오기 
	List<NoticeDTO> seletNotice();
	
//	이벤트 불러오기 
	List<EventDTO> selectEvent();

//	내 질문 리스트뽑기 
	List<BoardDTO> selectInquiryList(int i);
	
//	카테고리 유형 
	List<HashMap<String, String>> selectIc();
	
//	문의 유형 
	List<HashMap<String, String>> selectAccomme();
	
//	댓글 등록하기 
	int insertReply(HashMap<String, Object> map);
	
//  관리자 댓글 뽑기 
	List<ReplyDTO> selectReply();
	
//	공지사항 삭제하기 
	int deleteNotice(int notice_idx);	

	//	이벤트 삭제하기 
	int deleteEvent(int event_idx);	
	
//	1:1문의 삭제하기 
	int deleteInquiry(int inquiry_idx);
	
//	댓글 수정하기
	int modifyReply(ReplyDTO dto);
	
//	댓글 삭제하기 
	int deleteReply(ReplyDTO dto);

}
