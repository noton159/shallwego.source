package com.itbank.service;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.shallwego.AccommDTO;
import com.itbank.shallwego.AccommFilterDTO;
import com.itbank.shallwego.CfDTO;
import com.itbank.shallwego.LoadDAO;
import com.itbank.shallwego.ReviewDTO;
import com.itbank.shallwego.RoomDTO;

@Service
public class LoadService {

	@Autowired
	private LoadDAO dao;
	
//	검색어 찾은것들 삭제하기
	private String[] searchFilter(String[] drr, String[] destination) {
		int count = 0;
		for(int i = 0; i < drr.length; i++) {
			for(int j = 0; j < destination.length; j++) {
				if(destination[j].equals(drr[i])) {
					drr[i] = null;
				}
			}
		}
		for(int i = 0; i < drr.length; i++) {
			if(drr[i] != null) {
				count++;
			}
		}
		String[] arr = new String[count];
		for(int i = 0; i < arr.length; i++) {
			for(int j = 0; j < drr.length; j++) {
				if(drr[j] != null) {
					arr[i] = drr[j];
					i++;
					if(arr[count - 1] != null) {
						return arr;
					}
				}
			}
		}
		return arr;
	}

	// 숙소 불러오기
	public AccommDTO selectAccomm(int accomm_idx) {
		AccommDTO dto = dao.selectAccomm(accomm_idx);
		if (dto.getAccomm_type() == 1) {
			// home ㄴ> 받아온 dto 의 accomm_type이 1이면 (호텔이면)
			dto.setTier_number(dao.selectTier(accomm_idx));
//	         ㄴ> dto에 tier_number를 set한다. 
		}
		String[] tmp = dto.getAccomm_img().split(",");
		dto.setImg_result(tmp);
		return dto;
	}

	// 룸 불러오기
	public List<RoomDTO> selectRoom(int accomm_idx) {
	      List<RoomDTO> list = dao.selectRoom(accomm_idx);
	      for(RoomDTO room : list) {
//	      ㄴ> list 내부의 각각의 RoomDTO에 대하여
	         room.setImg_result(room.getRoom_img().split(","));
//	         ㄴ> 이미지 파일들이 ,로 구분되어 있는 room_img를 다시 ,로 split하여
//	            img_result 배열에 각각 삽입.
	      }
	      return list;
	   }

	public List<CfDTO> selectCfList(int accomm_idx) {
		return dao.selectCfList(accomm_idx);
	}

	public RoomDTO selectOneRoom(int room_idx) {
		return dao.selectOneRoom(room_idx);
	}
	
	public int payment(int room_idx) {
		return dao.payment(room_idx);
	}

//	리뷰 받아오기
	public List<ReviewDTO> getReviewList(int accomm_idx, HttpSession session, int filter) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("accomm_idx", accomm_idx);
		map.put("filter", filter);
		List<ReviewDTO> list = dao.selectReviewList(map);
		double kindness = 0, cleanliness = 0, transportation = 0, sum = 0;	// 왕별
		DecimalFormat df = new DecimalFormat("##.0");
		
		// 한사람의 리뷰 평균구하기 
		if(list.size() != 0) {
			for(int i = 0; i < list.size(); i++) {
				kindness += list.get(i).getKindness();
				cleanliness += list.get(i).getCleanliness();
				transportation += list.get(i).getTransportation();
			}
			
		} else {
			session.setAttribute("count", 0);
			return list;
		}
		// 막대기 평균 
		// 숙소 하나의 모든 리뷰 평균 평점 
		// ex) 파라다이스 호텔을 이용한 모든 평점을 합친 평균 평점
		kindness /= list.size();
		cleanliness /= list.size();
		transportation /= list.size();
		// 왕별 계산 
		sum = kindness + cleanliness + transportation;
		sum /= 3.0;
		
		// 친절도 별점
		session.setAttribute("kindness", df.format(kindness));	
		// 청결도  별점
		session.setAttribute("cleanliness", df.format(cleanliness));
		// 위치만족도 별점
		session.setAttribute("transportation", df.format(transportation));
		// 별점 평균
		session.setAttribute("sum", df.format(sum));
		// 후기 개수
		session.setAttribute("count", list.get(0).getCount());

