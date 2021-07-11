<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../source.jsp" %>
    <link href="${cpath }/resources/css/member/login.css" rel="stylesheet" type="text/css">     
    <link href="${cpath }/resources/css/member/join.css" rel="stylesheet" type="text/css"> 
    
    <script src="${cpath }/resources/js/member/join.js"></script> 
    <script src="${cpath }/resources/js/member/login.js"></script> 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
<%@ include file="../header.jsp" %>

        <div class="wrap-in back-white">

            <section class="section">
                <div class="section-in">
                    <div class="login-wrap">
                    
                    <form method="POST" action="${cpath }/member/login" id="login">
                    <!-- 210330 -->
	                    <ul class="login log-on">
	                        <li>
	                            <h1>로그인</h1>
	                            <p>내손안의 여행, 떠나볼까?</p>
	                        </li>
	                        <li>
	                        	<c:if test="${empty cookie.userid.value }">
	                            <input class="text01 loginValue" type="text" id="userid" name="userid" value="noton157" placeholder="아이디를 입력하세요."/>
	                        	</c:if>
	                        	<c:if test="${!empty cookie.userid.value }">
	                            <input class="text01 loginValue" type="text" id="userid" name="userid" value="${cookie.userid.value }" placeholder="아이디를 입력하세요."/>
	                        	</c:if>
	                            <input class="text01 loginValue" type="password" id="userpw" name="userpw" value="1q2w3e4r!@" placeholder="비밀번호를 입력하세요."/>
	                            
	                            <span class="msg" id="loginMsg"></span>
	                        </li>
	                        <li>
	                            <button id="login-btn" class="btn100">로그인</button>
	                        </li>
	                        
	                        <li class="pw-find">
	                            <p class="pink-f"><b>비밀번호 찾기</b></p>
	                        </li>
	                        <hr color="#d3d3d3">
	                        <li class="login-join-wrap">
	                            <span><label style="cursor: pointer;"><input type="checkbox" id="useridSave" name="storeid" ${not empty cookie.userid ? 'checked' : '' } />아이디 저장</label></span>
	                            <span class="pink-f"><a href="${cpath }/member/join"><b>회원가입</b></a></span>
	                        </li>
	                    </ul>
					</form>
	
	
	                    <!-- 210330 -->
	                    <ul class="login passwordFind">
	                        <li>
	                            <h1>비밀번호 재설정</h1>
	                            <p>비밀번호를 잊어버리셨나요?<br/>
	                                	이메일을 통해 다시 설정하세요!</p>
	                        </li>
		                        <li class="email">
		                            <input class="text01-5 email-input" type="email" id="email" name="email" placeholder="이메일을 입력하세요."/>
		                            <input type="button" id="sendMailForm" class="btn04 pink" value="전송"/>
		                            
			                        <span class="msg" id="emailMsg"></span>
		                        </li>
		
		                        <li class="email-cf">
		                            <input class="text01-5 email-input" type="text" id="auth" name="auth" placeholder="인증번호를 입력하세요."/>
		                            <input type="button" id="authMailForm" class="btn04 pink" value="확인">
			                            
			                        <span class="msg" id="authMailMsg"></span>
		                        </li>
		                
		                        <li class="pwConfirm-btn">
		                            <input type="submit" id="lo-confirm-btn" class="btn100" value="확인"/>
		                        </li>
	                    </ul>
	                    
	                    
	                  <ul class="login passwordFind2">
	                        <li>
	                            <h1>비밀번호 재설정</h1>
	                            <p>바꾸실 비밀번호를 입력하세요!</p>
	                        </li>
	                        
	                        <li class="pw-re">
	                            <input class="text01 pw-change" id="changepw" type="password" name="userpw" placeholder="비밀번호를 입력하세요."/>
	                            
		                        <span class="msg" id="pwMsg"></span>
	                        </li>
	
	                        <li class="pw-re">
	                            <input class="text01 pw-change" id="changepw2" type="password" name="userpw2" placeholder="확인 비밀번호를 입력하세요."/>
		                            
		                        <span class="msg" id="pwMsg2"></span>
	                        </li>
	                        
	                
	                        <li class="pwConfirm-btn">
	                            <input type="submit" id="lo-confirm-btn2" class="btn100" value="수정"/>
	                        </li>
	                    </ul>
                    
                    
                </div>
                </div>
            </section>
        </div>

