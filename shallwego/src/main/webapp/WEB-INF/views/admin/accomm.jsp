<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../index_source.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>hotel입력창</title>
    <link href="../css/admin/accomm.css" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

<!-- 이름, 숫자로 호텔 모텔 구분, 호텔이미지 넣는 칸, 주소, 체크인 체크아웃 시간, 체크박스들(숙소소개, 편의시설, 이용안내, 예약공지, 이벤트/공지사항) -->
    
<!-- 위의 값들을 입력해서 return 1 이 오면 방들 정보 입력하는 페이지 띄워주기 -->    

<div class="wrap">
    <div class="wrap-in">
    <div class="logo"><a href="${cpath }/"><img src="${cpath }/resources/img/logo/logo.png"/></a></div>
        <form method="POST" enctype="multipart/form-data">
            <div class="insert_div_daddy">
                <div class="insert_div">
                    <div class="insert_div_space1">1호텔 2모텔 3펜션 4게하</div>
                    <div class="insert_div_space2">
                        <input id="num" class="insert_design" type="number" name="accomm_type" autofocus>
                    </div>
                </div>
                <div class="insert_div">
                    <div class="insert_div_space1">호텔이면 성급입력</div>
                    <div class="insert_div_space2">
                        <input class="insert_design" type="number" name="tier_number">
                    </div>
                </div>
                <div class="insert_div">
                    <div class="insert_div_space1">숙소 이름</div>
                    <div class="insert_div_space2">
                        <input class="insert_design" type="text" name="accomm_name">
                    </div>
                </div>
                <div class="insert_div">
                    <div class="insert_div_space1">숙소 주소</div>
                    <div class="insert_div_space2">
                        <input class="insert_long insert_design" type="text" name="accomm_address">
                    </div>
                </div>
                <div class="insert_div">
                    <div class="insert_div_space1">체크인 시간</div>
                    <div class="insert_div_space2">
                        <input class="insert_design" type="text" name="accomm_checkin">
                    </div>
                </div>
                <div class="insert_div">
                    <div class="insert_div_space1">체크아웃 시간</div>
                    <div class="insert_div_space2">
                        <input class="insert_design" type="text" name="accomm_checkout">
                    </div>
                </div>
                
                <!-- 여기까지는 무조건 입력해야 하는 값 -->
                
                <!-- 편의시설 name, img -->
                <div class="insert_div1">
                    <div class="insert_div_space1">숙소소개</div>
                    <div class="insert_div_space2">
                        <textarea name="accomm_intro" class="insert_textarea" cols="40" rows="5"></textarea>
                    </div>
                </div>
                
                <!-- 대표사진 아직  -->
                <div class="insert_div">
                    <div class="insert_div_space1">숙소 대표사진</div>
                    <div class="insert_div_space2">
                        <input multiple="multiple" id="acc_img" class="insert_design" type="file">
                        <input type="text" name="accomm_img" id="img_text">
                    </div>
                </div>
                <div class="insert_div2">
                    <div class="insert_div_space1">편의 시설들</div>
                    <div class="insert_div_space2">
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="1"><img class="icon_img" src="${cpath }/img/icon/spa.png">스파/월풀</label>
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="2"><img class="icon_img" src="${cpath }/img/icon/car.png">주차가능</label>                
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="3"><img class="icon_img" src="${cpath }/img/icon/swim.png">수영장</label>
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="4"><img class="icon_img" src="${cpath }/img/icon/sing.png">노래방</label>
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="5"><img class="icon_img" src="${cpath }/img/icon/wifi.png">와이파이</label>                
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="6"><img class="icon_img" src="${cpath }/img/icon/gogi.png">바베큐</label><br>
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="7"><img class="icon_img" src="${cpath }/img/icon/pc.png">객실내PC</label>
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="8"><img class="icon_img" src="${cpath }/img/icon/movie.png">무료영화</label>
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="9"><img class="icon_img" src="${cpath }/img/icon/fitness.png">피트니스</label>         
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="10"><img class="icon_img" src="${cpath }/img/icon/smoking.png">흡연가능</label>         
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="11"><img class="icon_img" src="${cpath }/img/icon/smokingNo.png">흡연금지</label>         
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="12"><img class="icon_img" src="${cpath }/img/icon/puppy.png">애견동반</label><br>
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="13"><img class="icon_img" src="${cpath }/img/icon/moring.png">조식운영</label>
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="14"><img class="icon_img" src="${cpath }/img/icon/super.png">편의점</label>
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="15"><img class="icon_img" src="${cpath }/img/icon/sunny.png">바다전망</label>
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="16"><img class="icon_img" src="${cpath }/img/icon/mountain.png">산전망</label>
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="17"><img class="icon_img" src="${cpath }/img/icon/city.png">시티뷰</label>
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="18"><img class="icon_img" src="${cpath }/img/icon/kitchen.png">주방</label><br>
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="19"><img class="icon_img" src="${cpath }/img/icon/gamming.png">게임</label>
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="20"><img class="icon_img" src="${cpath }/img/icon/teras.png">테라스</label>
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="21"><img class="icon_img" src="${cpath }/img/icon/party.png">파티룸</label>
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="22"><img class="icon_img" src="${cpath }/img/icon/ocean.png">해수욕장</label>
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="23"><img class="icon_img" src="${cpath }/img/icon/bock.png">복층구조</label>
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="24"><img class="icon_img" src="${cpath }/img/icon/twin.png">트윈베드</label><br>
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="25"><img class="icon_img" src="${cpath }/img/icon/double.png">커플룸</label>
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="26"><img class="icon_img" src="${cpath }/img/icon/anma.png">안마의자</label>
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="27"><img class="icon_img" src="${cpath }/img/icon/restorang.png">뷔페</label>
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="28"><img class="icon_img" src="${cpath }/img/icon/pickup.png">픽업가능</label>
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="29"><img class="icon_img" src="${cpath }/img/icon/playground.png">운동장</label>
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="30"><img class="icon_img" src="${cpath }/img/icon/bicycle.png">자전거대여</label><br>
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="31"><img class="icon_img" src="${cpath }/img/icon/medicine.png">상비약</label>
                        <label class="icon"><input type="checkbox" name="cf_idx" class="cf" id="" value="32"><img class="icon_img" src="${cpath }/img/icon/rivingroom.png">공용거실</label>
                    </div>
                </div>
                <div class="insert_div1">
                    <div class="insert_div_space1">이용안내</div>
                    <div class="insert_div_space2">
                        <textarea name="usage_guide" class="insert_textarea" cols="40" rows="5"></textarea>
                    </div>
                </div>
                <div class="insert_div1">
                    <div class="insert_div_space1">예약공지</div>
                    <div class="insert_div_space2">
                        <textarea name="reservation_notice" class="insert_textarea" cols="40" rows="5"></textarea>
                    </div>
                </div>
                <div class="insert_div">
                    <div class="insert_div_space1">이벤트</div>
                    <div class="insert_div_space2">
                        <input class="insert_design" type="text" name="accomm_event">
                    </div>
                </div>
                <!-- 버튼 -->
                <div class="submit_div">
                    <input class="acmBtn" type="submit" value="전송">
                </div>
            </div>
      </form>
    </div>
</div>

   <!--    파일명 리스트 -->
   <script>
      $('.acmBtn').click(function(event){
         
         var files = $('input[id="acc_img"]')[0].files;
         var img_text = "";
         for (var i = 0; i < files.length; i++) {
            var n = files[i].name;
//            ㄴ> split을 빼서 확장자를 지우지 않고 그대로 DB에 삽입하기로 변경
            img_text += n;
//            ㄴ> 파일명을 split을 하지 않았으므로 n이 배열이 아님. 파일명 그대로 img_text에 추가
            img_text += ",";
         }
         img_text = img_text.slice(0, -1);
         console.log(img_text);
         $('#img_text').val(img_text);
         
      });
   </script>
</body>
</html>