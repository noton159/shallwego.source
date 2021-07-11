<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../index_source.jsp" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>방 정보 입력창</title>
    <link href="../css/room_type.css" rel="stylesheet" type="text/css">
</head>
<body>

    <div class="wrap">
        <div class="wrap-in">
        <div class="logo"><a href="${cpath }/"><img src="${cpath }/resources/img/logo/logo.png"/></a></div>
            <form method="POST">
                <div class="insert_div_daddy">
                    <div class="insert_div">
                        <!-- 여기서 넘버는 accomm에서 값을 받아온다 -->
                        <div class="insert_div_space1">NUMBER</div> 
                        <div class="insert_div_space2">
                            <input class="insert_design" type="number" name="accomm_idx" value="${sessionScope.idx }">
                        </div>
                    </div>
                    <div class="insert_div">
                        <div class="insert_div_space1">방 이름</div> 
                        <div class="insert_div_space2">
                            <input class="insert_design" type="text" name="room_name" autofocus required>
                        </div>
                    </div>
                    <div class="insert_div">
                        <div class="insert_div_space1">기준인원</div> 
                        <div class="insert_div_space2">
                            <input class="insert_design" type="number" name="min_person" required>
                        </div>
                    </div>                    
                    <div class="insert_div">
                        <div class="insert_div_space1">최대인원</div> 
                        <div class="insert_div_space2">
                            <input class="insert_design" type="number" name="max_person" required>
                        </div>
                    </div>                    
                    <div class="insert_div">
                        <!-- 외래키 참조 (room_type) -->
                        <div class="insert_div_space1">숙박or대실(1or2)</div> 
                        <div class="insert_div_space2">
                            <input class="insert_design" type="text" name="room_type" required>
                        </div>
                    </div>
                    <!-- 여기까지 필수 입력값 -->

                    <div class="insert_div">
                        <div class="insert_div_space1">대실시간(숙박X)</div> 
                        <div class="insert_div_space2">
                            <input class="insert_design" type="number" name="room_hire_time">
                        </div>
                    </div>
                    <div class="insert_div">
                        <div class="insert_div_space1">방 이미지</div> 
                        <div class="insert_div_space2">
                            <input multiple="multiple" id="r_img" class="insert_design" type="file">
                            <input type="text" name="room_img" id="rimg_text">
                        </div>
                    </div>
                    <div class="insert_div">
                        <div class="insert_div_space1">방 기본 정보</div> 
                        <div class="insert_div_space2">
                            <input class="insert_design" type="text" name="room_info">
                        </div>
                    </div>
                    <br>
                    <hr>
                    <br>
                    <div class="insert_div">
                        <div class="insert_div_space1">원가</div> 
                        <div class="insert_div_space2">
                            <input class="insert_design" type="number" name="cost_price">
                        </div>
                    </div>
                    <div class="insert_div">
                        <div class="insert_div_space1">weekend (0 ~ 6)</div> 
                        <div class="insert_div_space2">
                            <input class="insert_design" type="number" name="weekend">
                        </div>
                    </div>
                    <div class="submit_div">
                        <input id="roomBtn" type="submit" value="전송">
                    </div>
                </div>
            </form>
            <a href="${cpath }/admin/sales"><button>판매자 정보</button></a>
        </div>
    </div>
    
    <!-- 파일명 리스트 -->
   <script>
      $('#roomBtn').click(function(event){
         var files = $('input[id="r_img"]')[0].files;
         var img_text = "";
         for (var i = 0; i < files.length; i++) {
            var n = files[i].name;
//            ㄴ> split을 빼서 확장자를 지우지 않고 그대로 DB에 삽입하기로 변경
            img_text += n;
//            ㄴ> 파일명을 split을 하지 않았으므로 n이 배열이 아님. 파일명 그대로 img_text에 추가
            img_text += ",";
         }
         img_text = img_text.slice(0, -1);
         $('#rimg_text').val(img_text);
      });
   </script>
    
</body>
</html>