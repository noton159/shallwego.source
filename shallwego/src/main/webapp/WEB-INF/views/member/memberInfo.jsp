<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../source.jsp"%>

<link href="${cpath }/resources/css/reservation/reservation.css"
	rel="stylesheet" type="text/css">
<link href="${cpath }/resources/css/member/memberInfo.css"
	rel="stylesheet" type="text/css">
<link href="${cpath }/resources/css/board/board.css" rel="stylesheet"
	type="text/css">

<script src="${cpath }/resources/js/board/board.js"></script>
<script src="${cpath }/resources/js/member/memberInfo.js"></script>

<%@ include file="../header.jsp"%>

<div class="wrap-in back-gray">

	<section class="section">
		<div class="section-in2">

			<div class="rv-left">
				<ul>
					<li class="on-click rv-menu">회원정보</li>
					<li class="rv-menu">쿠폰</li>
				</ul>
			</div>

			<!-- rv-right -->
			<div class="rv-right">

				<div class="on rv-on coupon-wrap">
					<!-- info-re -->
					<ul class="rv-right-content memberInfo-content info-front">
						<li class="member-img-wrap">
							<div class="member-img">
								<!-- 만약에 유저의 profile이 있으면 유저가 올린 사진을 올리고
                                    	유저가 이미지 등록을 안했다면 profile.png를 띄워준다.  -->
	                           	<c:if test="${!empty login }">
	                           		<c:if test="${!empty login.profile }">
	                           			<img src="${cpath }/resources/${login.userid }/${login.profile}"/>
	                           		</c:if>
	                           		<c:if test="${empty login.profile }">
	                           			<img src="${cpath }/resources/img/header/profile.png"/>
	                           		</c:if>
	                           	</c:if>
							</div>
						</li>
						<li><span class="info-title gray-f">아이디</span> <span
							class="info">${login.userid }</span></li>
						<li><span class="info-title gray-f">비밀번호</span> <span
							class="info">********</span></li>
						<li><span class="info-title gray-f">이름</span> <span
							class="info">${login.username }</span></li>
						<li><span class="info-title gray-f">생년월일</span> <span
							class="info">${login.birth }</span></li>
						<li><span class="info-title gray-f">이메일</span> <span
							class="info">${login.email }</span></li>
						<li><span class="info-title gray-f">휴대폰 번호</span> <span
							class="info">${login.phone_number }</span></li>
						<li>
							<button class="btn02 pink-b info-btn">편집</button>
						</li>
					</ul>

					<!-- info-re -->
					<form action="${cpath }/member/infoUpdate" name="input" method="post"
						enctype="multipart/form-data">
						<input type="hidden" name = "userid" value="${login.userid }">
						<ul class="rv-right-content memberInfo-content info-back">
							<li class="member-img-wrap">
								<div class="member-img">
								
	                           	<c:if test="${!empty login }">
	                           		<c:if test="${!empty login.profile }">
	                           			<img id="member-img" src="${cpath }/resources/${login.userid }/${login.profile}"/>
	                           		</c:if>
	                           		<c:if test="${empty login.profile }">
	                           			<img id="member-img" src="${cpath }/resources/img/header/profile.png"/>
	                           		</c:if>
	                           	</c:if>
								
								
								</div>
								<div class="member-img-btn">
									<h1>
										<button class="btn02">사진편집</button>
										<!--                                         	<form method="POST" id="img_update" > -->
										<input type="file" name="photo" id="input-image"
											class="fileBtn" />
										<!--                                         	</form> -->
									</h1>
								</div>
							</li>
							<input type="hidden" id="user_idx" name="user_idx"
								value="${login.user_idx }">
							<!-- 아이디 입력 -->
							<li><span class="info-title gray-f">아이디</span> <span
								class="info">${login.userid }</span></li>
							<!-- 비밀번호 입력 -->
							<li><span class="info-title gray-f">비밀번호</span> <span
								class="info"> <input class="text01 password" id="userpw"
									name="userpw" type="password" readonly placeholder="********" />
							</span></li>
							<!-- 이름 입력 -->
							<li><span class="info-title gray-f">이름</span> <span
								class="info"> <input class="text02" id="username"
									name="username" type="text" value="${login.username }" />
							</span></li>
							<!-- 생년월일 입력 -->
							<li><span class="info-title gray-f">생년월일</br>('/'를 포함하고
									입력해주세요.)
							</span> <span class="info"> <input class="text02" id="birth"
									name="birth" type="text" value="${login.birth }" />
							</span></li>
							<!-- 이메일 입력 -->
							<li><span class="info-title gray-f">이메일</span> <span
								class="info"> <input class="text01" id="email"
									name="email" type="email" value="${login.email }" />
							</span></li>
							<!-- 휴대폰번호 입력 -->
							<li><span class="info-title gray-f">휴대폰 번호<br>('-'를 생략하고
									입력해주세요.)
							</span> <span class="info"> <input class="text01"
									id="phone_number" name="phone_number" type="text"
									value="${login.phone_number }" />
							</span></li>
							<li class="info-re-btn">
								<!--//<button id="myInfo-re-btn" class="btn02 pink">완료</button> -->
								<input type="submit" id="myInfo-re-btn" class="btn02 pink"
								value="완료" onclick="inputCheck(input)">
								<button class="btn02 pink-b  cancell">취소</button>
							</li>
						</ul>
					</form>
				</div>

				<!-- coupon wrap -->
				<div class="rv-on coupon-wrap">
					<div class="coupon-top">
						<span>쿠폰코드</span>
						<form method="post" action="${cpath }/member/registCoupon">
							<input type="hidden" name="customer_idx"
								value="${login.user_idx }"> <input class="text02"
								name="coupon_serial_number" type="text" value="A548G23" />
							<button class="btn01 pink-b gray">등록</button>
						</form>
					</div>
					<c:forEach var="couponList" items="${couponList }">
						<ul class="content">
							<li>
								<h1>${couponList.coupon_name }</h1>
								<h1>&gt;</h1>
							</li>
							<li><span><b class="gray-f">유효기간</b></span> <span>${couponList.date }</span>
							</li>
						</ul>
					</c:forEach>
				</div>

			</div>
		</div>
	</section>

