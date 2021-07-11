<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../source.jsp" %>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>

<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta charset="UTF-8">     -->

<!-- <title>떠나볼까?</title> -->

<link href="${cpath }/resources/css/reservation/payment.css" rel="stylesheet" type="text/css">
<link href="${cpath }/resources/css/member/agree.css" rel="stylesheet" type="text/css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">

<script src="${cpath }/resources/js/jquery-3.3.1.js"></script>
<script src="${cpath }/resources/js/jquery.transit.min.js"></script>

<script src="${cpath }/resources/js/member/modal.js"></script>
<%@ include file="../header.jsp" %>
<!-- <div class="wrap"> -->
   <div class="wrap-in back-gray">
      <section>
        <div class="section-in2">
      <!-- modal -->
      <!-- 광고성정보수신동의 -->
      <div class="agree_daddy4">
         <div class="agree_mom4">
            <div>
               <div class="agree_div">
                  <div class="agree_div_top">
                     <div class="agree_title">광고성정보수신동의</div>
                     <div class="agree_x_button">
                        <button class="agree_x4"></button>
                     </div>
                  </div>
                  <div class="agree_div_body">
                     <table class="agree_table">
                        <tbody class="agree_tbody">
                        	<tr rowspan="1" class="agree_tr">
                              <th colspan="1" class="agree_th">개인정보 수집 및 이용목적</th>
                              <td colspan="1" class="agree_td">떠나볼까의 서비스, 이벤트, 업데이트에 대한
                                 광고성 정보 전송</td>
                           </tr>
                           <tr rowspan="1" class="agree_tr">
                              <th colspan="1" class="agree_th">수집 항목</th>
                              <td colspan="1" class="agree_td">휴대 전화 번호, 이메일 주소</td>
                           </tr>
                           <tr rowspan="1" class="agree_tr">
                              <th colspan="1" class="agree_th">개인 정보 보유 및 이용기간</th>
                              <td colspan="1" class="agree_td">회원정보 편집에서 동의를 해제할 수 있으며
                                 해제시 폐기 (단, 관계 법령의 규정에 의하여 보존할 필요가 있는 경우 관련 법령에 따라 보관)</td>
                           </tr>
                        </tbody>
                     </table>
                  </div>
               </div>
            </div>
         </div>
      </div>
      
      <div class="agree_daddy5">
         <div class="agree_mom5">
            <div>
               <div class="agree_div">
                  <div class="agree_div_top">
                     <div class="agree_title">쿠폰 목록</div>
                     <div class="agree_x_button">
                        <button class="agree_x5"></button>
                     </div>
                  </div>
                  <div class="agree_div_body">
                     <table class="agree_table">
                        <tbody class="agree_tbody">
                        	<c:forEach var="list" items="${list }">
                        		<input type="hidden" class="coupon_idx" value="${list.coupon_idx }">
                        		<input type="hidden" class="coupon_name" value="${list.coupon_name }">
                           		<input type="hidden" class="coupon_constraint" value="${list.coupon_constraint }">
                           		<input type="hidden" class="coupon_price" value="${list.coupon_price }">
                           		<tr rowspan="1" class="agree_tr">
                             		<th colspan="1" class="agree_th">${list.coupon_name }</th>
                              		<td colspan="1" class="agree_td">${list.coupon_price } 원</td>
                           	  		<td colspan="1" class="agree_td"><input class="coupon_apply" type="button" value="사용"></td>
                           		</tr>
                        	</c:forEach>
                        </tbody>
                     </table>
                  </div>
               </div>
            </div>
         </div>
      </div>
      
      

      <form method="POST" id="submitForm" action="${cpath }/reservation/payment">
      	<input type="hidden" name="coupon_idx" id="coupon_idx" value="0">
      <ul class="left_ul">
         <!-- 첫번째 li -->
         <li>
            <section class="first1_section">
               <section class="second_section">
                  <div class="top_fsd">
                     <h2>예약자 정보</h2>
                  </div>

                  <div class="fsd">
                     <span class="stars">*</span>
                     <h4>이메일</h4>
                     <div class="ssd">
                        <div class="long_div">
                           <%-- <input class="box" type="text" name="email" value="${login.email }" placeholder="E-Mail"> --%>
                           <div class="box">${login.email }</div>
                        </div>
                     </div>
                  </div>

                  <div class="fsd">
                     <span class="stars">*</span>
                     <h4>국문이름</h4>
                     <div class="def_div">
                        <div class="short1_div">
