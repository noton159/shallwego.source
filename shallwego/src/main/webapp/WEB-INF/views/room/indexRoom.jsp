<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../index_source.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link href="${cpath }/resources/css/search.css" rel="stylesheet" type="text/css">
<link href="${cpath }/resources/css/room/index-room.css" rel="stylesheet" type="text/css">

<!-- <link rel="stylesheet" href="jqueryui/style.css"> -->
<!-- 1박가격, 평점 -->
<link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
<script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>  


<script src="${cpath }/resources/js/room/index-room.js"></script>

<style>
.ui-widget-header {
    background-image: linear-gradient(to right, rgb(246, 88, 117) -8%, rgb(248, 224, 142) 291%)!important;; 
}

.ui-state-default, .ui-widget-content .ui-state-default, .ui-widget-header .ui-state-default {
    width: 20px;
    height: 20px;
    position: absolute;
    top: -9px;
    border-radius: 50%;
    box-sizing: border-box;
    background-color: white;
    box-shadow: 1px 2px 3px rgb(0 0 0 / 10%);
    border: 1px solid #f1f1f1;
    background: white;
}

.ui-slider .ui-slider-range {
    height: 6px !important;
}

.ui-widget-content {
	height: 6px !important;
	border: none;
	background: none;
    background-color: #dedede;
}

</style>

<%@ include file="../header.jsp"%>

