<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:if test="${reser.size() == 0 }">
      <div class="on rv-on rv-right-content">
         <div class="reser-img">
            <img src="${cpath }/resources/img/board/reser01.png"/>
         </div>
         <h4 class="reser-none">예약된 숙소정보가 없습니다.</h4>
      </div>
</c:if>
<!-- 예약완료 -->
   <c:if test="${reser.size() != 0 }">
      <c:forEach var="items" items="${reser }">
         <c:if test="${items.refund == 0 }">
         <ul class="staying-con">
            <li class="on rv-on rv-right-content comple-con">
               <div class="rv-right-header">
                  <div class="left">
                     <span><b>예약번호</b></span> <span><b class="pink-f">${items.payment_idx }</b></span>
                  </div>

                  <div class="right">
                     <span><b class="gray-f">예약날짜</b></span> <span><b
                        class="gray-f"> <fmt:formatDate
                              value="${items.payment_date }" pattern="yyyy-MM-dd" />

                     </b></span>
                  </div>
               </div>

               <ul class="content">
                  <li class="con-li">
                     <h1>${items.accomm_name }</h1> <a
                     href="${cpath }/reservation/booking/${items.payment_idx }"><span
                        class="pink-f" style="margin-left: 20px;">예약확인</span></a>
                  </li>
                  <li class="con-li"><span><b class="gray-f">일정&nbsp;&nbsp;</b></span> 
	                  <span class="gray-f">${items.start }&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;</span> 
	                  <span class="gray-f">${items.end }&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;</span> 
	                  <span class="gray-f day"></span>
	                  <input type="hidden" class="start gray-f" value="${items.start }">
			          <input type="hidden" class="end gray-f" value="${items.end }">
                  </li>
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
	


</script>
