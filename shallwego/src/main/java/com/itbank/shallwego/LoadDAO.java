package com.itbank.shallwego;

import java.util.HashMap;
import java.util.List;

public interface LoadDAO {

	AccommDTO selectAccomm(int accomm_idx);

	List<RoomDTO> selectRoom(int accomm_idx);

	CfDTO selectCf(int cf_idx);

	List<CfDTO> selectCfList(int accomm_idx);

	int selectTier(int accomm_idx);

	RoomDTO selectOneRoom(int room_idx);

	List<AccommDTO> selectMinPrice();

	String[] selectRegion(String[] drr);

	String[] selectRegion_sub(String[] drr);

	String[] selectAccomm_type(String[] drr);

	int selectAccomm_type_idx(String accomm_type_value);

	List<AccommDTO> selectSearchList(HashMap<String, Object> map);

	List<ReviewDTO> selectReviewList(HashMap<String, Integer> map);
	
	int payment(int room_idx);

	List<ReviewDTO> selectMyReviewList(int user_idx);

	List<ReviewDTO> ReviewFilterList(int filter);

	List<AccommDTO> selectSearchList(AccommFilterDTO dto);

	List<ReviewDTO> selectAllReview();


}
