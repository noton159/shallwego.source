<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="index_source.jsp" %>  
<link href="${cpath }/resources/css/search.css" rel="stylesheet" type="text/css">
<link href="${cpath }/resources/css/slide-banner.css" rel="stylesheet" type="text/css"> 


<%@ include file="index_header.jsp" %>


 <!-- wrap-in -->
        <div class="wrap-in back-white">


            <section class="section section-main section1">

                <section>
                    <div id="top-banner">
                        <div id="top-banner-background">
        
                            <div id="top-banner-background-1" style="width: 100%; z-index: 4;">
                                <div class="active"></div>
                            </div>
                            <div id="top-banner-background-2" style="width: 100%; z-index: 3;">
                                <div class=""></div>
                            </div>
                            <div id="top-banner-background-3" style="width: 100%; z-index: 2;">
                                <div class=""></div>
                            </div>
                            <div id="top-banner-background-4" style="width: 100%; z-index: 1;">
                                <div class=""></div>
                            </div>
        
                        </div>
                        
                      </div>
                </section>

            
                <div class="section-slide">
                    <div class="main-center-wrap">
                        <span class="main-center">
                            <img src="${cpath }/resources/img/logo/logo-main.png">
                        </span>

                    <!-- search box -->
                    <form method="post" id="searchForm" action="${cpath }/room/indexRoom">
                    <ul class="search-box-wrap">
                        <li class="search-box">
                            <span class="search-icon glasses"></span>
                            <p><input type="text" id="destination" name="destination" placeholder="목적지 또는 호텔명" /></p>
                        </li>

                        <li class="search-box">
                                <div id="examples" class="mt-5" style="margin-top: 0!important;height: 30px;">
                                    <div class="card" style="border: 0;">
                                        <div class="card-body" style="padding: 0;">
                                            <div class="row">
                                                <div class="col-md-5" style="max-width: 0; flex: 0;">
                                                    <div class="d-flex" style="width: 300px; height: 50px; border: 0;">
                                                    
                                                        <span class="search-icon calendar"></span>
                                                        <input type="text" id="demo-3_1" name="start" class="form-control form-control-sm" 
                                                        style="width:100px; height:40px; float: left; margin-top: 10px; border: 0; text-align: center;" placeholder="check-in"/>
                                                        
                                                        <h3 style="width: 30px; padding: 10px 10px; float:left;margin: 5px 0 0 0;font-size: 20px;">
                                                        
                                                        <span id="nights"></span></h3>
                                                        <input type="text" id="demo-3_2" name="end" class="form-control form-control-sm" 
                                                        style="width:100px; height:40px; float: left; margin-top: 10px; border: 0; text-align: center;" placeholder="check-out"/>
                                                    
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                
                                    <br>
                                </div>
                        </li>
                        
                        <li class="search-box">
                            <span class="search-icon people">
                            </span>
                            <span class="check2 person_wrap" style=" height: 60px">
                               <p style="margin-bottom: 0;">인원</p>
	                           <h3 style="font-size: 20px;">인원
	                           		<input type="number" name="person" 
	                           			id="person" value="1" 
	                           				min="1" max="20" 
	                           			style="border: 0px;
	                           					width: 40px;
	                           					font-size: 20px;">명
	                           </h3>
                            </span>
                            
                        </li>

                        <li class="search-box pink">
                            <button class="search-btn pink" id="searchBtn">
                                <span class="search-icon glasses2">
                                </span>
                            </button>
                        </li>

                    </ul>
                     </form>
                    </div>
                </div>
            </section>

            <section class="section section2">
                <div class="section-in">
                    <h1 class="title_sub">떠나볼까?의 특별 혜택</h1>

                        <ul class="event-wrap">
                            <li>
                            <a href="${cpath }/board/event">
                                <div class="event-img"><img src="${cpath }/resources/img/index/birth.png"/></div>
                                <div class="event-text">
                                    <h2 class="pink-f">
                                        Happy Birthday
                                    </h2>
                                    <p>당신의 생일을 축하드립니다!</p>
                                    <p class="gray-f">이벤트 기간 : 03월</p>
                                </div>
                             </a>
                        </li>

                            <li>
                            <a href="${cpath }/board/event">
                                <div class="event-img"><img src="${cpath }/resources/img/index/spring.png"/></div>
                                <div class="event-text">
                                    <h2 class="pink-f">
                                        봄 이벤트 대축제
                                    </h2>
                                    <p>분홍빛 이벤트를 즐겨보세요</p>
                                    <p class="gray-f">이벤트 기간 : 03월 01일 ~ 05월 30일</p>
                                </div>
                             </a>
                        </li>

                            <li>
                            <a href="${cpath }/board/event">
                                <div class="event-img"><img src="${cpath }/resources/img/index/honey.png"/></div>
                                <div class="event-text">
                                    <h2 class="pink-f">
                                        허니문 이벤트
                                    </h2>
                                    <p>5월의 신부. 미리 준비하세요 !</p>
                                    <p class="gray-f">이벤트 기간 : 05월</p>
                                </div>
                             </a>
                        </li>
                   </ul>

                </div>
            </section>

            <section class="section section3">
                <div class="section-in s2">
                    <h1 class="title_sub">당신만을 위한 추천 여행지예요</h1>
                    <div class="local-label-wrap">
                        <ul class="local-label">
                            <li class="on-bottom">All</li>
                            <li>서울</li>
                            <li>경기</li>
                            <li>강원도</li>
                            <li>부산</li>
                            <li>대구</li>
                            <li>경주</li>
                            <li>제주도</li>
                        </ul>
                    </div>

                    <div class="local-wrap">
                        
                            <!-- all -->
                        <div class="lo-on lo-on2 local-wrap-in">
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/1.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>거제도 옥포 휴</h2>
                                                <p>거제도 옥포 휴입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                                
                            <!--  -->
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/2.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>강릉 샤인텔</h2>
                                                <p>강릉 샤인텔입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>

                            <!--  -->
                            <ul class="lo-point">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/point1.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>건대 캠퍼스</h2>
                                                <p>건대 캠퍼스입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            
                            <!--  -->
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/3.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>경주 달러</h2>
                                                <p>경주 달러입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                                
                            <!--  -->
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/4.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>계룡 캔버스</h2>
                                                <p>계룡 캔버스입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
 					<!-- 서울 -->
                        <div class="local-wrap-in">
                        
                            <!--  -->
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/5.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>모텔1</h2>
                                                <p>모텔1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                                
                            <!--  -->
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/6.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>공주 호텔 패션</h2>
                                                <p>공주 호텔 패션입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>

                            <ul class="lo-point">
                            
                            <!--  -->
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/point2.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>광명 썸</h2>
                                                <p>광명 썸입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            
                            <!--  -->
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/7.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>광양 피카소</h2>
                                                <p>광양 피카소입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                                
                            <!--  -->
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/8.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>래디언스호텔</h2>
                                                <p>래디언스호텔입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>

                         <!-- 경기 -->
                        <div class="local-wrap-in">
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/9.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>단양 관광호텔</h2>
                                                <p>단양 관광호텔입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            <!--  -->
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/10.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>베니키아 양산 호텔</h2>
                                                <p>베니키아 양산 호텔입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>

                            <!--  -->
                            <ul class="lo-point">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/point3.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>샹그리아비치관광호텔</h2>
                                                <p>샹그리아비치관광호텔입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <!--  -->
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/11.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>성주 가야호텔</h2>
                                                <p>성주 가야호텔입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/12.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>신라스테이 천안</h2>
                                                <p>신라스테이 천안입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>

                         <!-- 강원도 -->
                        <div class="local-wrap-in">
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/13.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>안면 프라자</h2>
                                                <p>안면 프라자입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            <!--  -->
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/14.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>용인 아스트로호텔</h2>
                                                <p>용인 아스트로호텔입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>

                            <!--  -->
                            <ul class="lo-point">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/point4.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>비체펠리스</h2>
                                                <p>비체펠리스입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <!--  -->
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/15.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>울진 덕구온천호텔</h2>
                                                <p>울진 덕구온천호텔입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            <!--  -->
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/16.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>의정부 호텔 베네</h2>
                                                <p>의정부 호텔 베네입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>

                         <!-- 부산 -->
                        <div class="local-wrap-in">
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/17.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>이데아호텔</h2>
                                                <p>이데아호텔입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            <!--  -->
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/18.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>청주 뮤제오호텔</h2>
                                                <p>청주 뮤제오호텔입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>

                            <!--  -->
                            <ul class="lo-point">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/point5.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>크라운호텔 창원</h2>
                                                <p>크라운호텔 창원입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <!--  -->
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/19.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>파라다이스호텔</h2>
                                                <p>파라다이스호텔입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            <!--  -->
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/20.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>호텔 더 메이</h2>
                                                <p>호텔 더 메이입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                         <!-- 대구 -->
                        <div class="local-wrap-in">
                        
                            <!--  -->
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/21.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>호텔 시에나</h2>
                                                <p>호텔 시에나입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                                
                            <!--  -->
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/22.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>호텔 파크하비오</h2>
                                                <p>호텔 파크하비오입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>

                            <!--  -->
                            <ul class="lo-point">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/point6.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>호텔 페이토 삼성</h2>
                                                <p>호텔 페이토 삼성입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <!--  -->
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/1.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>The-K 더케이 호텔 경주</h2>
                                                <p>The-K 더케이 호텔 경주입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            <!--  -->
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/2.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>구미 호텔 금오산</h2>
                                                <p>구미 호텔 금오산입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>

                         <!-- 경주  -->
                        <div class="local-wrap-in">
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/3.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>글래드 여의도</h2>
                                                <p>글래드 여의도입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            <!--  -->
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/4.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>더 스테이트 선유 호텔</h2>
                                                <p>더 스테이트 선유 호텔입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>

                            <!--  -->
                            <ul class="lo-point">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/point7.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>호텔1</h2>
                                                <p>호텔1입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <!--  -->
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/6.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>롯데 리조트 부여</h2>
                                                <p>롯데 리조트 부여입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            <!--  -->
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/7.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>롯데시티호텔</h2>
                                                <p>롯데시티호텔입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>

                        <!-- 제주도  -->
                        <div class="local-wrap-in">
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/15.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>밀양 호텔 아리나</h2>
                                                <p>밀양 호텔 아리나입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            <!--  -->
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/12.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>스위트호텔남원</h2>
                                                <p>스위트호텔남원입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>

                            <!--  -->
                            <ul class="lo-point">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/point8.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>신라스테이</h2>
                                                <p>신라스테이입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                            <!--  -->
                            <ul class="lo">
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/18.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>아이스퀘어호텔</h2>
                                                <p>아이스퀘어호텔입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            <!--  -->
                                <li>
                                    <a href="">
                                        <img src="${cpath }/resources/img/index/accommodation/9.png"/>
                                        <div class="back-black">
                                            <span class="back-text">
                                                <h2>히든베이호텔 여수(오션뷰)</h2>
                                                <p>히든베이호텔 여수(오션뷰)입니다.</p>
                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                   
                    </div>
            <!-- local wrap end -->

                </div>
            </section>

            <section class="section section4">
                <div class="section-in">
                    <h1 class="title_sub">전 지역 여행객의 생생 이용후기</h1>
                    
                    <ul class="review">
                        <li class="gradient-border bottom">
                            <h2>호텔 신라</h2>
                            <p>제주도</p>
                            <span>너무좋아용 ㅠㅠ 
                            </span>
                        </li>
                        <li class="gradient-border bottom">
                            <h2>파라다이스</h2>
                            <p>부산</p>
                            <span>부산최고 !
                            </span>
                        </li>
                        <li class="gradient-border bottom">
                            <h2>힐튼 부산</h2>
                            <p>부산</p>
                            <span>별로에요 ;;
                            </span>
                        </li>
                        <li class="gradient-border bottom">
                            <h2>아난티</h2>
                            <p>부산</p>
                            <span>그냥 그래요 
                            </span>
                        </li>
                    </ul>
                </div>

            </section>
           </div>
           
           
