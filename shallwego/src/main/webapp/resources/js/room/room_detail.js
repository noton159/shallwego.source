$(document).ready(function(){
	
	
	var img_slide2 = 0;
	var rd_ww = $(".room-dt-img img").width();

	$(".room-dt-wrap .room-dt-btn .right").click(function(){
	    img_slide2++;
	    if(img_slide2>2){
	        img_slide2=0;
	    }
	  
	    $(".room-dt-wrap .room-dt-img").stop().animate({
	        left:-rd_ww*img_slide2
	    }, 'slow');
	});
	    
	$(".room-dt-wrap .room-dt-btn .left").click(function(){
	    
	    img_slide2--;
	    if(img_slide2<0){
	        img_slide2=2;
	    }
	  
	    $(".room-dt-wrap .room-dt-img").stop().animate({
	        left:-rd_ww*img_slide2
	    }, 'slow');
	});

	setInterval(function(){  
	    $(".room-dt-wrap .room-dt-btn .right").trigger("click");
	},3000);

	
}); // end of main