</div>

<%@ include file="../footer.jsp"%>


<!-- 회원정보 수정 -->
<script>
const uri = '${uri}'; 
const cpath = '${cpath}';



function readImage(input) {
    // 인풋 태그에 파일이 있는 경우
    if(input.files && input.files[0]) {
        // 이미지 파일인지 검사 (생략)
        // FileReader 인스턴스 생성
        
        var filesArr = Array.prototype.slice.call(input.files);
        
        filesArr.forEach(function(f){
            if(!f.type.match("image.*")){
                alert(" 확장자는 이미지 확장자만 가능합니다!!");
                return;
            }
        });

        const reader = new FileReader();
        // 이미지가 로드가 된 경우
        reader.onload = e => {
            const previewImage = document.getElementById("member-img");
            previewImage.src = e.target.result;
        }
        // reader가 이미지 읽도록 하기
        reader.readAsDataURL(input.files[0]);
    }
}

// input file에 change 이벤트 부여
const inputImage = document.getElementById("input-image");
inputImage.addEventListener("change", e => {
    readImage(e.target);
});


$('.cancell').click(function(event){
	event.preventDefault();
	location.replace(cpath + "/member/memberInfo");
});

// 비밀번호 확인
$('.password').blur(function(){
   	
	var pw = $("#userpw").val();
	var pw2 = $("#userpw2").val();
	
	var num = pw.search(/[0-9]/g);
	var eng = pw.search(/[a-z]/ig);
	var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
 		
	// 비밀번호에 영문, 숫자, 특수문자 포함해라
	//	- 모든 조건을 만족했다면 비밀번호랑 컨펌비밀번호 확인체크해라
	if(pw.length < 8 || pw.length > 20){
		$('#pwMsg').text('8자리 ~ 20자리 이내로 입력해주세요.');
		$("#pwMsg").css('color', 'red');
	} else if(pw.search(/\s/) != -1){
		$('#pwMsg').text('비밀번호는 공백없이 입력해주세요.');
		$("#pwMsg").css('color', 'red');
	} else if(num < 0 || eng < 0 || spe < 0){
		$('#pwMsg').text('영문, 숫자, 특수문자를 혼합하여 입력해주세요.');
		$("#pwMsg").css('color', 'red');
	} else {
		$('#pwMsg').text('');
		if(pw != '' && pw2 != ''){ // 페스워드와 컨펌 페스워드에 값이 있을때 
			if(pw != pw2){
				$('#pwMsg2').text('비밀번호가 일치하지 않습니다.');
    			$("#pwMsg2").css('color', 'red');
			}else {
				$('#pwMsg2').text('성공!');
				$("#pwMsg2").css('color', 'blue');
				samePw = true;
			}
		}
	}
});


</script>
</body>
</html>