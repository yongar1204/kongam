$(function(){

	// ----- 공통
	
	
		// ----- Header 스크롤 시 숨김 · 보임
		var didScroll = true;
		var lastScrollTop = 0;
		var delta = 5; // 동작의 구현이 시작되는 위치	
		var navbarHeight = $('body > header').outerHeight(); // 영향을 받을 요소 - Header	
		
		// 스크롤시 사용자가 스크롤했다는 것을 알림
		$(window).scroll(function(e){
			didScroll = true;			
		});	
		
		// hasScrolled()를 실행하고 didScroll 상태를 재설정
		setInterval(function(){
			if(didScroll){
				hasScrolled();
				didScroll = false;
			}
		}, 0);
		
		function hasScrolled(){		
			var st = $(this).scrollTop(); // 현재 스크롤의 위치를 저장
			
			// 설정한 delta 값보다 더 스크롤 되었는지를 확인
			if(Math.abs(lastScrollTop - st) <= delta)
				return;
			
			// Header의 높이보다 더 스크롤 되었는지 확인하고 class값 설정
			if(st > lastScrollTop && st > navbarHeight){
				$('body > header').animate({'top': - navbarHeight},0);
				
				// 가로 너비 변화 시 id값 변경
				if($(window).width() <= 1000){
					// $('#tabbar').css('top', '0');
				}else{
					// $('#tabbar').css('top', '0');
					$('#tabbar').addClass('up');
				}
			}
			// 스크롤이 맨 위로 올라갈때 id값 삭제
			else if(st < 10){
				$('body > header').removeClass('reverse');
				// $('#tabbar').attr('style', '');
			}else {
				if(st + $(window).height() < $(document).height()){
					$('body > header').addClass('reverse');
					$('body > header').animate({'top': 0},0);
					
					// 가로 너비 변화 시 id값 변경
					if($(window).width() <= 1000){
						// $('#tabbar').attr('style', '');
					}else{
						// $('#tabbar').css('top',  '100px');
						$('#tabbar').removeClass('up');
					}
				}
			}
			
			// lastScrollTop에 현재 스크롤 위치를 저장
			lastScrollTop = st;
		}
	
		// 서브 공통 탭
		$(".tabNav a").click(function(e) {
			e.stopPropagation();
			var tPin = $(this).attr('href');
			$(this).addClass('active').siblings().removeClass('active');
			$('html,body').stop().animate({
				scrollTop: $(tPin).offset().top + 10 
			},500);
			return false;
		});
	
	
	$('.sub-contents').append('<button class=\"goTop\" type=\"button\" title="클릭 시 상단으로"><span>상단 스크롤 버튼</span></button>')
	
	$(window).scroll(function() {
		var scroll = $(window).scrollTop();
		var tList = $(".tabNav-list > section");
		tList.each(function(){
			var cOffset = $(this).offset(),
				  nOffset = $(this).next().offset();
			var i = $(this).index();
			if (scroll >= cOffset.top) {
				$(".tabNav a").eq(i).addClass("active").siblings().removeClass('active');
			} 
			if(scroll + $(window).height()  == $(document).height()  ) {
				$(".tabNav a").last(i).addClass("active").siblings().removeClass('active');
			}

	
		});
	
		if (scroll > 300) {
			$(".goTop").fadeIn();
		} else{
			$(".goTop").fadeOut();
		}
	
		if(scroll + $(window).height()  == $(document).height()  ) {
			$(".goTop").addClass('bottom');
		}else{
			$(".goTop").removeClass('bottom');
		}
	
	   
	});
	
	$('.goTop').click(function(){
		$('html, body').animate({scrollTop:0},400);
		return false;
	});
	
	//sticky
    window.onscroll = function() {myFunction()};

    var navbar = document.getElementById("tabbar");
    var sticky = navbar.offsetTop;

    function myFunction() {
    if (window.pageYOffset >= sticky) {
        navbar.classList.add("sticky")
    } else {
        navbar.classList.remove("sticky");
    }
    }
	
	
	});
	
	