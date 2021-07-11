$(document).ready(function() {
	
// ********************* notice ********************* 	
	
	$(".notice-btn").each(function(index) {
		$(this).attr("data-index", index);
	}).click(function() {

		var i = $(this).attr("data-index");

		$(".notice-btn").removeClass("on-bottom");
		$(".notice-btn").eq(i).addClass("on-bottom");

	});
	
	// 공지사항 상세하게 보기
	$(".notice-title-main").each(function(index) {
		$(this).attr("data-index", index);
	}).click(function() {

		var i = $(this).attr("data-index"); // myqa-title-main 배열 

		$(".notice-write").hide();
		$(".notice-list-sub").eq(i).show();

	});
	
	// 공지사항 버큰 클릭시 컨텐츠 나오기 
	$(".notice-btn").click(function() {

		var i = $(this).index(); // 버튼 1, 2, 3....
		var b = $(".notice-content-wrap").index();

		// 버튼 1번 클릭시 1번 컨텐츠 들어오기
		$(".notice-con-none").removeClass("on");
		$(".notice-con-none").eq(i).addClass("on");

	});
	
	
});