		return list;
	}

	// 내 리뷰 리스트
	public List<ReviewDTO> getMyReviewList(int user_idx, HttpSession session) {
		List<ReviewDTO> list = dao.selectMyReviewList(user_idx);
		double kindness = 0, cleanliness = 0, transportation = 0, sum = 0;	// 왕별
		DecimalFormat df = new DecimalFormat("##.0");
		
		// 평균구하기 
		for(int i = 0; i < list.size(); i++) {
			kindness += list.get(i).getKindness();
			cleanliness += list.get(i).getCleanliness();
			transportation += list.get(i).getTransportation();
			// 숙소 하나의 한 사람의 평균 평점
			// ex) 하윤이가 쓴 파라다이스 호텔 평균 평점 
//			list.get(i).setAvg((list.get(i).getKindness() + list.get(i).getCleanliness() + list.get(i).getTransportation()) / 3);
		}
		// 막대기 평균 
		// 숙소 하나의 모든 리뷰 평균 평점 
		// ex) 파라다이스 호텔을 이용한 모든 평점을 합친 평균 평점
		kindness /= list.size();
		cleanliness /= list.size();
		transportation /= list.size();
		// 왕별 계산 
		sum = kindness + cleanliness + transportation;
		sum /= 3.0;
		
		session.setAttribute("kindness", df.format(kindness));	
		session.setAttribute("cleanliness", df.format(cleanliness));
		session.setAttribute("transportation", df.format(transportation));
		session.setAttribute("sum", df.format(sum));

		return list;
	}
	
	
	// index-room 왼쪽필터
	@SuppressWarnings("deprecation")
	public List<AccommDTO> selectSearchList(AccommFilterDTO dto, HttpSession session) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		if(dto.getStart() != "" && dto.getEnd() != "") {
//		형변환 하기 위해 불러옴
			String start = dto.getStart();
			String end = dto.getEnd();
			
//		일/월/년 으로 입력 받아서 형변환을 위해 월/일/년으로 변경
			String[] srr = start.toString().split("/");
			String[] err = end.toString().split("/");
			start = srr[1] + "/" + srr[0] + "/" + srr[2];
			end = err[1] + "/" + err[0] + "/" + err[2];
			
//		String -> Date 형변환
			Date startDate = new Date(start);
			Date endDate = new Date(end);
			
			String str = new SimpleDateFormat("yyyy-MM-dd").format(startDate);
			String ed = new SimpleDateFormat("yyyy-MM-dd").format(endDate);

			map.put("simpleStart", str);
			map.put("simpleEnd", ed);
		}
		
		
		map.put("person", dto.getPerson());
		session.setAttribute("map", map);
		
		if(dto.getDestination().equals("")) {
			List<AccommDTO> alist = dao.selectSearchList(dto);
			List<ReviewDTO> rlist = dao.selectAllReview();
			for(int i = 0; i < alist.size(); i++) {
				for(int j = 0; j < rlist.size(); j++) {
					if(rlist.get(j).getAccomm_idx() == alist.get(i).getAccomm_idx()) {
						alist.get(i).setCount(rlist.get(j).getCount());
						alist.get(i).setAccomm_avg(Math.round((rlist.get(j).getAccomm_avg() / rlist.get(j).getCount()) * 10) / 10.0);
						break;
					}else {
						alist.get(i).setCount(0);
					}
				}
			}
			for(AccommDTO acc_dto : alist) {
				if (acc_dto.getAccomm_type() == 1) {
					acc_dto.setTier_number(dao.selectTier(acc_dto.getAccomm_idx()));
				}
				acc_dto.setTitle_img(acc_dto.getAccomm_img().split(",")[0]);
				acc_dto.setImg_result(acc_dto.getAccomm_img().split(","));
			}
			
			return alist;
		}else {
			String destination = dto.getDestination();
			String[] drr = destination.split(" ");						// 스페이스바 기준으로 자름
			
			String[] region = dao.selectRegion(drr);					// 검색어에 지역이 있는지 확인
			drr = searchFilter(drr, region);
			if(region.length == 0) {									// 하나라도 없을 경우
				region = dao.selectRegion_sub(drr);						// 지역서브 테이블에 있는지 확인
				drr = searchFilter(drr, region);						// region_sub에 있는 친구를 가져왔으면
			}else if(region.length > 1){								// 검색어에 지역이 2개 이상이 입력되었을 경우		검색어ex) 서울 부산 호텔
				return null;
			}
			if(region != null && region.length != 0) {
				dto.setRegion(region[0]);
			}
			
			if(drr.length != 0) {
				String[] accomm_type_value = dao.selectAccomm_type(drr);				// 검색어에 숙소타입이 있는지 확인
				int accomm_type = 0;
				if(accomm_type_value.length == 1) {
					drr = searchFilter(drr, accomm_type_value);
					accomm_type = dao.selectAccomm_type_idx(accomm_type_value[0]);			// 숙소타입을 인덱스번호로 바꿈
				}else if(accomm_type_value.length > 1) {								// 숙소타입 테이블에 2개 이상이 입력되었을 경우		검색어ex) 부산 호텔 모텔
					return null;
				}
				dto.setAccomm_search_type(accomm_type);
			}
			
			String[] accomm_name = drr;												// 지역과 숙소타입을 걸러내고 나머지는 숙소 이름이다~
			if(accomm_name.length > 1) {
				return null;
			}else if (accomm_name != null && accomm_name.length != 0) {
				dto.setAccomm_search_name(accomm_name[0]);
			}
			
			List<AccommDTO> alist = dao.selectSearchList(dto);
			List<ReviewDTO> rlist = dao.selectAllReview();
			for(int i = 0; i < alist.size(); i++) {
				for(int j = 0; j < rlist.size(); j++) {
					if(rlist.get(j).getAccomm_idx() == alist.get(i).getAccomm_idx()) {
						alist.get(i).setCount(rlist.get(j).getCount());
						alist.get(i).setAccomm_avg(Math.round((rlist.get(j).getAccomm_avg() / rlist.get(j).getCount()) * 10) / 10.0);
						break;
					}else {
						alist.get(i).setCount(0);
					}
				}
			}
			for(AccommDTO acc_dto : alist) {
				if (acc_dto.getAccomm_type() == 1) {
					acc_dto.setTier_number(dao.selectTier(acc_dto.getAccomm_idx()));
				}
				acc_dto.setTitle_img(acc_dto.getAccomm_img().split(",")[0]);
				acc_dto.setImg_result(acc_dto.getAccomm_img().split(","));
			}
			
			return alist;
		}
	}



}
