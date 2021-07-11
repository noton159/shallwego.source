package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.shallwego.CouponDTO;
import com.itbank.shallwego.MemberDAO;
import com.itbank.shallwego.PaymentDAO;
import com.itbank.shallwego.PaymentDTO;

@Service
public class PaymentService {

	@Autowired
	private PaymentDAO pdao;
	@Autowired
	private MemberDAO mdao;
	
	public int booking(PaymentDTO pay_dto) {
		CouponDTO dto = new CouponDTO();
		dto.setCoupon_idx(pay_dto.getCoupon_idx());
		dto.setCustomer_idx(pay_dto.getCustomer_idx());
		mdao.updateUseCoupon(dto);
		return pdao.booking(pay_dto);
	}

	public List<PaymentDTO> selectReservation(PaymentDTO pd) {
		return pdao.selectReservation(pd);
	}

	public PaymentDTO selectPay(int room_idx) {
		return pdao.selectPay(room_idx);
	}

	public int cancelBooking(PaymentDTO pay_dto) {
		return pdao.cancelBooking(pay_dto);
	}

}
