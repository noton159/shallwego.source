<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../source.jsp" %>
    <link href="${cpath }/resources/css/member/login.css" rel="stylesheet" type="text/css"> 
    <link href="${cpath }/resources/css/member/join.css" rel="stylesheet" type="text/css">
    <link href="${cpath }/resources/css/member/agree.css" rel="stylesheet" type="text/css">
    
    <script src="${cpath }/resources/js/member/join.js"></script> 
    <script src="${cpath }/resources/js/member/modal.js"></script> 
    <script src="${cpath }/resources/js/member/agree_check.js"></script> 
    
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
<%@ include file="../header.jsp" %>
    <!-- body -->
    	
        <!-- modal -->

        <!-- 서비스이용약관 -->
        <div class="agree_daddy1">
            <div class="agree_mom1">
                <div class="">
                    <div class="agree_div">
                        <div class="agree_div_top">
                            <div class="agree_title">서비스이용약관</div>
                            <div class="agree_x_button">
                                <button class="agree_x1"></button>
                            </div>
                        </div>
                        <div class="agree_div_body">
                            <table class="agree_table">
                                <tbody class="agree_tbody">
                                    <tr rowspan="1" class="agree_tr">
                                        <th colspan="1" class="agree_th">국내 숙소 이용규칙 동의</th>
                                        <td colspan="1" class="agree_td">
                                            * 각 숙박시설의 규정(규칙 및 약관 등)을 준수해야 합니다. 숙박시설 규정을 위반 시 입실 불가,
                                            퇴실 조치, 추가요금 등이 발생할 수 있으며, 이에 대한 모든 책임은 예약 및 이용 고객님에게 있으므로
                                            숙박시설의 이용규칙과 시설 현황을 반드시 확인하시기 바랍니다.<br><br>
                 ==                           * 규정 내 이용 가능 인원을 초과할 경우, 이용 불가 통보 또는 초과 인원에 대한 추가 요금이 발생할 수
                                            있으며, 이에 대한 모든 책임은 예약자 및 이용 고객님에게 있습니다.<br><br>
                                            * 미성년자 투숙 시 청소년보호법 등 관계 법령에 따라 미성년자(만 19세 미만 청소년)의 경우 혼숙이 금지
                                            되며, 법정대리인 동행 없이 혼숙이 불가한 점 반드시 유의하여 주시길 바랍니다. 또한 해당 사유로 인하여 
                                            현장에서 입실이 불가할 경우 취소 및 환불이 불가합니다.<br><br>
                                            * 각 숙박시설 정보는 예약을 위한 참고 자료입니다. 숙박시설 내 자체 변동이나 기타 사유로 인해 실제와
                                            차이가 있을 수 있으며, 이에 대해 (주)떠나볼까 는 책임을 지지 않습니다.<br><br>
                                            * 객실배정에 따른 요청사항(금연룸, 고층 등)은 숙박시설에 전달되나, 최종 반영 여부는 예약하신 숙박시설의
                                            결정사항이므로 (주)떠나볼까 에서 보장할 수 없는 사항임을 유의하여 주시기 바랍니다.                                                                                         
                                        </td>
                                    </tr>
                                </tbody>
                                <tfoot class="agree_tfoot">
                                    <td colspan="2">
                                        <em>위 서비스이용약관은 거부할 수 있으며, 거부할 경우 서비스 이용이 제한됩니다.</em>
                                    </td>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- 개인정보 제 3자 동의 -->
        <div class="agree_daddy2">
            <div class="agree_mom2">
                <div>
                    <div class="agree_div">
                        <div class="agree_div_top">
                            <div class="agree_title">개인정보 제3자 제공 동의</div>
                            <div class="agree_x_button">
                                <button class="agree_x2"></button>
                            </div>
                        </div>
                        <div class="agree_div_body">
                            <table class="agree_table">
                                <tbody class="agree_tbody">
                                    <tr rowspan="1" class="agree_tr">
                                        <th colspan="1" class="agree_th">제공받는자</th>
                                        <td colspan="1" class="agree_td">예약할려는 호텔 이름 (ex 웨스턴 조선 서울)</td>
                                    </tr>
                                    <tr rowspan="1" class="agree_tr">
                                        <th colspan="1" class="agree_th">제공 목적</th>
                                        <td colspan="1" class="agree_td">예약 구매한 상품 서비스의 제공 및 계약의 이행
                                            <br>(이용자 및 이용정보 확인), 민원 처리 등 소비자 분쟁해결
                                        </td>
                                    </tr>
                                    <tr rowspan="1" class="agree_tr">
                                        <th colspan="1" class="agree_th">제공 항목</th>
                                        <td colspan="1" class="agree_td">예약번호, 예약자 정보(예약자명, 이메일, 휴대폰번호)
                                             또는 투숙자 정보(투숙자명, 이메일,휴대폰번호)
                                        </td>
                                    </tr>
                                    <tr rowspan="1" class="agree_tr">
                                        <th colspan="1" class="agree_th">이용 및 보유기간</th>
                                        <td colspan="1" class="agree_td">개인정보 이용목적 달성시 까지
                                            <br>단, 관계법령에 의하여 보존할 필요성이 있는 경우 그 시점까지 보존 후 지체 없이 폐기
                                        </td>
                                    </tr>
                                </tbody>
                                <tfoot class="agree_tfoot">
                                    <td colspan="2">
                                        <em>위 개인정보 제3자 제공 동의를 거부할 수 있으며, 거부할 경우 서비스 이용이 제한됩니다.</em>
                                    </td>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    	<!-- 개인정보처리방침 -->
        <div class="agree_daddy3">
            <div class="agree_mom3">
                <div>
                    <div class="agree_div">
                        <div class="agree_div_top">
                            <div class="agree_title">개인정보처리방침</div>
                            <div class="agree_x_button">
                                <button class="agree_x3"></button>
                            </div>
                        </div>
                        <div class="agree_div_body">
                            <table class="agree_table">
                                <tbody class="agree_tbody">
                                    <tr rowspan="1" class="agree_tr">
                                        <th colspan="1" class="agree_th">분류</th>
                                        <td colspan="1" class="agree_td">필수정보</td>
                                    </tr>
                                    <tr rowspan="1" class="agree_tr">
                                        <th colspan="1" class="agree_th">수집 및 이용동의 목적</th>
                                        <td colspan="1" class="agree_td">계약의 이행 및 서비스 제공, 예약 구매 관심상품 내역,
                                            결제대금의 청구, 상담 불만 민원처리, 고지, 안내사항 전달, 상품 서비스 이용실적 정보 통계 분석,
                                            상품 서비스 개선 및 추천, 불법 부정 이용방지, 개인정보 유효기간제 준수
                                        </td>
                                    </tr>
                                    <tr rowspan="1" class="agree_tr">
                                        <th colspan="1" class="agree_th">항목</th>
                                        <td colspan="1" class="agree_td">* 예약 & 구매 시 :<br><br>
                                            * 공통 - 예약내역(예약일시, 결제금액, 업체명), 디바이스 ID, 휴대폰 번호, 서비스이용기록, IP주소,
                                            접속로그, Cookie, 광고식별자, 단말기OS와 버전, 단말기 모델명, 브라우저 버전<br><br>
                                            * 예약자 및 구매자 - 이름, 휴대폰 번호, (필요한 서비스의 경우)생년월일<br><br>
                                            * 예약자와 방문자가 다른 경우 - 방문자 및 탑승자의 이름, 휴대폰 번호, (필요한 서비스의 경우)생년월일<br><br>
                                            * 해외숙소 예약 시 - 예약자의 이메일 주소, 투숙객의 영문 이름, (만 17세 이하 자녀 동반시) 자녀의 나이<br><br>
                                            * 현금 환불 요청 시 : 계좌번호 및 예금주명
                                        </td>
                                    </tr>
                                    <tr rowspan="1" class="agree_tr">
                                        <th colspan="1" class="agree_th">보유 및 이용기간</th>
                                        <td colspan="1" class="agree_td">
                                            * 이용종료일로부터 상담 등 민원처리, 정산 및 환불 처리를 위해 30일 후 삭제<br><br>
                                            * 관계법령에 따라 보존할 필요가 있는 경우 해당 법령에서 요구하는 기한까지 보관 (예 : 구매 회원의 경우 5년간,
                                            IP 주소의 경우 3개월)
                                        </td>
                                    </tr>
                                </tbody>
                                <tfoot class="agree_tfoot">
                                    <td colspan="2">
                                        <em>위 개인정보처리방침은 거부할 수 있으며, 거부할 경우 서비스 이용이 제한됩니다.</em>
                                    </td>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>        
    <div class="wrap-in back-white">

            <section class="section">
                <div class="section-in">
                    <div class="join-wrap">
                    
                    <form method="POST" id="join-form">
                        <ul class="join">
                        <li>
                            <h1>회원가입</h1>
                        </li>
                        
                        <!-- 아이디 입력 -->
                        <li>
                            <p><span class="pink-f">•</span> 아이디</p>
                            <input id="userid" class="text01 join-input" name="userid" type="text" placeholder="아이디를 입력하세요." autofocus/>
                        	<span class="msg " id="idMsg"></span>
                        </li>
                        
                        <!-- 비밀번호 입력 --> 
                        <li>
                            <p><span class="pink-f">•</span> 비밀번호</p>
                            <input id="userpw" class="text01 password join-input"  name="userpw" type="password" placeholder="비밀번호를 입력하세요."/>
                        	<span class="msg" id="pwMsg"></span>
                        </li>
                        
                        <!-- 비밀번호 확인 입력 -->
                        <li>
                            <p><span class="pink-f">•</span> 비밀번호 확인</p>
                            <input id="userpw2" class="text01 password join-input"  name="userpw2" type="password" placeholder="비밀번호를 입력하세요."/>
                        	<span class="msg" id="pwMsg2"></span>
                        </li>
                        
                        <!-- 이름 입력 -->
                        <li>
                            <p><span class="pink-f">•</span> 이름</p>
                            <input class="text01 join-input"  name="username" type="text" placeholder="이름을 입력하세요."/>
                        </li>
                        
                        <!-- 생일 입력 -->
                        <li>
                            <p><span class="pink-f">•</span> 생년월일</p>
                            <input class="text01 join-input"  name="birth" type="text" placeholder="mm/dd/yyyy"/>
                        </li>
                        
                        <!-- email 입력 -->
                        <li class="email">
	                        <p><span class="pink-f">•</span> 이메일</p>
	                        <input class="text01-5 join-input" id="email" name="email" type="email" placeholder="이메일을 입력하세요."/>
	                        <input type="button" id="sendMailForm" class="btn04 pink" value="전송"/>
	                        <span class="msg" id="emailMsg"></span>
                        </li>

						<!-- email 인증 입 -->
                        <li class="email-cf">
	                        <p class="pink-f"><b>인증번호</b></p>
	                        <input class="text01-5 join-input" id="auth" name="auth" type="text" placeholder="인증번호를 입력하세요."/>
	                        <input type="button" id="authMailForm" class="btn04 pink" value="확인">
	                            
	                        <span class="msg" id="authMailMsg"></span>
                        </li>

						<!-- 폰번호 입력 -->
                        <li class="phone">
                            <p><span class="pink-f">•</span> 휴대폰 번호</p>
                            <select class="text03" name="pnum1">
                                <option>010</option>
                                <option>011</option>
                                <option>016</option>
                                <option>017</option>
                                <option>018</option>
                                <option>019</option>
                            </select>
                            <span class="desh">-</span>
                            <input class="text03 join-input"  name="pnum2" type="text" maxlength="4"/>
                            <span class="desh">-</span>
                            <input class="text03 join-input"  name="pnum3" type="text" maxlength="4"/>
                        </li>

						<!-- 약관동의 입력 -->
                        <li class="terms">
                            <p class="pink-f"><span class="pink-f">•</span> <b>약관동의</b></p>
                            
                            <section class="second_section">
                                <div class="agree_box">
                                    <div class="agree_box_div">
                                        <div class="agree_box_label">
                                            <!-- <span class="agree_checkBox"></span> -->
                                            <input id="check_all" class="agree_checkBox" type="checkbox" name="all_agree">
                                            <label for="check_all" class="agree_box_a">전체 약관을 확인하고 결제에 동의합니다</label>                                    
                                        </div>
                                    </div>
                                    <div class="agree_box_div1">
                                        <div class="agree_box_label">
                                            <!-- <span class="agree_checkBox"></span> -->
                                            <input id="check_1" class="agree_checkBox essential" type="checkbox" name="service_agree">
                                            <label for="check_1" class="agree_box_a">서비스이용약관(필수)</label>
                                            <div class="agree_box_a1 ag_modal1">자세히 보기</div>
                                        </div>
                                    </div>
                                    <div class="agree_box_div1">
                                        <div class="agree_box_label">
                                            <!-- <span class="agree_checkBox"></span> -->
                                            <input id="check_2" class="agree_checkBox essential" type="checkbox" name="service_agree">
                                            <label for="check_2" class="agree_box_a">개인정보제3자제공동의(필수)</label>
                                            <div class="agree_box_a1 ag_modal2">자세히 보기</div>
                                        </div>
                                    </div>
                                    <div class="agree_box_div1">
                                        <div class="agree_box_label">
                                            <!-- <span class="agree_checkBox"></span> -->
                                            <input id="check_3" class="agree_checkBox essential" type="checkbox" name="service_agree">
                                            <label for="check_3" class="agree_box_a">개인정보처리방침(필수)</label>
                                            <div class="agree_box_a1 ag_modal3">자세히 보기</div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                            
                        </li>

                        <li>
                            <input type="submit" id="join-btn" class="btn100" value="가입"/>
                        </li>
                    </ul>
                    </form>
                    
                    
                    
                </div>
                </div>
            </section>
        </div>

