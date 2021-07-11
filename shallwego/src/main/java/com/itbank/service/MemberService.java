package com.itbank.service;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.itbank.shallwego.CouponDTO;
import com.itbank.shallwego.Hash;
import com.itbank.shallwego.MemberDAO;
import com.itbank.shallwego.MemberDTO;
import com.itbank.shallwego.TermsDTO;

@Service
public class MemberService {

	@Autowired
	private MemberDAO dao;

	//	중복된 아이디 체크 
	public boolean searchId(String userid) {
		String dbId = dao.selectUserid(userid);
		return dbId != null;
	}
	
	//	회원가입 
	public int insertMember(MemberDTO dto) {
		dto.setUserpw(Hash.getHash(dto.getUserpw()));
		int row = dao.insertMember(dto);
		if(row == 1) {
			List<CouponDTO> clist = dao.selectUnknownCoupon(2);
			dto = dao.selectMember(dto);
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("customer_idx", dto.getUser_idx());
			map.put("coupon_serial_number", clist.get(0));
			row = dao.updateCoupon(map);
		}
		return row;
	}

	//	계정체크 (id/password일치)
	public boolean searchUser(MemberDTO user) {
		user.setUserpw(Hash.getHash(user.getUserpw()));
		MemberDTO dbUser = dao.selectMember(user);
		return dbUser != null; //true
	}

	//	로그인 
	@SuppressWarnings("deprecation")
	public MemberDTO getMember(MemberDTO user) {
		// 해쉬처리하기 
		user.setUserpw(Hash.getHash(user.getUserpw()));
		user = dao.selectMember(user);
		// 1. 01072049432 받았다.
		// 2. 3씩 자른다. 010		7204	9432
		// 3. 잘라서 이름 정해준다 
		// 4. pnum1 + "-" + pum2 + "-" + pnum3 
		String[] pnumArr = user.getPhone_number().split("-");
		if(pnumArr.length == 1) {
			String pnum1 = user.getPhone_number().substring(0,3) + "-";		// 010
			String pnum2 = user.getPhone_number().substring(3,7) + "-"; 	// 7204 
			String pnum3 = user.getPhone_number().substring(7,11);			// 9432
			// 결과물 : 010 - 7204 - 9432 X! / 010-7204-9432 O
			user.setPhone_number(pnum1 + pnum2 + pnum3);
		}
		if(user != null) {
			String[] birthArr = user.getBirth().split("/");
			if(birthArr.length == 3) {
				Date birth = new Date(user.getBirth());
				Date sysdate = new Date();
				
				if(sysdate.getMonth() == birth.getMonth() && sysdate.getDate() == birth.getDate()) {
					Integer row = dao.selectBirthCoupon(user.getUser_idx());
					row = row == null ? 0 : user.getUser_idx();
					if(row != user.getUser_idx()) {
						List<CouponDTO> clist = dao.selectUnknownCoupon(1);
						HashMap<String, Object> map = new HashMap<String, Object>();
						map.put("customer_idx", user.getUser_idx());
						map.put("coupon_serial_number", clist.get(0));
						row = dao.updateCoupon(map);
					}
				}				
			}
		}
		return user;
	}
	
	// 계정 이메일 체크 
	public boolean searchEmail(String email) {
		String dbEmail = dao.selectEmail(email);
		return dbEmail != null;
	}

	// 비밀번호 변경
	public int pwChange(String userpw, String email) {
		String[] arr = userpw.toString().split("\"");
		userpw = arr[1];
		MemberDTO dto = new MemberDTO();
		dto.setUserpw(Hash.getHash(userpw));
		dto.setEmail(email);
		return dao.updatePw(dto);
	}

	// 쿠폰등록
	public int registCoupon(HashMap<String, Object> map) {
		map.put("coupon_serial_number", ((String) map.get("coupon_serial_number")).toUpperCase());
		return dao.updateCoupon(map);
	}
	
	// 쿠폰갯수 가져오기
	public int getCouponCount(int user_idx) {
		return dao.selectCouponCount(user_idx);
	}
	
	// 쿠폰정보가져오기
	public List<CouponDTO> getCouponList(int user_idx) {
		List<CouponDTO> list = dao.selectCouponList(user_idx);
		return list;
	}
	
	// 멤버 수정 
	public int updateMember(MemberDTO dto) {
		return dao.updateMember(dto);
	}
	
	//private final String uploadPath = "D:\\upload";
	private String[] extArr = {"jpg", "png", "jpeg", "bmp", "gif"};
	

	
	private boolean isImgFile(String fileName) {		// 파일 이름을 전달받아서	
		for(String ext: extArr) {						// 등록된 확장자 중에서
			if(fileName.toLowerCase().endsWith(ext)) {	// 파일이름(소문자처리)이 확장자로 끝나면
				return true;							// 이미지 파일이다
			}
			
		}
		return false;								// 모든 확장자에 대해 해당이 없으면 아니다
	}

//	public List<String> getFileList() {
//		File dir = new File(uploadPath);
//		ArrayList<String> fileList = new ArrayList<String>(Arrays.asList(dir.list()));
//		
//		for(int i = 0; i < fileList.size(); i++) {
//			String fileName = fileList.get(i);
//			if(isImgFile(fileName) == false) {
//				fileList.remove(i);
//			}
//		}
//		
//		return fileList;
//	}

	public String uploadFile(MultipartFile file,String webPath) throws IllegalStateException, IOException {
		File dir = new File(webPath);	// 업로드 경로가 
		if(dir.exists() == false) {	// 존재하지 않으면
			dir.mkdirs();					// 폴더를 새로 만들자
		}
		
		
		File target = new File(webPath, file.getOriginalFilename());
		if(isImgFile(file.getOriginalFilename())) {
			file.transferTo(target);
		}
		
		return file.getOriginalFilename();
	}

//	약관 가져오기 
	public List<TermsDTO> getTermsList() {
		return dao.selectTermsList();
	}


}