<div class="wrap-in back-white">

	<section class="section">
		<div class="section-in-room">

		<form action="${cpath}/room/indexRoom" name="f" method="POST" id="filter_form">
			<section class="sec-room1">
				<div class="section-in2">


					<!-- search box -->
						<ul class="search-box-wrap">
							<li class="search-box">
							<span class="search-icon glasses"></span>
								<p>
									<input type="text" id="destination" name="destination" 
									value="${dto.destination }" placeholder="목적지 또는 호텔명" />
								</p>
							</li>
	
	
							<li class="search-box"><span class="search-icon calendar">
							</span> <span class="check">
									<input type="text" id="demo-3_1" name="start" value="${dto.start }" 
									class="form-control form-control-sm" style="width:100px; height:40px; 
									float: left; margin-top: 10px; border: 0; text-align: center;" 
									placeholder="check-in"/>
							</span> <span class="check">
	                                <h3 style="width: 30px; padding: 10px 10px; float:left;margin: 5px 0 0 0;
	                                font-size: 20px;">
	                                <span id="nights"></span></h3>
							</span> <span class="check">
	                                <input type="text" id="demo-3_2" name="end" value="${dto.end }" 
	                                class="form-control form-control-sm" style="width:100px; height:40px; 
	                                float: left; margin-top: 10px; border: 0; text-align: center;" 
	                                placeholder="check-out"/>
							</span></li>
	
							<li class="search-box">
							<span class="search-icon people">
							</span> 
								<span class="check2">
									<p>인원</p>
									<h3 style="font-size: 20px;">인원
		                           		<input type="number" name="person" 
		                           			id="person" value="${dto.person }" 
		                           				min="1" max="20" 
		                           			style="border: 0px;
		                           					width: 40px;
		                           					font-size: 20px;">명
		                           </h3>
								</span>
							</li>
	
							<li class="search-box pink">
								<button class="search-btn pink">
									<span class="search-icon glasses2"></span>
								</button>
							</li>
	
						</ul>
				</div>
			</section>

			<div class="filter-top">
				<ul class="img_wrap">
					<li><img src="${cpath }/resources/img/index-room/slide1.png" /></li>
					<li><img src="${cpath }/resources/img/index-room/slide2.png" /></li>
					<li><img src="${cpath }/resources/img/index-room/slide3.png" /></li>
				</ul>

				<div class="slide-btn">
					<img class="left" src="${cpath }/resources/img/icon/left.png">
					<img class="right"
						src="${cpath }/resources/img/icon/right.png">
				</div>
			</div>
			
			
				<div class="filter-left">
					<input type="hidden" name="accomm_filter_type" value="${dto.accomm_filter_type }"> 
					<input type="hidden" id="min_filter_price" name="min_filter_price" value="${dto.min_filter_price }">
					<input type="hidden" id="max_filter_price" name="max_filter_price" value="${dto.max_filter_price }">
					
					
					
					<ul class="ft-choice">
						<!-- ***************** 1박가격 필터 *************** -->
						<li>
							<b>1박 가격</b>
							<div class="filter_var_wrap">
							
							    <div id="slider_range"></div>
							    
								<div class="var_filter var_price">
									<fmt:parseNumber var="min" integerOnly="true" 
									value="${dto.min_filter_price / 10000}"/>
									<fmt:parseNumber var="max" integerOnly="true" 
									value="${dto.max_filter_price / 10000}"/>
									<span class="v_price_min">${min }</span>
									<span class="v_price_max">${max }</span>
								</div>
							</div>
						</li>
						
						<!-- ******************************** -->
					
						
					
							
					<li>
					<input type="hidden" id="avg" name="avg" value="${dto.avg}">
					
						<b>평점</b>
						<div class="filter_var_wrap">
						
							<div id="slider-range-max"></div>
							
							<div class="var_filter var_avg">
								<fmt:parseNumber var="avg" integerOnly="true" value="${dto.avg}"/>
								<span class="v_avg">${dto.avg }점</span>
							</div>
						</div>
					</li>	
						
						
						<li>
							<b>숙박시설 및 등급</b>
							<div class="tier_wrap">
								
								<span class="tier" id="tier1">
									<input type="checkbox" id="filter1" class="tier_ck" 
									name="tiers" value="false" checked> 
										1성급
								</span>
								
								<span class="tier" id="tier2">
									<input type="checkbox" id="filter2" class="tier_ck" 
									name="tiers" value="false" checked> 
										2성급
								</span>
								
								<span class="tier" id="tier3">
									<input type="checkbox" id="filter3" class="tier_ck" 
									name="tiers" value="false" checked> 
										3성급
								</span>
								
								<span class="tier" id="tier4">
									<input type="checkbox" id="filter4" class="tier_ck" 
									name="tiers" value="false" checked> 
										4성급
								</span>
								
								<span class="tier" id="tier5">
									<input type="checkbox" id="filter5" class="tier_ck" 
									name="tiers" value="false" checked> 
										5성급
								</span>
								
								<span class="tier" id="tier6">
									<input type="checkbox" id="filter6" class="tier_ck" 
									name="tiers" value="false" checked> 
										성급없음
								</span>
							</div>
						</li>
						<li class="filter_btn_wrap">
							<input type="submit" id="left_filter_btn" class="btn100 pink" value="적용 GO!">
							<!-- <button id="left_filter_btn" class="btn100 pink">적용 GO!</button> -->
						</li>
					</ul>
			</div>

			<div class="filter-right">
				<div class="ft-header">
					<h2>${dto.destination }</h2>
					<ul class="ft-btn-wrap">
						<li>
							<button type="button" class="filter_accomm_type" onclick="roomFilter(this.form,0)">
								<h3>전체</h3>
								<p>All</p>
							</button>
						</li>
						<li>
							<button type="button" class="filter_accomm_type" onclick="roomFilter(this.form,1)">
								<h3>호텔</h3>
								<p>Hotel</p>
							</button>
						</li>
						<li>
							<button type="button" class="filter_accomm_type" onclick="roomFilter(this.form,2)">
								<h3>모텔</h3>
								<p>Motel</p>
							</button>
						</li>
						<li>
						<button type="button" class="filter_accomm_type" onclick="roomFilter(this.form,3)">
							<h3>펜션</h3>
							<p>Pension</p>
						</button>
						</li>
						<li>
							<button type="button" class="filter_accomm_type" onclick="roomFilter(this.form,4)">
								<h3>게스트하우스</h3>
								<p>Guest House</p>
							</button>
						</li>
					</ul>
				</div>
			</form>

				<!-- 객실타입 -->
				
				<div class="ft-right-center">
					<c:forEach var="item" items="${list }">
						<ul class="lodging">
							<li>
								<a href="${cpath }/room/room_detail/${item.accomm_idx }">
									<img src="${cpath }/resources/img/index-room/main.jpg"/>
								</a>
							</li>
							<li>
								<h2>${item.accomm_name}</h2>
								<p>
									<span class=" yellow-f">
										<c:choose>
											<c:when test="${item.accomm_avg == 5 }">
												★★★★★
											</c:when>
											<c:when test="${item.accomm_avg >= 4 }">
												★★★★☆
											</c:when>
											<c:when test="${item.accomm_avg >= 3 }">
												★★★☆☆
											</c:when>
											<c:when test="${item.accomm_avg >= 2 }">
												★★☆☆☆
											</c:when>
											<c:when test="${item.accomm_avg >= 1 }">
												★☆☆☆☆
											</c:when>
											<c:when test="${item.accomm_avg >= 0 }">
												☆☆☆☆☆
											</c:when>
										</c:choose>
									</span>
									${item.accomm_avg } (${item.count })
								</p>
							</li>
							<!-- 모텔이 아니면 -->
							<c:if test="${item.accomm_type != 2 }">
								<li class="lodging-price hotelPrice">숙박 : ${item.accomm_checkin } 부터 &nbsp;	<span><fmt:formatNumber value="${item.minprice2 }" pattern="###,###"/></span>&nbsp;원</li>
							</c:if>
							<!-- ACCOMETPYE 2 : 모텔 -->
							<c:if test="${item.accomm_type == 2 }">
								<li class="lodging-price">대실 : ${item.room_hire_time } 시간&nbsp; <span><fmt:formatNumber value="${item.minprice1 }" pattern="###,###"/></span>&nbsp;원
								</li>
								<li class="lodging-price">숙박 : ${item.accomm_checkin } 부터 &nbsp;<span><fmt:formatNumber value="${item.minprice2 }" pattern="###,###"/></span>&nbsp;원
								</li>
							</c:if>
							
							<!-- 예약 버튼 -->
 							<li class="lodging-btn"><a class="btn01 pink reserBtn"
								href="${cpath }/room/room_detail/${item.accomm_idx }">예약</a></li>
							<li class="address">${item.accomm_address }</li>
						</ul>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>

