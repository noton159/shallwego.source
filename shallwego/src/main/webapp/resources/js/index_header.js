$(document).ready(function(){

	// header 스크롤 색상 이벤트
    var $header = $('.header-on');
    var $page = $('.section2');
    var $window = $(window);
    var pageOffsetTop = $page.offset().top;

    $window.resize(function(){
        pageOffsetTop = $page.offset().top;
    });

    $window.on('scroll', function(){
        var scrolled = $window.scrollTop() >= pageOffsetTop;
        $header.toggleClass('down', scrolled);
    });
    
	
    // 고객센터 누르면 나타나기
    $(".customer-btn").click(function(){
        $(".customer").show();
        console.log('a');
        $(document).mouseup(function(e){

            var container=$(".customer");
    
            if(container.has(e.target).length === 0){
                container.hide();
            }
        });
    });

        // 프로필 누르면 나타나기
        $(".profile-btn").click(function(){
        	console.log('a');
            $(".profile").show();
            console.log('b');
    
            $(document).mouseup(function(e){
    
                var container=$(".profile");
        
                if(container.has(e.target).length === 0){
                    container.hide();
                }
            });
        });

}); // end of main