<%--                            <input class="short_box" type="text" name="ko_lastName" value="${lastName }" placeholder="국문 성"> --%>
                           <div class="short_box">${lastName }</div>
                        </div>

                        <div class="short2_div">
<%--                            <input class="short_box" type="text" name="ko_firstName" value="${firstName }" placeholder="국문 이름"> --%>
                           <div class="short_box">${firstName }</div>
                        </div>
                     </div>
                  </div>

                  <div class="fsd">
                     <span class="stars">*</span>
                     <h4>휴대폰</h4>
                     <div class="ssd">
                        <div class="long_div">
                           <div class="box">${login.phone_number }</div>
                           <%-- <input class="box" type="text" name="phoneNumber" value="${login.phone_number }" placeholder="휴대폰 번호를 '-'없이 기입해주세요"> --%>
                        </div>
                     </div>
                  </div>
               </section>
            </section>
         </li>

         <!-- 두번째 li -->
         <li>
            <section class="first2_section">
               <section class="second_section">
                  <div class="top_fsd">
                     <h3>투숙객 정보</h3>
                     <lable type="box"></lable>
                  </div>

                  <div>
                     <div class="fsd">
                        <span class="stars">*</span>
                        <h4>국문이름</h4>
                        <div class="def_div">
                           <div class="short1_div">
                              <input class="short_box" type="text" name="eng_lastName" value="${lastName }" placeholder="국문 성">
                           </div>
                           <div class="short2_div">
                              <input class="short_box" type="text" name="eng_firstName" value="${firstName }" placeholder="국문 이름">
                           </div>
                        </div>
                     </div>
                  </div>

                  <div>
                     <div class="fsd">
                        <span class="stars">*</span>
                        <h4>객실타입</h4>
                        <div class="ssd2">
                           <div class="long_div">${room_dto.room_name }</div>
                        </div>
                     </div>
                  </div>
               </section>
            </section>
         </li>

         <!-- 세번째 li -->
         <li>
            <section class="second_section">
               <div class="discount_info">
                  <h3>할인 정보</h3>
               </div>

               <ul class="coupon">
                  <li class="coupon_info">
                     <p class="coupon_p">쿠폰</p>
                     <div class="coupon_div ag_modal5">
                        <!-- <p>사용하기</p>
                        <i>>></i> -->
                        사용하기
                     </div>

                  </li>

                  <li class="coupon_info">
                     <p class="coupon_p">사용하실 쿠폰</p>
                     <div class="coupon_check"></div>
                  </li>
               </ul>
            </section>
         </li>
         <li>
            <section class="second_section">
               <div class="payment_how">
                  <h3>결제방법</h3>
               </div>
               <div class="payment_card1">
                  <div class="payment_card2">
                     <div class="payment_card3">
                        <div class="payment_box">
                           <div class="card_img_daddy">
                              <i class="card_img"></i>
                              <!-- 카드 이미지 -->
                           </div>
                           <span class="payment_cardName"><h4>카드번호</h4></span>
                        </div>
                     </div>

                     <section class="payment_window">
                        <div>
                           <section class="payment_section">
                              <div>
                                 <div class="payment_div">
                                    <h5>카드번호</h5>
                                    <div class="payment_div_div">
                                       <div class="payment_last_div">
                                          <input class="box checked" type="text" name="card_number" maxlength="16" oninput="numberMaxLength(this);">
                                       </div>
                                    </div>
                                 </div>
                                 <div class="payment_div">
                                    <h5>카드 유효기간</h5>
                                    <div class="payment_div_div">
                                       <div class="payment_last_div">
                                          <input class="box checked" type="number" name="max_date" maxlength="4" oninput="numberMaxLength(this);" placeholder="MM(월)/YY(년)">
                                       </div>
                                    </div>
                                 </div>
                                 <div class="payment_div">
                                    <h5>카드 비밀번호(앞번호) 두자리</h5>
                                    <!-- <div class="payment_div_div_cardNum"> -->
                                    <div class="payment_div_div1">
                                       <div class="payment_short_div1">
                                          <input class="payment_short_box1 checked" type="password" name="card_pw" maxlength="2">
                                       </div>
                                       <div class="payment_short_div2">
                                          <span class="star"></span> <span class="star"></span>
                                       </div>
                                    </div>
                                    <!-- </div> -->
                                 </div>
                                 <div class="payment_div">
                                    <h5>CVC 번호</h5>
                                    <div class="payment_div_div">
                                       <div class="payment_short_div1">
                                          <input class="payment_short_box2 checked" type="password" name="cvc_number" maxlength="3">
                                       </div>
                                    </div>
                                 </div>
                                 <input type="hidden" name="checkin" class="start" value="${map.simpleStart }">
                                 <input type="hidden" name="checkout" class="end" value="${map.simpleEnd }">
                                 <input type="hidden" name="room_idx" value="${room_dto.room_idx }">
                                 <input type="hidden" name="customer_idx" value="${login.user_idx }">
                                 <input type="hidden" name="room_idx" value="${room_dto.room_idx }">
                                 <input type="hidden" name="people" value="${map.person }">
                                 <input type="hidden" name="payment_price" class="price" value="${room_dto.cost_price }">
                                 <input type="hidden" class="script_price" value="${room_dto.cost_price }">
                                 <input type="hidden" class="texx" value="${texx }">
                                 <input type="hidden" class="tax" value="${tax }">
                              </div>
                           </section>
                        </div>
                     </section>
                  </div>
               </div>
            </section>
         </li>

         <!-- 결제 동의하는 박스 -->
         <li>
            <section class="second_section">
               <div class="agree_box">
                  <!-- <div class="agree_box_div">
                                <div class="agree_box_label">
                                    <span class="agree_checkBox"></span>
                                    <input id="check_all" class="agree_checkBox" type="checkbox" name="all_agree">
                                    <label for="check_all" class="agree_box_a">전체 약관을 확인하고 결제에 동의합니다</label>                                    
                                </div>
                            </div> -->
                  <div class="agree_box_div1">
                            <div class="agree_box_label">
                                <!-- <span class="agree_checkBox"></span> -->
                                <input id="check_4" class="agree_checkBox" type="checkbox" name="service_agree">
                                <label for="check_4" class="agree_box_a">광고성정보수신(선택)</label>
                                <div class="agree_box_a1 ag_modal4">자세히 보기</div>
                            </div>
                        </div>
               </div>
            </section>
         </li>

         <li class="la_li">
            <section class="second_section">
               <div class="last_payment_div">
                  <div class="last_payment_inDiv">
                     <span class="last_payment_span2 cost_price">&nbsp;원</span> 
                     <a class="btn33" href="${cpath }/reservation/payment">
                        <button class="btn03 pink-b">결제하기</button>
                     </a>
                  </div>
               </div>
            </section>
         </li>
      </ul>
      </form>
      <!-- 오른쪽 내용 -->
      <ul class="right_ul">
         <li>
            <section class="rfs">
               <section class="in_fs">
                  <h3 class="hotel_font">${acm_dto.accomm_name }</h3>
                  <p class="room_detail">${room_dto.room_name }</p>
               </section>

               <div class="in_div">
                  <c:if test="${room_dto.room_type == 1 }">
                  <div class="check_in">
                     <h5>체크인</h5>
                     <p>${map.simpleStart} - ${acm_dto.accomm_checkin }</p>
                  </div>
                  
                  <fmt:parseDate value="${map.simpleStart }" var="strPlanDate" pattern="yyyy-MM-dd"/>
              <fmt:parseNumber value="${strPlanDate.time / (1000*60*60*24)}" integerOnly="true" var="strDate"/>
              <fmt:parseDate value="${map.simpleEnd }" var="endPlanDate" pattern="yyyy-MM-dd"/>
              <fmt:parseNumber value="${endPlanDate.time / (1000*60*60*24)}" integerOnly="true" var="endDate"/>
              
                  <span class="check_span">${endDate - strDate }&nbsp;박</span>
                  
                  <div class="check_out">
                     <h5>체크아웃</h5>
                     <p>${map.simpleEnd} - ${acm_dto.accomm_checkout }</p>
                  </div>
                  </c:if>
                  <c:if test="${room_dto.room_type == 2 }">
                     <div class="check_in">
                        <h5>대실</h5>
                        <p>${map.simpleStart} - ${room_dto.room_hire_time }&nbsp;시간</p>
                     </div>
                  </c:if>
               </div>
            </section>
         </li>
         <li>
            <section class="rss">
               <div class="room_price_title">결제 금액</div>

               <div class="room_price">
                  <div class="room_price_in1">
                     <span>객실 요금</span>
                     <div><span class="texx_price"></span>&nbsp;원</div>
                  </div>

                  <div class="room_price_in2">
                     <span>세금 및 봉사료</span>
                     <div><span class="tax_price"></span>&nbsp;원</div>
                  </div>
                  
                  <div class="room_price_in3">
                  	<span>쿠폰 할인</span>
                  	<div><span class="discount"></span>&nbsp;원</div>
                  </div>
                  
                  <div class="room_price_line"></div>

                  <div class="room_price_in4">
                     <span>총 요금</span>
                     <em>
                        <p style="padding-left:70px;"><span class="cost_price"></span>&nbsp;원</p>
                        <p>세금 및 봉사료 포함</p>
                     </em>
                  </div>
               </div>
            </section>
         </li>
         <li></li>
         <li></li>
      </ul>
      </div>
      </div>
      </section>
   </div>
