<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<c:if test="${reser.size() == 0 }">
      <div class="on rv-on rv-right-content">
         <div class="reser-img">
            <img src="${cpath }/resources/img/board/reser01.png"/>
         </div>
         <h4 class="reser-none">투숙 완료된 숙소정보가 없습니다.</h4>
      </div>
</c:if>

<!-- 예약완료 -->
   <c:if test="${reser.size() != 0 }">				<!-- 예약된 정보가 있냐없냐 -->
      <c:forEach var="items" items="${reser }">		<!-- 예약된 정보 출력 -->	
         <c:if test="${items.refund == 0 }">		<!-- 취소가 되었느냐 안되었느냐 -->
         
	    <ul class="staying-con">
            <li class="on rv-on rv-right-content">
	               <div class="rv-right-header">
	               
	                  <div class="left">
	                     <span><b>예약번호</b></span> 
	                     <span><b class="pink-f">${items.payment_idx }</b></span>
	                  </div>
	
	                  <div class="right">
	                  	 <span><b class="pink-f rv-btn">리뷰 작성</b></span>
	                  </div>
	                  
	               </div>
	
	               <!-- 내용 -->
	               <ul class="content">
	                  <li class="con-li">
	                     <h1>${items.accomm_name }</h1> 
	                     <a href="${cpath }/reservation/booking/${items.payment_idx }">
	                     <span class="pink-f" style="margin-left: 20px;">예약확인</span></a>
	                  </li>
	                  
	                  <li class="con-li">
		                  <span><b class="gray-f">일정&nbsp;&nbsp;</b></span> 
		                  <span class="gray-f">${items.start }&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;</span> 
		                  <span class="gray-f">${items.end }&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;</span> 
		                  <span class="gray-f day"></span>
		                  <input type="hidden" class="start gray-f" value="${items.start }">
		                  <input type="hidden" class="end gray-f" value="${items.end }">
	                  </li>
	                  
	                  <!-- 리뷰 -->
		               <ul class="rv-remove review-wrap">
			               <input type="hidden" id="accomm_idx${items.payment_idx }" name="accomm_idx" value="${items.accomm_idx }"/>
			               <input type="hidden" id="room_idx${items.payment_idx }" name="room_idx" value="${items.room_idx }"/>
			               <input type="hidden" id="customer_idx" name="customer_idx" value="${items.customer_idx }"/>
			               <input type="hidden" class="payment" value="${items.payment_idx }"/>
	
		                  <!-- review_title -->
		                  <li class="rev-title">
		                     <h3 class="sub-title">제목</h3> 
		                     <input class="text01-5 review_val" type="text" id="review_title${items.payment_idx }" name="review_title" placeholder="제목을 입력해주세요.">
		                     <span class="msg" id="titleMsg${items.payment_idx }"></span>
		                  </li>
		
		                  <!-- coustomer_idx -->
		                  <li class="rev-date">
		                     <h3 class="sub-title">작성인</h3> <input type="hidden"
		                     id="customer_idx" value="${login.user_idx } "> 
		                     <span class="gray-f rev-span" id="coustomer_idx">${login.username }</span>
		                  </li>
		
		                  <!-- kindness -->
		                  <li class="rev-avg-wrap">
		                     <div class="rev-avg">
		                        <p>친절도</p>
		                        <div id="kind-star${items.payment_idx }">
		                           <span class="star"><i class="fas fa-star"></i></span> 
		                           <span class="star"><i class="fas fa-star"></i></span> 
		                           <span class="star"><i class="fas fa-star"></i></span> 
		                           <span class="star"><i class="fas fa-star"></i></span> 
		                           <span class="star"><i class="fas fa-star"></i></span>
		                        </div>
		                     </div> <!-- transportation -->
		                     
		                     <div class="rev-avg">
		                        <p>편의성</p>
		                        <div id="trans-star${items.payment_idx }">
		                           <span class="star"><i class="fas fa-star"></i></span> 
		                           <span class="star"><i class="fas fa-star"></i></span> 
		                           <span class="star"><i class="fas fa-star"></i></span> 
		                           <span class="star"><i class="fas fa-star"></i></span> 
		                           <span class="star"><i class="fas fa-star"></i></span>
		                        </div>
		                     </div> <!-- cleanliness -->
		                     
		                     <div class="rev-avg">
		                        <p>청결도</p>
		                        <div id="clean-star${items.payment_idx }">
		                           <span class="star"><i class="fas fa-star"></i></span> 
		                           <span class="star"><i class="fas fa-star"></i></span> 
		                           <span class="star"><i class="fas fa-star"></i></span> 
		                           <span class="star"><i class="fas fa-star"></i></span> 
		                           <span class="star"><i class="fas fa-star"></i></span>
		                        </div>
		                     </div> 
		                     
		                     <span class="msg" id="ratingMsg"></span>
		                  </li>
		
		                  <!-- review_content -->
		                  <li class="rev-write-wrap">
		                     <h3 class="sub-title">내용</h3> 
		                     <textarea class="text01 review_val" id="review_content${items.payment_idx }" name="review_content"></textarea> 
		                     <span class="msg" id="contentMsg${items.payment_idx }"></span>
		                  </li>
		
		                  <!-- 작성완료 버튼  -->
		                  <li>
		                  	<input class="btn02 pink-b rv-write-btn" type="submit" id="rv-write-btn${items.payment_idx }" value="작성완료">
		                  </li>
		               </ul>
	                  
	                  
	               </ul>
				
			</li>
		</ul>	
			
            </c:if>
      	</c:forEach>
      </c:if>
      
      
      
      
