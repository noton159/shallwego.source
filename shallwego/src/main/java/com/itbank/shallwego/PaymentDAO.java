package com.itbank.shallwego;

import java.util.List;

public interface PaymentDAO {

	int booking(PaymentDTO pay_dto);

	List<PaymentDTO> selectReservation(PaymentDTO pd);

	PaymentDTO selectPay(int room_idx);

	int cancelBooking(PaymentDTO pay_dto);

}
