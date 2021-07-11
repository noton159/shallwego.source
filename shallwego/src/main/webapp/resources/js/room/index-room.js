$(document).ready(function(){
    var i=0;
    $(".filter-top .slide-btn .right").click(function(){
        
        i++;
        if(i>2){
            i=0;
        }
      
        $(".img_wrap").stop().animate({
            left:-1200*i,
        }, 'slow');
    });
        
    $(".filter-top .slide-btn .left").click(function(){
        
        i--;
        if(i<0){
            i=2;
        }
      
        $(".img_wrap").stop().animate({
            left:-1200*i
        }, 'slow');
    });
    
    setInterval(function(){  
        $(".right").trigger("click");
    },3000);

}); // end of main