<%@ include file="footer.jsp" %>

<script async src="https://buttons.github.io/buttons.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<!-- <script src="https://unpkg.com/lightpick@latest/lightpick.js"></script> -->
<script src="${cpath }/resources/js/calender/lightpick.js"></script>
<script src="${cpath }/resources/js/demo.js"></script>

<script>

	const nights = $('.nights');
	
	function nights_calc(){
		var lightpick = document.getElementsByClassName('lightpick__tooltip');
		var tooltip = lightpick[0].textContent;
		split = tooltip.split(' ');
		if(split[0] != ''){
			nights.text((split[0]-1) + '박');
		}
	}
	
	const destination = document.getElementById('destination').addEventListener('click', nights_calc);
	const forms = document.getElementsByClassName('form-control');
	const person = document.getElementById('person').addEventListener('click', nights_calc);
	for(var i = 0; i < forms.length; i++){
		forms[i].addEventListener('click', nights_calc);
	}
	
	$('#searchBtn').click(function(e){
		e.preventDefault();
		
		const start = document.getElementById("demo-3_1").value;
		const end = document.getElementById("demo-3_2").value;
		
		if(start == '' || end == ''){
			alert('체크인 체크아웃 날짜를 확인해주세요');
		}
		else {
			$('#searchForm').submit();
		}
	});

</script>