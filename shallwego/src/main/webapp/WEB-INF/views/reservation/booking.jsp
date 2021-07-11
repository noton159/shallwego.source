<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../source.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link href="${cpath }/resources/css/reservation/booking.css"
	rel="stylesheet" type="text/css">
<link href="${cpath }/resources/css/reservation/cancel_policy.css"
	rel="stylesheet" type="text/css">

<script src="${cpath }/resources/js/member/modal.js"></script>
<%@ include file="../header.jsp"%>

<div class="wrap-in back-gray">

	<section>
		<div class="section-in2">

			<!-- 취소 / 환불 규정 -->
			<div class="cancel_daddy1">
				<div class="cancel_mom">
					<div class="cancel_div">
						<div class="cancel_div_top">
							<div class="cancel_title">취소 / 환불 규정</div>
							<div class="cancel_x_button">
								<button class="cancel_x1"></button>
							</div>
						</div>
						<div class="cancel_div_body">
							<div class="cancel_text">
								취소/환불규정<br> <br> * 숙소 사정에 의해 취소 발생 시 100% 환불이 가능합니다.<br>
								<br> * 예약 상품 별 숙소 정보에 기재된 취소, 환불 규정을 반드시 확인 후 
								이용해주시기 바랍니다.<br> <br> * 예약 이후의 취소는 취소/환불
								규정에 의거하여 적용됩니다.<br> <br> * 취소, 변경 불가 상품은 규정과 상관없이 취소,
								변경이 불가합니다.<br> <br> * 당일 결제를 포함한 체크인 당일 취소는 취소, 변경이
								불가합니다.<br> <br> * 예약 취소가 불가능한 시간에 고객 사정에 의한 취소 시,
								(주)떠나볼까가 제공하는 모든 혜택에서 제외될 수 있으며, 본 예약 시 사용한 쿠폰은 소멸
								됩니다.<br> <br> * 단! 숙소의 객실 정보가 수시로 변경될 수
								있으며 이로 인한 불이익은 &nbsp;&nbsp;(주)떠나볼까가 책임지지 않습니다.

							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- 취소버튼 모달 -->
			<div class="cancel_daddy2">
				<div class="cancel_mom">
					<div class="cancel_div">
						<div class="cancel_div_top">
							<div class="cancel_title">CVC 번호</div>
							<div class="cancel_x_button">
								<button class="cancel_x2"></button>
							</div>
						</div>
						<div class="cancel_div_body">
							<div class="cancel_text">
								<form method="POST"
									action="${cpath }/reservation/booking/refund">
									<input style="float: left; width: 30%; height: 30px;"
										type="password" name="cvc_number" /> <input type="hidden"
										name="payment_idx" value="${pay_dto.payment_idx }" /> <input
										style="float: right;" class="btn04" type="submit" value="전송" />
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>

			<ul class="left_ul">
				<li>
					<section class="first1_section">
						<section class="second_section">
							<div class="top_fsd">
								<h2>예약 완료</h2>
							</div>
							<div class="booking1_div">
								<div class="booking_space1">
									<h4 class="gray-f">예약번호</h4>
								</div>
								<div class="booking_space2">${pay_dto.payment_idx }</div>
							</div>
							<div class="booking1_div">
								<div class="booking_space1">
									<h4 class="gray-f">예약일</h4>
								</div>
								<div class="booking_space2">
									<fmt:formatDate value="${pay_dto.payment_date }"
										pattern="yyyy-MM-dd" />
									(서울 시간)
								</div>
							</div>
							<!-- <div class="booking1_div">
                                <div>
                                    <h5>숙박시설 예약 확인 번호는 바우처의 Booking ID를 통해 확인하능합니다</h5>
                                </div>
                            </div>
                            <div>
                                <div class="booking2_div">
                                    <div class="btn_cs1"><button class="btn04">영수증</button></div>
                                    <div class="btn_cs2"><button class="btn04">바우처</button></div>
                                </div>
                            </div> -->
						</section>
					</section>
				</li>
				<li>
					<section class="first2_section">
						<section class="second_section">
							<div class="top_fsd">
								<h2>예약자 정보</h2>
							</div>
							<div class="booking1_div">
								<div class="booking_space1">
									<h4 class="gray-f">이메일주소</h4>
								</div>
								<div class="booking_space2">${login.email }</div>
							</div>
							<div class="booking1_div">
								<div class="booking_space1">
									<h4 class="gray-f">휴대폰</h4>
								</div>
								<div class="booking_space2">${login.phone_number }</div>
							</div>
						</section>
					</section>
				</li>
				<li>
					<section class="first3_section">
						<section class="second_section">
							<div class="top_fsd">
								<h2>${acm_dto.accomm_name }</h2>
							</div>
							<div class="booking1_div">
								<div class="booking_space1">
									<h4 class="gray-f">일정</h4>
								</div>
								<div class="booking_space2">
									<span class="booking_span1">${pay_dto.start }</span> <input
										type="hidden" class="start" value="${pay_dto.start }">
									<input type="hidden" class="end" value="${pay_dto.end }">

									<!-- 박 -->
									<span class="booking_span2 day"></span> <span
										class="booking_span3">${pay_dto.end }</span>
								</div>
							</div>
							<div class="booking1_div">
								<div class="booking_space1">
									<h4 class="gray-f">투숙객 이름</h4>
								</div>
								<div class="booking_space2">${login.username }</div>
							</div>
							<c:if test="${room_dto.room_type == 1 }">
								<div class="booking1_div">
									<div class="booking_space1">
										<h4 class="gray-f">체크인</h4>
									</div>
									<div class="booking_space2">${pay_dto.start }</div>
								</div>
								<div class="booking1_div">
									<div class="booking_space1">
										<h4 class="gray-f">체크아웃</h4>
									</div>
									<div class="booking_space2">${pay_dto.end }</div>
								</div>
							</c:if>
							<c:if test="${room_dto.room_type == 2 }">
								<div class="booking1_div">
									<div class="booking_space1">
										<h4 class="gray-f">대실</h4>
									</div>
									<div class="booking_space2">${room_dto.room_hire_time }&nbsp;시간</div>
								</div>
							</c:if>
						</section>
					</section>
				</li>
				<li>
					<section class="first4_section">
						<section class="second_section">
							<div class="top_fsd">
								<div class="">
									<h2>취소 및 환불</h2>
								</div>
								<div class="cancel_policy cl_modal1">취소 / 환불 정책</div>
								<input type="hidden" class="price" value="${room_dto.cost_price }">
							</div>
							<div class="booking_cancel1">
								<div class="booking_cancel2">
									<div class="booking_ad1"><span class="freeCancel"></span>까지 무료취소 가능합니다</div>
									<div class="booking_ad2">
										<span class="paidCancel"></span> 이후 취소시
										<span class="cost_price"></span>
										&nbsp;원이 부과 됩니다
									</div>
								</div>
							</div>
							<div class="booking1_div">
								<div class="gray-f">
									<h5>취소 및 환불 수수료는 정상 판매가 기준 수수료이며, 할인 결제 시 결제된 최종 금액 기준으로
										적용됩니다</h5>
								</div>
							</div>
							<div class="booking2_div">
								<div>
									<div class="btn_cs3">
										<!-- 예약취소 이벤트 버튼 -->
										<button class="btn04 pink-f cl_modal2">예약 취소</button>
									</div>
								</div>
							</div>
						</section>
					</section>
				</li>
				<li>
					<section class="first5_section">
						<section class="second_section">
							<div class="top_fsd">
								<h2>체크인 지침</h2>
							</div>
							<div>이 숙박 시설은 지정된 시간 외에는 체크인할 수 없습니다. 도착 시 프런트 데스크 직원이
								도와드립니다.</div>
						</section>
					</section>
				</li>

				<li>
					<section class="first6_section">
						<section class="second_section">
							<div class="top_fsd">
								<h2>중요 사항</h2>
							</div>
							<div>추가 인원에 대한 요금이 부과될 수 있으며, 이는 숙박 시설 정책에 따라 다릅니다. 체크인 시
								부대 비용 발생에 대비해 정부에서 발급한 사진이 부착된 신분증과 신용카드, 직불카드 또는 현금으로 보증 금이 필요할
								수 있습니다. 특별 요청 사항은 체크인 시 이용 상황에 따라 제공 여부가 달라질 수 있으며 추가 요금이 부과될 수
								있습니다. 또한, 반 드시 보장되지는 않습니다. 이 숙박 시설에서 사용 가능한 결제 수단은 신용카드입니다.</div>
						</section>
					</section>
				</li>

			</ul>

			<ul class="right_ul">
				<li>
					<section class="third_section">
						<div class="top_fsd2">
							<h2>${room_dto.room_name }</h2>
						</div>
						<div class="booking1_div">
							<div class="booking_space3">
								<h4 class="gray-f">총 투숙객</h4>
							</div>
							<div class="booking_space4">${pay_dto.people }인</div>
						</div>
						<div class="booking1_div">
							<div class="booking_space3">
								<h4 class="gray-f">객실 종류</h4>
							</div>
							<div class="booking_space4">${room_dto.room_name }</div>
						</div>

					</section>
				</li>
				<li>
					<section class="third_section">
						<div class="top_fsd">
							<h2>예약 문의 안내</h2>
						</div>
						<div class="booking_ad3 gray-f">부대 시설 및 픽업 서비스 관련 문의는 변동사항이
							많아 해당 시설에 직접 문의해주셔야 합니다</div>
						<div class="booking1_div">
							<div class="booking_space3">
								<h4 class="gray-f">숙소 주소</h4>
							</div>
							<div class="booking_space4">${acm_dto.accomm_address }</div>
						</div>
					</section>
				</li>
				<li>
					<section class="third_section">
						<div class="top_fsd">
							<h2>결제 및 적립</h2>
						</div>
						<div class="top_fsd4">
							<div class="booking_space5">
								<h4 class="gray-f">결제 방법</h4>
							</div>
							<div class="booking_space6">신용카드</div>
						</div>
						<div class="top_fsd4">
							<div class="booking_space5">
								<h4 class="gray-f">예약 금액</h4>
							</div>
							<div class="booking_space6">
								<input type="hidden" class="payment_price" value="${pay_dto.payment_price }">
								<span class="cost_price"></span>
								&nbsp;원
							</div>
						</div>
						<div class="booking_space7 gray-f">
							<h5>세금 및 봉사료 포함</h5>
						</div>
						<div class="top_fsd3">
							<div class="">
								<h4 class="gray-f">총 결제액</h4>
							</div>
							<div class="">
								<h2>
									<span class="cost_price"></span>
									&nbsp;원
								</h2>
							</div>
						</div>
					</section>
				</li>
			</ul>

		</div>
	</section>