<%@ include file="../footer.jsp" %>

<!-- 전역 변수 및 함수 선언 -->
<script>

const cpath = '${cpath}';
const check = true;

function checkBlank(inputs){
	for(let i = 0; i < inputs.length; i++){
    	const input = inputs[i];
    	if(input.value === ''){
    		alert('모든 항목을 입력해주세요.');
    		input.focus();
    		check = false;
    		return;
    	}
    }
}

</script>


<!-- 로그인 및 비밀번호 찾기 버튼 처리 -->
<script>

// 로그인 버튼 클릭 시
$('#login-btn').click(function(event){
	event.preventDefault();
			
	var id = $("#userid").val();
	var pw = $("#userpw").val();
	const loginMsg = $("#loginMsg");
			
	if(id === ''){
		loginMsg.text("아이디를 입력해주세요.");
		loginMsg.css('color', 'red');
		$("#userid").focus();
	} else if(pw === ''){
		loginMsg.text("비밀번호를 입력해주세요.");
		loginMsg.css('color', 'red');
		$("#userpw").focus();
	} else if (id !== '' && pw !== ''){
		$.ajax({
			url :  cpath + '/member/userCheck',
			method : 'POST',
			data :{userid: id, userpw: pw},
			dataType: 'text',
			success: function(returnValue){
				if(returnValue === "ID/Password가 일치하지 않습니다."){
					loginMsg.text(returnValue);
					loginMsg.css('color', 'red');
				}
				else {
					$('#login').submit();
				}
			}
		});
	}
});

// 비밀번호 찾기 버튼 클릭 시
$('.pw-find p').click(function(){
	$('.log-on').hide();
	$('.passwordFind').show();
});

</script>


<!-- 비밀번호 재설정시 이메일 인증 -->
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

// 인증 후 확인버튼 클릭 시
$('#lo-confirm-btn').click(function(event){
	event.preventDefault();
		 
	const inputs = document.querySelectorAll('.email-input');
	checkBlank(inputs);
		    
	if(!authResult){
		alert('인증번호가 틀렸습니다.');
	} else {
		$.ajax({
			url: cpath + '/member/emailCheck',
			method: 'POST',
			data: {email: $('#email').val()},
			dataType: 'text',
			success: function(emailValue){
				if(emailValue === '') {
					$('.passwordFind').hide();
					$('.passwordFind2').show();
				}else{
					alert(emailValue);
				}
			}
		})
	}
});

</script>


<!-- 재설정할 비밀번호 입력 후 처리 -->
<script>

let samePw = false;

$('.pw-change').blur(function(){
       	
   	var pw = $("#changepw").val();
   	var pw2 = $("#changepw2").val();
   	
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
// 수정 버튼 클릭 시
$('#lo-confirm-btn2').click(function(event){
	event.preventDefault();
		
	const inputs = document.querySelectorAll('.pw-change');
	checkBlank(inputs);
	
	if(samePw){
		const url = cpath + '/member/pwChange';
		const opt = {
			method : 'POST',
			body: JSON.stringify($('.pw-change').val()),
			headers: {
				'Content-Type': 'application/text'
			}
		};
		fetch(url, opt)
		.then(resp => resp.text())
		.then(text => {
			if(text == 1){
				alert('비밀번호가 변경되었습니다.');
				location.replace(cpath + '/member/login');
			}
			else{
				alert('비밀번호 변경에 실패하였습니다');
			}
		});
	}else {
		alert('비밀번호 변경에 실패하였습니다');
	}
});
	
</script>


</body>
</html>