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
	
	// left menu 클릭시 이벤트
	// 공지사항 / 이벤트 / 1:1문의  
//	$(".rv-menu").click(function() {
//		console.log('111');
//		var i = $(this).index();
//		qaHandler(i);
//		
//	});
	
	let i;
	switch(uri) {
	case 'reserComple' 	: i = 0; break;
	case 'reserCancell' : i = 1; break;
	case 'reserStaying'	: i = 2; break;
	}
	
}); // end of main