</div>

<%@ include file="../footer.jsp"%>

<script async src="https://buttons.github.io/buttons.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<!-- <script src="https://unpkg.com/lightpick@latest/lightpick.js"></script> -->
<script src="${cpath }/resources/js/calender/lightpick.js"></script>
<script src="${cpath }/resources/js/demo.js"></script>

<script>

	//달력 박 출력
	var start = $('#demo-3_1').val();
	var end = $('#demo-3_2').val();
	const nights = $('.nights');
	
	var split = start.split('/');
	start = split[1] + '/' + split[0] + '/' + split[2];
	split = end.split('/');
	end = split[1] + '/' + split[0] + '/' + split[2];
	
	const startDate = new Date(start);
	const endDate = new Date(end);
	nights.text(((endDate - startDate) / 1000 / 60 / 60 / 24) + '박');
	
	
	//다시 날짜 설정했을 때 박 출력해주기
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
	
	
	
	//.ft-btn-wrap li : All / 호텔 / 모텔 ...
	//.on-pink : 분홍 불 
	$(".ft-btn-wrap li").eq(${dto.accomm_filter_type}).addClass("on-pink");
	
	// 버튼 클릭시 숙소유형에 맞는 숙소 불러오기 
	function roomFilter(f,t){
		
		f.accomm_filter_type.value = t;
		
		f.submit();
	}
	
	
</script>

<script>
    // 필터: 1박 요금
    $(function(){

    	//막대기
        $("#slider_range").slider({
            // 막대기 디자인 초기값 세팅
        	range: true,
            min: 0,	
            max: 50,
            values : [${dto.min_filter_price / 10000},${dto.max_filter_price / 10000}], 
            
            // 막대기 밑에 가격 초기값 세팅 
            slide: function( evnet, ui ){
            	if(ui.values[0] != 0){
                    $(".v_price_min").text(
                        	ui.values[0] + "만원"
                    );	
            	}else{
                    $(".v_price_min").text(
                        	ui.values[0] + "원" 
                    );
            	}

                $(".v_price_max").text(
                    	ui.values[1] + "만원" 
                );
                //슬라이드 움직일때 마다 min_price , max_price의 최소 최대 가격 설정...
                //왜? form태그를 통하여 데이터를 넘겨주기 위해서...
              	$("#min_filter_price").val(ui.values[0] * 10000);
                $("#max_filter_price").val(ui.values[1] * 10000);
            }
        });
        
        // 가격 제어

        if(${min == 0} ){
        	$(".v_price_min").text("${min}원");
        }else{
        	$(".v_price_min").text("${min}만원");
        }
        $(".v_price_max").text("${max}만원"); 
 
    });
    
</script>
    
<script>
// 필터: 평점
  $(function() {
    $( "#slider-range-max").slider({
      range: "max",
      min: 0,
      max: 5,
      value: [${dto.avg}],
      slide: function( event, ui ) {
        $(".v_avg").text( ui.value + "점");
        $("#avg").val(ui.value);
      }
    });
    	$(".v_vag").text("${dto.avg}점"); 
  });
  

</script>


<script>
// 필터: 숙박시설 및 등급

// 반복클릭 불
$(".tier").each(function(index){
	$(this).attr("data-index", index);
}).click(function(){
	
	var i = $(this).attr("data-index");
	
	if($(".tier").eq(i).hasClass("filter_pink") === true){
		$(".tier").eq(i).removeClass("filter_pink");
		// 한번 더 클릭했을때 value="false"
		$(".tier .tier_ck").eq(i).val("false");
		
	}else{
		$(".tier").eq(i).addClass("filter_pink");
		// 1성급을 클릭했을때 value="true" 
		$(".tier .tier_ck").eq(i).val("true");
	}

	
});

var tiersArray = new Array();

<c:forEach items="${dto.tiers}" var="t">
	tiersArray.push("${t}");
</c:forEach>

for(var i = 0; i < tiersArray.length; i++){
	if(tiersArray[i] === "true"){
		$(".tier").eq(i).addClass("filter_pink");
	}
}

</script>




</body>
</html>