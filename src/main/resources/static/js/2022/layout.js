
$(function(){


// ---- 헤더


	$('.gnb > li > a').on('mouseover',function(){

		$('header').addClass('on');

	});
	$('header').on('mouseleave',function(){

		$('header').removeClass('on');

	});

	$(window).scroll(function(){ 
		if ($(window).scrollTop() >= 100) { 
			$('header#header').addClass('reverse'); 
		} else { 
			$('header#header').removeClass('reverse'); 
		} 
	});

	$('.openCU').click(function(){
		$('.popup-contactUs').fadeIn(300);
		$('html, body').css({'overflow':'hidden'});
	});

	$('.popup-contactUs .close').click(function(){
		$('.popup-contactUs').fadeOut(300);
		$('html, body').removeAttr('style');
	});

	
});
