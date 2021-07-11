// all체크박스 체크 이벤트
$(document).click(function(){

    $("#check_all").click(function(){
        if($("#check_all").prop("checked")){
            $("input[name=service_agree]").prop("checked",true);
        }else{
            $("input[name=service_agree]").prop("checked",false);
        }
    });

});

// 개별선택이 전부 체크되면 all체크박스도 체크되는 이벤트
$(document).click(function(){
	
	var inputs = $("input[name=service_agree]").length;
    var checked = $("input[name=service_agree]:checked").length;
    
    // 전체가 체크되면 all을 체크
    if(inputs == checked) {
        $("#check_all").prop("checked",true);
    }
    // 아니면 바로 체크 해제
    else 
        $("#check_all").prop("checked",false);
});