</div>
</div>


<script>

//	박 계산
	const start = $('.start').val();
	const end = $('.end').val();
	const day = $('.day');

	const startDate = new Date(start);
	const endDate = new Date(end);
	day.text(((endDate - startDate) / 1000 / 60 / 60 / 24) + '박');
	
//	무료 및 유료 환불 계산
	const freeCancel = $('.freeCancel');
	const paidCancel = $('.paidCancel');
	
	var changeDate = startDate;
	
	changeDate.setDate(changeDate.getDate() - 5);
	freeCancel.text(changeDate.getFullYear() + '-' + (changeDate.getMonth() + 1)+ '-' + changeDate.getDate());
	
	changeDate.setDate(changeDate.getDate() + 4);
	paidCancel.text(changeDate.getFullYear() + '-' + (changeDate.getMonth() + 1)+ '-' + changeDate.getDate());
	
//	가격 * 박 계산
	var price = $('.payment_price').val();
	const cost_price = $('.cost_price');

	price = comma(price);
	cost_price.text(price);
	
	function comma(price){
		price = price + "";
		var point = price.length % 3 ;
		var len = price.length;
		var str = price.substring(0, point);

		while (point < len) {
		   if (str != "") str += ",";
		   str += price.substring(point, point + 3);
		   point += 3;
		}
		return str;
	}
	
</script>


</body>
</html>