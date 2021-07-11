<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="index_source.jsp" %>
    
</head>
<body id="top">
	<div class="wrap">

        <header class="header-on">
            <div class="header-in">
                <div class="logo"><a href="${cpath }/"><img src="${cpath }/resources/img/logo/logo.png"/></a></div>
                <ul class="menu">
                	<c:if test="${login.position == 1 }">
                    <li class="accomm" style=""><a href="${cpath }/admin/sales">판매자 정보 등록</a></li>
                    <li class="accomm" style=""><a href="${cpath }/admin/room_type">방 등록</a></li>
                    <li class="accomm" style=""><a href="${cpath }/admin/accomm">숙소 등록</a></li>
                    </c:if>
                    <li class="customer-btn">
                     	   고객센터 ▾
                        <ul class="customer">
                            <li class="announ"><a href="${cpath }/board/notice">공지사항</a></li>
                            <li class="faq"><a href="${cpath }/board/inquiry">FAQ</a></li>
                        </ul>
                    </li>
                    <!--  <li class="rv-btn"><a href="${cpath }/reservation/reservation">내 예약정보</a></li>-->
                    <li class="rv-btn"><a href="${cpath }/reservation/reserComple">내 예약정보</a></li>
                    
                    <li class="join-btn"><a href="${cpath }/member/join">회원가입</a></li>
                   <!--  <li class="login-btn"><a href="${cpath }/member/login"> -->
                    <li class="login-btn"><a href="${cpath }/${!empty login ? 'member/logout' : 'member/login' }">
                    	<!-- 로그인에 값이 있으면 login.username 로그아웃, 없으면 로그인 -->
                    	${!empty login ? '로그아웃' : '로그인'}
                    </a></li>
                    <li class="profile-btn">
                        <span class="profile-img">
                           	<span class="profile-img">
	                           	<c:if test="${empty login }">
	                           		<img src="${cpath }/resources/img/header/profile.png"/>
	                           	</c:if>
	                           	<c:if test="${!empty login }">
	                           		<c:if test="${!empty login.profile }">
	                           			<img src="${cpath }/resources/${login.userid }/${login.profile}"/>
	                           		</c:if>
	                           		<c:if test="${empty login.profile }">
	                           			<img src="${cpath }/resources/img/header/profile.png"/>
	                           		</c:if>
	                           	</c:if>
                        	</span>
                        </span>

                        <ul class="profile">

							<li class="myInfo">
                            	<a href="${cpath }/member/memberInfo">
                            		회원정보
                                </a>
                            </li>
                            <li class="coupon">
                            	<a href="${cpath }/member/coupon">
                                	<span class="cp1">쿠폰</span>
                                	<span class="cp2 pink-f">${couponCount }개 &gt;</span>
                                </a>
                            </li>
                            <c:if test="${!empty login }">
                            	<li class="logout"><a href="${cpath }/member/logout">로그아웃</a></li>
                            </c:if>
                            <c:if test="${empty login }">
                            	<li class="login"><a href="${cpath }/member/login">로그인</a></li>
                            </c:if>
                        </ul>
                    </li>
                </ul>
            </div>
        </header>