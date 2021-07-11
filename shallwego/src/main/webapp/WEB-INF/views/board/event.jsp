<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!-- 이벤트 -->
<div class="event">

   <!-- 이벤트 버튼 -->
   <ul class="qa-btn-wrap">
      <li class="on-bottom notice-btn">이벤트</li>
      
      <c:if test="${login.position == 1 }">
      <li class="notice-btn">이벤트 작성</li>
      </c:if>
   </ul>

   <!-- 이벤트 목록 -->
   <ul class="on event-list notice-con-none event-content-wrap">
   
   <!-- 리스트에 값이 있으면 -->
      <c:if test="${!empty eventList }">
         <c:forEach var="event" items="${eventList }">
                  	<!-- delete가 0인 친구만 보이게 한다 -->
            <form method="POST" action="${cpath }/board/deleteEvent">
	         	<c:if test="${event.deleted == 0 }">	
	            <input type="hidden" name="event_idx" value="${event.event_idx }"/>
	            <!-- 내 게시글이 있을경우 -->
	            <li class="myevent-on board-event board-event-wrap">
	               <div class="event-img">
	                  <img src="${cpath }/resources/img/index/${event.event_img}"/>
	               </div>
	               <div class="event-text">
	                  <h2>${event.event_title }</h2>
	                  <p>${event.event_subtitle }</p>
	               </div>
	            </li>
	      
	         <!-- 내 이벤트 상세보기 -->
	         <div class="event-list-sub event-content-wrap">
	            <ul class="event-content">
	               <li class="ev-title">
	                  <!-- 이벤트 제목 -->
	                  <h2 class="ev-t-title">제목</h2>
	                  <h2>${event.event_title }</h2>
	               </li>
	               <li class="ev-subtitle">
	                  <!-- 이벤트 부제목 -->
	                  <h2 class="ev-t-title">부제목</h2>
	                  <h3>${event.event_subtitle }</h3>
	               </li>
	                  <!-- 이벤트 시작날짜 -->
	               <li class="ev-start">
	               	  <p class="ev-t-title">이벤트 시작</p>
	                  <p class="gray-f">${event.start }</p>
	               </li>
	                  <!-- 이벤트 종료날짜 -->
	               <li class="ev-start">
	               	  <p class="ev-t-title">이벤트 종료</p>
	                  <p class="gray-f">${event.end }</p>
	               </li>
	                  <!-- 작성내용 -->
	               <li class="ev-content">
	               	  <img src="${cpath }/resources/img/index/${event.event_img}"/>
	                  <p>${event.event_content }</p>
	               </li>
	               	  <!-- 이전버튼 -->
	               <li class="event-sub-btn">
	               		<input type="button" id="event-before_btn" class="btn02 pink" value="이전" onclick="history.go(-1)" />
	               		<c:if test="${login.position == 1 }">
	               		<input type="submit" id="event-del-btn" class="btn02 pink-b" value="삭제" />
	               		</c:if>
	               </li>
	            </ul>
	         </div>
         	</c:if>
		</form>
      </c:forEach>
   </c:if>

	   <!-- 리스트에 값이 없으면 -->
	   <c:if test="${empty eventList }">
	      <!-- 내 게시글이 null일 경우 -->
	      <li class="event-write-null">
	         <div class="event-content">
	            <h1>등록된 이벤트가 없습니다.</h1>
	            <p class="gray-f">떠나볼까는 현재 진행중인 이벤트가 없습니다.</p>
	         </div>
	      </li>
	   </c:if>
   </ul>
   
      <!-- 새 이벤트 작성 ***************************** -->
      <c:if test="${login.position == 1 }">
      <div class="notice-con-none event-content-wrap">
         <ul class="event-content event-new">
            <li>
               <h3 class="gray-f">떠나볼까? 유저들을 위한 이벤트를 작성해주세요.</h3>
            </li>
            <form method="POST" id="new-event-write" action="${cpath }/board/writeEvent">
               <input type="hidden" name="admin_idx" id="admin_idx" value="${login.user_idx }">

               <li>
                  <h3 class="title">이벤트 제목</h3>
                  <div class="content">
                     <input class="text01 gray-f" id="event_title"
                        name="event_title" type="text" placeholder="필수항목 입니다." />
                  </div>
               </li>
               <li>
                  <h3 class="title">이벤트 부제목</h3>
                  <div class="content">
                     <input class="text01 gray-f" id="event_subtitle"
                        name="event_subtitle" type="text" placeholder="필수항목 입니다." />
                  </div>
               </li>
               <li>
                  <h3 class="title">이벤트 내용</h3>
                  <div class="content">
                     <input class="text01 gray-f questions" id="event_content"
                        name="event_content" type="text" placeholder="" />
                  </div>
               </li>
               <li class="event-start">
                  <h3 class="title">이벤트 시작</h3>
                  <div class="content">
                     <input class="text01 gray-f" id="event_start"
                        name="event_start" type="text" placeholder="mm/dd/yyyy" />
                  </div>
               </li>
               <li class="event-start">
                  <h3 class="title">이벤트 종료</h3>
                  <div class="content">
                     <input class="text01 gray-f" id="event_end"
                        name="event_end" type="text" placeholder="mm/dd/yyyy" />
                  </div>
               </li>
               <li class="event-file">
                  <h3 class="title">사진 첨부</h3>
                  <div class="content">
                     <input class="gray-f" id="event_img"
                        name="event_img" type="file" onchange="imageChange()"/>
                  </div>
               </li>
               <li><input type="submit" id="event_btn" class="btn02 pink"
                  value="작성완료" /></li>
            </form>
         </ul>
      </div>
   </c:if>

</div>



<script>
// 불들어오기 
$(".event-btn").each(function(index) {
	$(this).attr("data-index", index);
}).click(function() {

	var i = $(this).attr("data-index");

	$(".event-btn").removeClass("on-bottom");
	$(".event-btn").eq(i).addClass("on-bottom");
	
});

// 이벤트 상세하게 보기
$(".board-event").each(function(index) {
	$(this).attr("data-index", index);
}).click(function() {

	var i = $(this).attr("data-index"); // myqa-title-main 배열 

	$(".board-event").hide();
	$(".event-list-sub").eq(i).show();

});

// ??
$(".event-btn").click(function() {

	var i = $(this).index(); // 버튼 1, 2, 3....
	var b = $(".event-content-wrap").index();

	// 버튼 1번 클릭시 1번 컨텐츠 들어오기
	$(".event-con-none").removeClass("on");
	$(".event-con-none").eq(i).addClass("on");

});


const event_img = $('#event_img').val();

//(이벤트)작성완료 클릭 
$("#event_btn").click(function(){
	$.ajax({
		url : cpath + '/board/writeEvent',
		method : 'POST',
		data : {
			event_idx : $('#event_idx').val(), 				// 이벤트 인덱스  
			event_img : event_img[1], 						// 이벤트 사진 
			event_title : $('#event_title').val(), 			// 이벤트 제목 
			event_subtitle : $('#event_subtitle').val(), 	// 이벤트 부제목 
			event_content : $('#event_content').val(), 		// 이벤트 내용
			event_start : $('#event_start').val(),  		// 시작 날짜   
			event_end : $('#event_end').val() 				// 끝 날짜  
		},
		dataType : 'text',
		success : function(returnValue) {
			if(returnValue === '이벤트가 등록되었습니다.'){
				alert(returnValue);
				location.replace(cpath + '/board/event');
			}
		}
	});
});




</script>