<!-- </div> -->

<script>
   function numberMaxLength(e){
       if(e.value.length > e.maxLength){
           e.value = e.value.slice(0, e.maxLength);
       }
   }
   
//	가격 * 박 계산
	const start = $('.start').val();
	const end = $('.end').val();
	const startDate = new Date(start);
	const endDate = new Date(end);
	
	var priceVal = $('.price').val();
	var texx = $('.texx').val();
	var tax = $('.tax').val();
	const price = $('.price');
	const cost_price = $('.cost_price');
	const texx_price = $('.texx_price');
	const tax_price = $('.tax_price');
	const mul = (endDate - startDate) / 1000 / 60 / 60 / 24;
	
	const idx = $('.coupon_idx');
	const name = $('.coupon_name');
	const constraint = $('.coupon_constraint');
	const coupon_price = $('.coupon_price');
	const apply = $('.coupon_apply');
	const discount = $('.discount');
	
	priceVal = priceVal * mul;
	texx = texx * mul;
	tax = tax * mul;
	
//	쿠폰 사용하기
	for(let i = 0; i < constraint.length; i++){
		let constraintVal = constraint[i].value;
		if(priceVal < constraintVal){
			apply[i].removeAttribute('type');
			apply[i].setAttribute('type', 'hidden');
		}
		apply[i].onclick = function(){
			$(".agree_daddy5").hide();
			$('.coupon_check').css('padding-top', '5px');
			$('.coupon_check').css('padding-bottom', '5px');
			$('.coupon_check').css('padding-left', '5px');
			$('.coupon_check').text(name[i].value);
			$('.room_price_in3').css('display', 'flex');
			$('#coupon_idx').val(idx[i].value);

			var cprice = coupon_price[i].value;
			var aprice = $('.script_price').val() * mul;
			discount.text(comma(cprice));
			
			aprice = aprice - cprice;
			price.val(aprice);
			aprice = comma(aprice);
			cost_price.text(aprice);
		};
	}
	
	price.val(priceVal);
	priceVal = comma(priceVal);
	texx = comma(texx);
	tax = comma(tax);
	
	cost_price.text(priceVal);
	texx_price.text(texx);
	tax_price.text(tax);
	
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
	
	const inputs = $('.checked');
	const submitBtn = $('.btn03');
	const submitForm = $('#submitForm');
	
	submitBtn.click(function(e){
		e.preventDefault();
		let	check = true;
		for(var i = 0; i < inputs.length; i++){
			const input = inputs[i].value;
			if(input == '' || input == null){
				alert('값을 모두 입력하세요');
				check = false;
				return false;
			}
		}
		if(check == true){
			submitForm.submit();
		}
	});
	
	
	
	
</script>


</body>
</html>