<script>

	var start = $('.start');
	var end = $('.end');
	var days = $('.day');
	
	for(var i = 0; i < start.length; i++){
	   const startVal = start[i].value;
	   const endVal = end[i].value;
	   const day = days[i];
	   var startDate = new Date(startVal);
	   var endDate = new Date(endVal);
	   day.innerHTML = (((endDate - startDate) / 1000 / 60 / 60 / 24) + '박');
	} 

// 리뷰작성 버튼
/* $("#rv-btn").click(function() {
   $(".rv-comple-rv").show();
}); */

$(".rv-btn").each(function(index){
   $(this).attr("data-index", index);
}).click(function() {
   
   var i = $(this).attr("data-index")-1;
    
   var reviewWrap = $(".review-wrap").eq(i);
   
   if(reviewWrap.is(":visible")){
	   reviewWrap.slideUp();
   }else{
	   reviewWrap.slideDown();
   }
	   
});   




/* 별점 */

const payment = $(".payment");
payment.each(function(index){
	$(this).attr("data-index", index);
	var i = $(this).attr("data-index");
	 
	const kindStar = document.getElementById('kind-star' + payment.eq(i).val()).querySelectorAll('span');
	const transStar = document.getElementById('trans-star' + payment.eq(i).val()).querySelectorAll('span');
	const cleanStar = document.getElementById('clean-star' + payment.eq(i).val()).querySelectorAll('span');
		
	var kindval = 0;
	var transval = 0;
	var cleanval = 0;
	
	console.log(payment, kindStar,transStar,cleanStar)
	
	kindStar.forEach((element, index) => {
	    element.onclick = (event) => {
	        for(let i = 0; i < kindStar.length; i++) {  
	            kindStar[i].style.color = (i >= index+1) ? '#d1d1d1' : '#ffc0c0';
	           kindval = index+1;
	        }
	    }
	
	});
	transStar.forEach((element, index) => {
	   element.onclick = (event) => {
	        for(let i = 0; i < transStar.length; i++) {
	           transStar[i].style.color = (i >= index+1) ? '#d1d1d1' : '#ffc0c0';
	           transval = index+1;
	        }
	     }
	
	});
	cleanStar.forEach((element, index) => {
	   element.onclick = (event) => {
	          for(let i = 0; i < cleanStar.length; i++) {
	             cleanStar[i].style.color = (i >= index+1) ? '#d1d1d1' : '#ffc0c0';
	             cleanval = index+1;
	          }
	       }
	
	});
	const titleCheck = $("#review_title" + payment.eq(i).val());
	const contentCheck = $("#review_content" + payment.eq(i).val());
	
	titleCheck.blur(function(){
	   // onkeyup : 하나라도 입력한 후에 이벤트 발생
	   if(titleCheck.val() == ''){		// 만약에 '제목'에 내용이 없으면 = "제목을 입력해주세요."
		    $("#titleMsg" + payment.eq(i).val()).text("제목을 입력해주세요.");
	   }else if(titleCheck.val() != ''){
	       	$("#titleMsg" + payment.eq(i).val()).text("");
	   }
	});
	
	contentCheck.blur(function(){
		if(contentCheck.val() == ''){		// 만약에 '제목'에 내용이 없으면 = "제목을 입력해주세요."
		    $("#contentMsg" + payment.eq(i).val()).text("내용을 입력해주세요.");
	   }else if(contentCheck.val() != ''){
	       	$("#contentMsg" + payment.eq(i).val()).text("");
	   }
	});
	
	$("#rv-write-btn" + payment.eq(i).val()).click(function() {
	    const accomm_idx = $('#accomm_idx' + payment.eq(i).val()).val();         	// 숙소 인덱스
	    const room_idx = $("#room_idx" + payment.eq(i).val()).val();            	// 방 인덱스
	    const customer_idx = $("#customer_idx").val();      						// 유저 인덱스
	    const review_title = $("#review_title" + payment.eq(i).val()).val();      	// 리뷰 인덱스
	    const kindness1 = kindval;                     								// 친절도
	    const cleanliness1 = cleanval;                								// 청결도
	    const transportation1 = transval;               							// 편의도
	    const review_content = $("#review_content" + payment.eq(i).val()).val();  	// 리뷰 작성내용 
	    
	    
	    
	    if(review_title == ''){		// 만약에 '제목'에 내용이 없으면 = "제목을 입력해주세요."
	          $("#titleMsg" + payment.eq(i).val()).text("제목을 입력해주세요.");
	          $("#titleMsg" + payment.eq(i).val()).focus();
	          return;
	     } else if(review_content == '') {
	          $("#contentMsg" + payment.eq(i).val()).text("내용을 작성해주세요.");
	          $("#contentMsg" + payment.eq(i).val()).focus();
	       	  return; // return을 안써주면 작성이 되든 안되든 디비에 들어가니까 리턴해준다!
	     } else{
		       const url = cpath + '/reservation/writeReview';
		       const opt = {
	             method: 'POST',
	             body: JSON.stringify({ 
	                accomm_idx : accomm_idx,
	                room_idx: room_idx,
	                customer_idx : customer_idx,
	                review_title :review_title,
	                kindness : kindness1,
	                cleanliness :cleanliness1,
	                transportation : transportation1,
	                review_content : review_content
	             }),
	             headers:{
	                'Content-type': 'application/json;charset=utf8'
	             }
	       };	// end of opt
	       fetch(url, opt)   // 여기에 오류뜨면 디비에 안넘어갔다는거임 
	       .then(resp => resp.text())
	       .then(text => {
		 		if (text == 1) {
					alert('리뷰가 등록되었습니다.');
					$(".review-wrap").slideUp();
				} else{
					alert('리뷰 등록에 실패하셨습니다.');
				}
	       });	// end of then(text)
	   }	// end of else
	}); // end of 함수
})
	








</script>