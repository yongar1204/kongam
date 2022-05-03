$(function(){


	// ==== 풀페이지 이벤트 
		$('#fullpage').fullpage({
			//options here
			'onLeave' : function (index, nextIndex, direction){
				if (index == 1 && direction == 'down'){
					$("header").addClass("reverse");
					$(".contentArea.first ").addClass("motion");
					$(".contentArea ").removeClass("init");
				}else if (index == 2 && direction == 'up'){
					$("header").removeClass("reverse");
					setTimeout(function(){
						$(".contentArea.first ").removeClass("motion");
					},300);
				}else if (index == 2 && direction == 'down'){
					$(".contentArea.second ").addClass("motion");
					setTimeout(function(){
						$(".contentArea.first ").removeClass("motion");
					},300);
				}else if (index == 3 && direction == 'up' ){
					$(".contentArea.first").addClass("motion");
					setTimeout(function(){
						$(".contentArea.second").removeClass("motion");
					},300);
				}else if (index == 3 && direction == 'down' ){
					$(".contentArea.third").addClass("motion");
					setTimeout(function(){
						$(".contentArea.second").removeClass("motion");
					},300);
				}else if (index == 4 && direction == 'up' ){
					$(".contentArea.second").addClass("motion");
					setTimeout(function(){
						$(".contentArea.third").removeClass("motion");
					},300);
				}else if (index == 4 && direction == 'down' ){
					$(".mainNews ").addClass("motion");
					setTimeout(function(){
						$(".contentArea.third").removeClass("motion");
					},300);
				}else if (index == 5 && direction == 'up' ){
					$(".contentArea.third ").addClass("motion");
					setTimeout(function(){
						$(".mainNews ").removeClass("motion");
					},300);
				}
			},
			'afterLoad': function (anchorLink, index) {
				if (index == 1){
					$("header").removeClass("reverse");
					$.fn.fullpage.setAllowScrolling(true);    
				}
				
			}
	
		});
	
	
	
	// ==== 메인 슬라이드
	
	// 슬라이드
	
	
	$(".mainSlide").slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		autoplay : true,
		autoplaySpeed : 9000,
		fade: true,
		cssEase: 'ease-in-out',
		draggable:false,
		arrows:true,
		dots:true,
		pauseOnHover : false
	});
	
	$(".mainSlide").on('afterChange init', function(event, slick, currentSlide, nextSlide){
		var slide = $(this).find(".slick-active");
		slide.find('.bg-box').animate({'transform':'scale(1.5)'},500);
	}).on('beforeChange', function(event, slick, currentSlide, nextSlide){
		var slide = $(this).find(".slick-active");
		$('.bg-box').animate({'transform':'scale(1.5)'},500);
	});
	
	$('.slick-next').wrap('<div class=\"slick-arrows\"></div>');
	$('.slick-next').before($('.slick-prev'));
	$('.slick-prev').after('<button type=\"button\" class=\"slick-play\">재생</button> <button type=\"button\" class=\"slick-stop\">정지</button>');
	
	// - 정지 : 슬라이드 정지 버튼 클릭 시 이벤트
	$('.mainSlide .slick-stop').css('display','inline-flex');
	$('.mainSlide .slick-stop').on('click',function(){
		$(this).hide();
		$('.mainSlide .slick-play').css('display','inline-flex');
		$('.mainSlide').slick('slickPause');
	});
	// - 재생 : 슬라이드 재생 버튼 클릭 시 이벤트
	$('.mainSlide .slick-play').on('click',function(){
		$(this).hide();
		$('.mainSlide .slick-stop').css('display','inline-flex');
		$('.mainSlide').slick('slickPlay');
	});
	
	
	// SPECIAL
	$(".contentSlide").slick({
		fade: true,
		cssEase: 'linear',
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows:false,
		pauseOnFocus:false,
		pauseOnHover:false,
		pauseOnDotsHover:false,
		autoplay: false,
		infinite:false,
		swipe:false,
		preventClicks: true,
		speed:1000,
		dots: true,
		customPaging : function(slider, i) {
			var slideCount = i+1;
			return '<button type="button"><span>'+slideCount+'</span></button>';
		},
	});  
	$('.contentSlide').slick('slickPause');
	
	
	// wheel event
	$('.contentSlide').on('mousewheel DOMMouseScroll', function(e){
		var E = e.originalEvent;
		delta = 0;
		if (E.detail) {
			delta = E.detail * -40;
		}else{
			delta = E.wheelDelta;
		}
		if(delta < 0) { // wheel down
			$(this).slick('slickNext');
		}else{ // wheel up
			$(this).slick('slickPrev');  
		}
	});
	
	
	// touch event
	var startX, startY, endX, endY;
	$('.contentSlide').on('touchstart',function(event){
		startX = event.originalEvent.changedTouches[0].screenX;
		startY = event.originalEvent.changedTouches[0].screenY;
	});
	$(".contentSlide").on('touchmove',function(event){
		endX=event.originalEvent.changedTouches[0].screenX;
		endY=event.originalEvent.changedTouches[0].screenY;
		if(startY-endY > 20){ // down to up
			$(this).slick('slickNext');         
		}else if(endY-startY > 20){ // up to down
			$(this).slick('slickPrev');
		}
	});
	
	$(".contentSlide").on('beforeChange', function (event, slick, currentSlide, nextSlide) {
		$.fn.fullpage.setAllowScrolling(false);
		if (currentSlide === 0 && nextSlide === slick.$slides.length - 1) { // 왼쪽 진행일때
			$(".contentSlide").removeClass('left');
			$(".contentSlide").addClass('right');
		} else if (nextSlide > currentSlide || (currentSlide === (slick.$slides.length - 1) && nextSlide === 0 )) {
			$(".contentSlide").removeClass('right');
			$(".contentSlide").addClass('left');
		} else {
			$(".contentSlide").removeClass('left');
			$(".contentSlide").addClass('right');
		}       
	});
	
	$(".contentSlide").on('afterChange', function (event, slick, currentSlide) {
		if(currentSlide==0){
			$.fn.fullpage.setAllowScrolling(true);
		}else if (slick.$slides.length-1 == currentSlide) {
			$.fn.fullpage.setAllowScrolling(true);
		}
	});
	
	
	
	var resizing = function(){
		$('.mainSlide, .mainSlide .ms-cont, .contentSlide, .contentSlide .cs-cont').css({
			'width': $(window).width(),
			'height': $(window).height()
		});
	}
	
	resizing();
	
	
	
	
	$(window).resize(function(){
		resizing(); //슬라이드 이미지 리사이징
	});
	
	
});