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
                        <div class="insert_div_space1">판매자 idx (customer_idx)</div> 
                        <div class="insert_div_space2">
                            <input class="insert_design" type="number" name="customer_idx" value="">
                        </div>
                    </div>
                    <div class="insert_div">
                        <div class="insert_div_space1">대표자</div> 
                        <div class="insert_div_space2">
                            <input class="insert_design" type="text" name="representative" autofocus required>
                        </div>
                    </div>
                    <div class="insert_div">
                        <div class="insert_div_space1">상호명</div> 
                        <div class="insert_div_space2">
                            <input class="insert_design" type="text" name="mutual_name" required>
                        </div>
                    </div>                    
                    <div class="insert_div">
                        <div class="insert_div_space1">사업자주소</div> 
                        <div class="insert_div_space2">
                            <input class="insert_design" type="text" name="business_address" required>
                        </div>
                    </div>                    
                    <div class="insert_div">
                        <!-- 외래키 참조 (room_type) -->
                        <div class="insert_div_space1">판매자 이메일</div> 
                        <div class="insert_div_space2">
                            <input class="insert_design" type="text" name="sales_email" required>
                        </div>
                    </div>
                    <!-- 여기까지 필수 입력값 -->

                    <div class="insert_div">
                        <div class="insert_div_space1">연락처</div> 
                        <div class="insert_div_space2">
                            <input class="insert_design" type="text" name="contact_info">
                        </div>
                    </div>
                    <div class="insert_div">
                        <div class="insert_div_space1">사업자등록번호</div> 
                        <div class="insert_div_space2">
                            <input class="insert_design" type="text" name="business_license_number">
                        </div>
                    </div>
                    <div class="submit_div">
                        <input type="submit" value="전송">
                    </div>                    
                </div>
            </form>
        </div>
    </div>
    
</body>
</html>