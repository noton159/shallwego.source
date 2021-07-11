<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../source.jsp"%>
<link href="${cpath }/resources/css/search.css" rel="stylesheet"
	type="text/css">

<link href="${cpath }/resources/css/reservation/reservation.css" rel="stylesheet"
	type="text/css">
<link href="${cpath }/resources/css/member/memberInfo.css" rel="stylesheet"
	type="text/css">
<link href="${cpath }/resources/css/board/board.css" rel="stylesheet"
	type="text/css">
<link href="${cpath }/resources/css/board/event.css" rel="stylesheet"
	type="text/css">

<script src="${cpath }/resources/js/board/board.js"></script>
<script src="${cpath }/resources/js/board/event.js"></script>
<script src="${cpath }/resources/js/board/inquiry.js"></script>
<script src="${cpath }/resources/js/board/notice.js"></script>

<%@ include file="../header.jsp"%>

<div class="wrap-in back-gray">

	<section class="section">
		<div class="section-in2">

<!-- 카테고리 -->
			<div class="rv-left">
				<ul>
					<li class="${uri == 'notice' ? 'on-click' : '' } rv-menu"><a href="${cpath }/board/notice">공지사항</a></li>
					<li class="${uri == 'event' ? 'on-click' : '' } rv-menu"><a href="${cpath }/board/event">이벤트</a></li>
					<li class="${uri == 'inquiry' ? 'on-click' : '' } rv-menu"><a href="${cpath }/board/inquiry">1:1 문의</a></li>
				</ul>
			</div>


			<div class="rv-right">
			
			<c:if test="${uri == 'notice' }">
				<%@ include file="notice.jsp"%>
			</c:if>
			<c:if test="${uri == 'event' }">
				<%@ include file="event.jsp"%>
			</c:if>
			<c:if test="${uri == 'inquiry' }">
				<%@ include file="inquiry.jsp"%>
			</c:if>
<%-- 			<%@ include file="event.jsp"%> --%>
<%-- 			<%@ include file="inquiry.jsp"%> --%>


		</div>
	</section>
	<!-- end of class section -->

</div>

<%@ include file="../footer.jsp"%>

<script>
	const uri = '${uri}';
	const cpath = '${cpath}';
	

	//이벤트 상세보기 이전 버튼
	$("#notice-before_btn").click(function(){
	   console.log('이전');
	   location.replace(cpath + "/board/notice");
	});
	

	//이벤트 상세보기 이전 버튼
	$("#event-before_btn").click(function(){
	   console.log('이전');
	   location.replace(cpath + "/board/event");
	});
	

	//1:1문의 상세보기 이전 버튼
	$("#inquiry_before_btn").click(function(){
	   console.log('이전');
	   location.replace(cpath + "/board/inquiry");
	});

	
</script>