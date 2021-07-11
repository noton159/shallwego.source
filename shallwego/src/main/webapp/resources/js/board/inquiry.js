$(document).ready(function() {

	// 불들어오기 
	$(".qa-btn").each(function(index) {
		$(this).attr("data-index", index);
	}).click(function() {

		var i = $(this).attr("data-index");

		$(".qa-btn").removeClass("on-bottom");
		$(".qa-btn").eq(i).addClass("on-bottom");

	});
	
	// 내 질문 상세하게 보기
	$(".myqa-title-main").each(function(index) {
		$(this).attr("data-index", index);
	}).click(function() {

		var i = $(this).attr("data-index"); // myqa-title-main 배열 

		$(".qa-write").hide();
		$(".myqa-list-sub").eq(i).show();

	});
	
	// 내 질문 작성하기 
	$(".qa-btn").click(function() {

		var i = $(this).index(); // 버튼 1, 2, 3....
		var b = $(".qa-content-wrap").index();

		// 버튼 1번 클릭시 1번 컨텐츠 들어오기
		$(".qa-con-none").removeClass("on");
		$(".qa-con-none").eq(i).addClass("on");

	});
	
	// 작성하기 버튼???? 뭐였더라 이거 
	$(".qa-write-btn").click(function() {

		$(".qa-write-wrap2").show();
		$(".qa-write-wrap1").hide();

	});
});