<%@ include file="../footer.jsp" %>

<!-- 아이디/비밀번호 체크 -->
<script>

const cpath = '${cpath}';
let samePw = false;
    	
$('#userid').blur(function(){
	if($("#userid").val() == ''){
		$("#idMsg").text('아이디를 입력하세요.');
		$("#idMsg").css('color', 'red');
		$("#userid").focus();
	} else {
		$.ajax({
			url: cpath + '/member/checkId',
			method: 'POST',
			data: {
				userid: $('#userid').val()
				},
			dataType: 'text',
			success: function(returnValue){
				$('#idMsg').text(returnValue);
				if(returnValue === '사용가능한 ID입니다!'){
					$('#idMsg').css('color', 'blue')
				} else {
					$('#idMsg').css('color', 'red');
				}
			},
			error: function(){
				$('#idMsg').text('서버 통신 실패');
			}
		});
	}
});
   	
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

  
<!-- 이메일 인증 -->
<script>
    
// 이메일 형태 확인
function email_check(email) {    
	var regex=/([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    return (email != '' && email != 'undefined' && regex.test(email)); 
}

// 인증번호 전송버튼 클릭 시
$('#sendMailForm').click(function(event){
	event.preventDefault();
	
    var email = $("#email").val();
    const emailMsg = $("#emailMsg");
    
    if( email == '' || email == 'undefined') {
    	emailMsg.text('이메일을 입력해 주세요.');
    	email.focus();
    }
    else if(! email_check(email) ) {	
    	emailMsg.text('잘못된 이메일 형식입니다.');
    	email.focus();
    }
    else {
		$('.email-cf').css('display', 'list-item');
		const url = cpath + '/mailto/' + email + '/';
		const opt = {
			method: 'GET',
		}
		fetch(url, opt)
		.then(resp => resp.text())
		.then(text => {
			if(text.length == 128) {
				emailMsg.text('입력한 이메일로 인증 번호를 전송했습니다');
				emailMsg.css('color', 'blue');
				emailMsg.css('fontWeight', 'bold');
			}
			else {
				emailMsg.text('이메일을 확인하지 못했습니다');
				emailMsg.css('color', 'red');
				emailMsg.css('fontWeight', 'bold');
			}
		});
    }
});

// 인증번호 확인버튼 클릭 시
let authResult = false;

$('#authMailForm').click(function(event){
	event.preventDefault();
	
	const authMailMsg = $("#authMailMsg");
	var authNumber = $("#auth").val();

	const url = cpath + '/getAuthResult/' + authNumber;
	const opt = {
		method: 'GET',
	}
	fetch(url, opt)
	.then(resp => resp.text())
	.then(text => {
		if(text == 'true') {
			authMailMsg.text('인증 성공 !!');
			authMailMsg.css('color', 'blue');
			authMailMsg.css('fontWeight', 'bold');
			authResult = true;
		}
		else {
			authMailMsg.text('인증 실패 !!');
			authMailMsg.css('color', 'red');
			authMailMsg.css('fontWeight', 'bold');
			authResult = false;
		}
	});
});

</script>


<!-- 회원 가입 버튼 -->
<script>
    
// 가입버튼 클릭 시
$('#join-btn').click(function(event){
	event.preventDefault();
		
    // 인풋박스가 하나라도 비어있을 경우 
    const inputs = document.querySelectorAll('.join-input');
    for(let i = 0; i < inputs.length; i++){
    	const input = inputs[i];
    	if(input.value === ''){
    		alert('모든 항목을 입력해주세요.');
    		input.focus();
    		return;
    	}
    }
    
    if(!authResult){
    	alert('인증번호가 틀렸습니다.');
    }else if(!samePw){
    	alert('비밀번호 입력 오류 입니다');
    	$('#userpw').focus();
    }else{
	    if($("#check_1").is(":checked") == false){
            alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
        }else if($("#check_2").is(":checked") == false){
            alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
        }else if($("#check_3").is(":checked") == false){
            alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
        }else{
            alert("회원가입에 성공하셨습니다.");
            document.getElementById('join-form').submit();
        }
    }
});     

</script>
    
</body>
</html>    