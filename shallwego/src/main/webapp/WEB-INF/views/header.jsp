<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<link href="${cpath }/resources/css/index.css" rel="stylesheet" type="text/css"> 
<link href="${cpath }/resources/css/main.css" rel="stylesheet" type="text/css"> 
<link href="${cpath }/resources/css/header.css" rel="stylesheet" type="text/css">




    <script type="text/javascript" async="" src="https://cdn.treasuredata.com/sdk/2.1.0/td.min.js"></script>
    <script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    
    <script src="${cpath }/resources/js/header.js"></script>
    <script src="${cpath }/resources/js/index.js"></script>

<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
    
</head>
<body id="top">
	<div class="wrap">

        <header>
            <div class="header-in">
                <div class="logo"><a href="${cpath }/"><img src="${cpath }/resources/img/logo/logo.png"/></a></div>
                <ul class="menu">
                    <li class="customer-btn">
                      			  고객센터 ▾
                        <ul class="customer">
                            <li class="announ"><a href="${cpath }/board/notice">공지사항</a></li>
                            <li class="faq"><a href="${cpath }/board/inquiry">FAQ</a></li>
                        </ul>
                    </li>
                    <li class="rv-btn"><a href="${cpath }/reservation/reserComple">내 예약정보</a></li>
                    <li class="join-btn"><a href="${cpath }/member/join">회원가입</a></li>
                    <li class="login-btn"><a href="${cpath }/${!empty login ? 'member/logout' : 'member/login' }">
                    	<!-- 로그인에 값이 있으면 login.username 로그아웃, 없으면 로그인 -->
                    	${!empty login ? '로그아웃' : '로그인'}
                    </a></li>
                    
                    <li class="profile-btn">
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