
$(function(){


// ---- 헤더


	$('.moMenu').on('click',function(){
		if($(this).hasClass('on')){
			$('header, .gnb, .gnb > li > a, .moMenu').removeClass('on');
			$('.gnb > li > a, .gnb .sub, body').removeAttr('style');
		}else{

			$('body').css({'overflow':'hidden'});

			$.when(	
				$(this).addClass('on'),
				$('header, .gnb').addClass('on')
			).done(function(){
				var queue = $.Deferred().resolve(),
				gnb = $('.gnb'),
				gnb_li = gnb.children('li');
				
				gnb_li.get().forEach(function(section){
					var sub = $(section).find('.sub > li').length,
						  txt = $(section).children('a').text();
					if(sub >= 1 ){

						// 하위 메뉴가 없는 곳엔 더보기 아이콘 추가
						$(section).children('a').empty().append(txt + '<i class=\'ico-plus\'></i>').promise();

						// 하위 메뉴 보기 click 이벤트
						$(section).children('a').off('click').on('click',function(e){
							e.stopPropagation();
					
							if($(this).hasClass('on')){
								$(this).removeClass('on');
								$(this).siblings('.sub').slideUp();
							}else{
								$('.gnb > li > a').removeClass('on');
								$(this).addClass('on');
								$('.gnb .sub').slideUp();
								$(this).siblings('.sub').slideDown();
							}
							return false;
						});
						
					}
					// 메뉴 오픈 시 애니메이션
					queue = queue.then(function(){ 
						return $(section).children('a').stop().animate({'top': '0'}, 130).animate({'opacity': '1'}, 130).promise();
					});
				});
			});
		}
		return false;
	});


	$(window).scroll(function(){ 
		if ($(window).scrollTop() >= 100) { 
			$('header#header').addClass('reverse'); 
		} else { 
			$('header#header').removeClass('reverse'); 
		} 
	});

	// contact us :: 열림
	$('.openCU').click(function(){
		$('.popup-contactUs').fadeIn(300);
		$('body').css({'overflow':'hidden'});
	});

	// contact us :: 닫힘
	$('.popup-contactUs .close').click(function(){
		$('.popup-contactUs').fadeOut(300);
		$('body').removeAttr('style');
	});

	$( '.sub-contents .content h3' ).wrap('<span class=\'h3-wrap\'></span>');



	
});
