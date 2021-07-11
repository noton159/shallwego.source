package com.itbank.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.shallwego.BoardDAO;
import com.itbank.shallwego.BoardDTO;
import com.itbank.shallwego.EventDTO;
import com.itbank.shallwego.NoticeDTO;
import com.itbank.shallwego.ReplyDTO;

@Service
public class BoardService {

   @Autowired
   private BoardDAO dao;

   // session을 넘기지 않는이유
   // - session을 넘겨주면 내 로그인 정보 등 모든게 넘어가기 때문에,
   // 필요한것 (게시글)만 넘겨준다.
   
//   공지사항 등록 
   public boolean insertNotice(NoticeDTO dto) {
      int dbQa = dao.insertNotice(dto);
      return dbQa != 0;
   }

//   이벤트 등록 
   public boolean insertEvent(EventDTO dto) {
      int dbEvent = dao.insertEvent(dto);
      return dbEvent != 0;
   }

//    1:1문의사항 등록 
   public boolean insertQa(BoardDTO dto) {
      int dbQa = dao.insertQa(dto);
      return dbQa != 0;
   }

   public List<HashMap<String, String>> getCaregory() {
      return dao.selectIc();
   }

   public List<HashMap<String, String>> getAccommtype() {
      return dao.selectAccomme();
   }

//   댓글달기 
   public boolean insertReply(HashMap<String, Object> map) {
      int dbReply = dao.insertReply(map);
      return dbReply != 0;
   }

//  댓글 가져오기 
   public List<ReplyDTO> getReply() {
      return dao.selectReply();
   }

//   공지사항 가져오기 
   public List<NoticeDTO> getNotice() {
      List<NoticeDTO> list = dao.seletNotice();
      for(int i = 0; i < list.size(); i++) {
         if(list.get(i).getDeleted() == 1) {
            list.remove(i);
            i--;
         }
      }
      return list;
   }

//   이벤트 가져오기 
   public List<EventDTO> getEvent() {
      List<EventDTO> list = dao.selectEvent();
      for(int i = 0; i < list.size(); i++) {
         if(list.get(i).getDeleted() == 1) {
            list.remove(i);
            i--;
         }
      }
      return list;
   }

//   문의사항 가져오기 
   public List<BoardDTO> getInquiryList(int idx) {
      List<BoardDTO> list = dao.selectInquiryList(idx);
      for(int i = 0; i < list.size(); i++) {
         if(list.get(i).getDeleted() == 1) {
            list.remove(i);
            i--;
         }
      }
      return list;
   }

   // 공지사항 삭제하기
   public int deleteNotice(int notice_idx) {
      return dao.deleteNotice(notice_idx);
   }
   // 이벤트 삭제하기
   public int deleteEvent(int event_idx) {
      return dao.deleteEvent(event_idx);
   }
   // 1:1문의 삭제하기
   public int deleteInquiry(int inquiry_idx) {
      return dao.deleteInquiry(inquiry_idx);
   }

   public int modifyReply(ReplyDTO dto) {
	  return dao.modifyReply(dto);
   }

   public int deleteReply(ReplyDTO dto) {
	  return dao.deleteReply(dto);
   }


}