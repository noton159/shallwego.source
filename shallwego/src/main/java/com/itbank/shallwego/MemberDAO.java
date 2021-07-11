package com.itbank.shallwego;

import java.util.HashMap;
import java.util.List;

public interface MemberDAO {

	// 유저 아이디 받아오기
	String selectUserid(String userid);

	// 유저 추가하기 (회원가입)
	int insertMember(MemberDTO dto);

	// 유저 불러오기 
	MemberDTO selectMember(MemberDTO user);

	// 이메일 찾기
	String selectEmail(String email);

	// 비밀번호 변경 
	int updatePw(MemberDTO dto);

	// 유저 정보수정하기
	int updateMember(MemberDTO dto);

	// 약관 가져오기 ㅋㅋ
	List<TermsDTO> selectTermsList();


	// 쿠폰 만들기
	int updateCoupon(HashMap<String, Object> map);
	
	// 쿠폰 갯수 세기 
	int selectCouponCount(int user_idx);	

	// 쿠폰 불러오기
	List<CouponDTO> selectCouponList(int user_idx);

	// 미등록 쿠폰 가져오기
	List<CouponDTO> selectUnknownCoupon(int coupon_details_idx);
	
	// 생일 쿠폰 
	Integer selectBirthCoupon(int customer_idx);

	void updateUseCoupon(CouponDTO dto);
}
