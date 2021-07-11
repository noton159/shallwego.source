$(document).ready(function(){
	const qaHandler = function(i) {
		$(".rv-menu").removeClass("on-click");		// 불 사라짐
		$(".rv-menu").eq(i).addClass("on-click");   // 불 들어옴 

		$(".rv-on").removeClass("on");				// 컨텐츠 없어짐 		
		$(".rv-on").eq(i).addClass("on"); 			// 컨텐츠 나타남 

	} // end of qaHandler
	
	// left menu 클릭시 이벤트
	// 회원정보 / 쿠폰  
	$(".rv-menu").click(function() {
		console.log('111');
		var i = $(this).index();
		qaHandler(i);
		
	});
	 
	// memberInfo 게시판 
	if (uri == 'memberInfo') {
		qaHandler(0);
	} else if (uri == 'coupon') {
		qaHandler(1);
	} 
	
	// 회원정보 편집창
	$(".info-btn").click(function() {
		console.log('aaaaaaa')
		$(".info-front").hide();
		$(".info-back").show();
	});

	
	
});		// end of main