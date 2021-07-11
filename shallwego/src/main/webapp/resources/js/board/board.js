$(document).ready(function() {

//	$.fn.qaHandler = function(i) {
//	const qaHandler = function(i) {
//		$(".rv-menu").removeClass("on-click");		// 불 사라짐
//		$(".rv-menu").eq(i).addClass("on-click");   // 불 들어옴 
//
//		$(".rv-on").removeClass("on");				// 컨텐츠 없어짐 		
//		$(".rv-on").eq(i).addClass("on"); 			// 컨텐츠 나타남 
//
//	} // end of qaHandler 
//	
	// qa 게시판 
//	if (uri == 'notice') {
//		qaHandler(0);
//	} else if (uri == 'event') {
//		qaHandler(1);
//	} else if (uri == 'inquiry') {
//		qaHandler(2);
//	} 

	// left menu 클릭시 이벤트
	// 공지사항 / 이벤트 / 1:1문의  
//	$(".rv-menu").click(function() {
//		console.log('111 : ' + uri);
		
//		var i = $(this).index();
		let i;
		switch(uri) {
		case 'notice' 	: i = 0; break;
		case 'event' 	: i = 1; break;
		case 'inquiry'	: i = 2; break;
		}
		
//		$(".rv-menu").removeClass("on-click");		// 불 사라짐
//		$(".rv-menu").eq(i).addClass("on-click");   // 불 들어옴 
//
//		$(".rv-on").removeClass("on");				// 컨텐츠 없어짐 		
//		$(".rv-on").eq(i).addClass("on"); 
//		
//	});



}); // end of main