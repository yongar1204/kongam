$(function(){

// ----- 공통
	// max-width 값 변경
	$('body, header').addClass('sub');


});


$(document).ready(function() {

    $(document).on('click', '.popOpenBtn', function(event) { //팝업 Open 버튼 클릭 시
        var popId = $(this).data("popId");
        var $popDiv = $("#"+popId);

        $(".popupDiv").css({
            "top": (($(window).height() - $popDiv.outerHeight()) / 2) + "px",
            "left": (($(window).width() - $popDiv.outerWidth()) / 2) + "px"
            //팝업창을 가운데로 띄우기 위해 현재 화면의 가운데 값과 스크롤 값을 계산하여 팝업창 CSS 설정
        });

//		$(".popup_mask").css("display", "block"); //팝업 뒷배경 display block
        $(".popup_mask").attr('style', 'display: block !important');
        $popDiv.css("display", "block"); //팝업창 display block

        $("body").css("overflow", "hidden");//body 스크롤바 없애기

        $popDiv.attr("tabindex", 0).show().focus();
        $(".popCloseBtn").on('keydown', function(e){
            if (e.keyCode === 9) {
                $popDiv.focus();
            }
        })
    });

    $(document).on('click', '.popCloseBtn', function(event) {
        $(".popup_mask").attr('style', 'display: none !important'); //팝업창 뒷배경 display none
        $(".popupDiv").css("display", "none"); //팝업창 display none
        $("body").css("overflow", "auto");//body 스크롤바 생성

        $("#divLoginPop").removeAttr("tabindex").hide();
        $(".popOpenBtn").focus();
    });

    $(function() {
        $(window).scroll(function() {
            if ($(this).scrollTop() > 200) {
                $('.move_top').fadeIn();
            } else {
                $('.move_top').fadeOut();
            }
        });

        $(".move_top").click(function() {
            $('html, body').animate({
                scrollTop: 0
            }, 400);
            return false;
        });
    });



    // left_slide //
    $(document).ready(function() {
        $('.mv_Bar_close').click(function() {
            $('.left_side').animate({ "left": "-100%" }, "slow");
        });

        $('.mv_Bar').click(function() {
            $('.left_side').animate({ "left": "0%" }, "slow");
        });

        // slideToggle //
        $(".m_list_open").click(function() {
            if ($(window).width() < 1024) {
                var li_h = $(".map_category_list ul").height();
                var pos_t = $(".map_locselect").offset().top;
                if ($(this).hasClass('on')) {
                    $(".map_category_list ul").slideUp(100);
                    //$(".map_locselect").animate({ top: 80 + 'px' }, 100);
                    $(".m_list_open").removeClass('on');
                    $(".m_list_open span").text('열기');
                } else {
                    $(".map_category_list ul").slideDown(0, function() {
                        li_h = $(".map_category_list ul").height();
                        //$(".map_locselect").animate({ top: li_h + pos_t + 'px' }, 0);
                        $(".m_list_open").addClass('on');
                        $(".m_list_open span").text('접기');
                    });
                }
                //$(this).toggleClass("on");
            }
        });

        var isClosed = 0; // 열림 기본 상태
        var list_open_btn = 0;

        $('.list_open_btn').click(function() {

            if (list_open_btn == 0) {
                if ($(window).width() > 1024) {
                    $('.list_left').css({ width: "0px" });
                    $('.list_left .info_list').hide();
                    $(".list_open_btn").css({ "left": "0px" }, "fast");
                    $(".map_search").find("select,input").hide();
                    $(".map_search").hide();
                    $(".map_locselect").css({ "left": "100px" });
                    $(".select_open").css({ "left": "110px" });
                    //$(".detail_search").css({ "padding-left": "130px" });
                    $('.list_open_btn').toggleClass('on');
                    $(".map_category_list").css({ "top": "124px" })
                    $(".map_category_list").css({ "top": "124px" })
                    $(".map_category_list").css({ "height": "calc(100% - 123px)" });
                    /*
                              $('.list_left').css({ width: "0px" });
                              $('.list_left .info_list').hide()
                              $(".list_open_btn").css({ "left": "0px" }, "fast" );
                              $(".map_search").find("select,input,button").hide();
                              $(".map_search").addClass("mini");
                              $(".map_locselect").css({ "left" : "100px" });
                              $(".select_open").css({ "left" : "100px" });
                              $(".detail_search").css({ "padding-left" : "130px" });
                */
                    list_open_btn = 1;
                    isClosed = 1;
                }
            } else {
                $('.list_left').css({ width: "280px" });
                $(".list_open_btn").css({ "left": "280px" }, "fast");
                $(".map_locselect").css({ "left": "380px" });
                $(".select_open").css({ "left": "380px" });
                $('.list_left .info_list').show();
                $(".map_search").removeClass("mini");
                $(".map_search").find("select,input").show();
                //$(".detail_search").css({ "padding-left": "410px" });
                $(".map_search").show();

                $('.list_open_btn').toggleClass('on');

                var temp_h = $('.gnb_wrap.map').height()+$('.map_assets').height();

                $(".map_category_list").css({ "top": temp_h + "px" })
                $(".map_category_list li:first-child").css({ "top": temp_h + "px" });
                $(".map_category_list").css({ "height": "calc(100% - "+temp_h+"px)" })
                /*
                          $(".list_open_btn").css({ "left": "280px" }, "fast" );
                          $(".map_locselect").css({ "left" : "380px" });
                          $(".select_open").css({ "left" : "380px" });
                          $('.list_left .info_list').show();
                          $(".map_search").removeClass("mini");
                          $(".map_search").find("select,input,button").show();
                          $(".detail_search").css({ "padding-left" : "410px" });
            */
                list_open_btn = 0;
                isClosed = 0;
            }
            $.nsop.mapDivResize();
        });

        $('.list_open_btn').click(function() {
            if ($(window).width() < 1024) {
                //$('.list_left').show();
                //$('.list_left .info_list').slideToggle(100);
                //$('.info_list').slideToggle(100);

                //$('.list_left').show();
                //$('.info_list').slideToggle(100);

                $('.info_list').slideToggle(100);
                $(".list_open_btn").toggleClass("on");
                $(".list_left").toggleClass("on");

                if($('.list_left.on').height()) {
                    //var temp_h = $('.list_left.on').height();
                    //$('.re_search').css('bottom', temp_h + 20);

                    $('.map_container').height(  $('.map_container').height()-$('.list_left.on').height() );

                    /*
                    setTimeout(function(){
                        var ref = $('.point_overlay.on').attr('ref');   // 선택한거 index번호
                        if(ref) {
                            var offset = $('#info_list li:eq('+ref+')').offset();
                            $('#info_list').animate({scrollTop:  offset.top - $('#info_list').offset().top } + $('#info_list li:eq('+ref+')').scrollTop() );
                            console.log(ref, offset.top - $('#info_list').offset().top );
                        }
                    }, 200);
                    */
                }
                else {
                    $('.re_search').css('bottom', 20);
                }

                if (map) map.relayout();
            }
        });



        // updown btn //


        var windowHeight = $(window).height();
        var topHeight = $(".map_category_list").height();



        var swiper = new Swiper('.icon-swiper-container', {
            direction: 'vertical',
            slidesPerView: 'auto',
            slidesPerGroup: 4,
            navigation: {
                nextEl: '.category_down',
                prevEl: '.category_up',
            },
        });

        $('.category_down').click(function() {
            $('.map_category_list ul').animate({ "top": "-725px" }, "fast");
        });
        $('.category_up').click(function() {
            $('.map_category_list ul').animate({ "top": "30px" }, "fast");
        });

        $(".map_locselect").click(function() {
            setTimeout(function(){
                    $(".select_open").slideToggle(10);
                    $(".area_down").toggleClass("up");
                    $(this).toggleClass("on");
            }, 100);
        });
/*
        $(".map_locselect").click(function() {
            if ($(window).width() < 1024) {
              $(".select_open").slideToggle(10);
              $(".area_down").toggleClass("up");
              $(this).toggleClass("on");
            }
          });
*/
        /*
              $(".area_down").click(function() {
                if ($(window).width() > 1024) {
                  $(".select_open").slideToggle(10);
                  $(".area_down").toggleClass("up");
                }
              });

              $(".area_down").click(function() {
                if ($(window).width() < 1024) {
                  $(".select_open").slideToggle(10);
                  $(".area_down").toggleClass("up");
                }
              });
        */
        // tab //
        $('.establ_tab li').click(function() {
            var activeTab = $(this).attr('data-tab');

            $('.establ_tab li').removeClass('current');
            $('.tab-content').removeClass('current');

            $(this).addClass('current');
            $('#' + activeTab).addClass('current');

            $(".establ_tab").removeClass("on");
        })

        $(".tab_dephs").click(function() {

            $(".establ_tab").addClass("on");

        });

        $('.ser_guide_tab li').click(function() {
            var activeTab = $(this).attr('data-tab');

            $('.ser_guide_tab li').removeClass('current');
            $('.tab-content').removeClass('current');

            $(this).addClass('current');
            $('#' + activeTab).addClass('current');

            $(".ser_guide_tab").removeClass("on");
        })

        $(document).on('click', '.ser_nuclear_tab li', function() {
        /*$('.ser_nuclear_tab li').click(function() {*/
            var activeTab = $(this).attr('data-tab');
            $('.ser_nuclear_tab li').removeClass('current');

            $(this).addClass('current');
            $('#' + activeTab).addClass('current');

            $(".ser_nuclear_tab").removeClass("on");
        })

        // 자주b //

        $(".qna p").hide();
        /*$(".qna .qu").click(function(){
          $(this).addClass("on");
          $(this).next().slideToggle(300);
          $(".qna .qu").not(this).next().slideUp(300);
          return false;
        });*/

        $(document).on('click', '.qna .qu', function() {
            $(this).addClass("on");
            $(this).next().slideToggle(300);
            $(".qna .qu").not(this).next().slideUp(300);
            return false;
        });
        $(".qna .qu").eq(0).trigger("click");

        /*$('.qna_list div').click(function(){
            $('.qna_list div').removeClass('on');
            $(this).addClass('on');
        });*/

        $(document).on('click', '.qna_list div', function() {
            $('.qna_list div').removeClass('on');
            $(this).addClass('on');
        });


        // GNB //

        $(".Menu").mouseover(menu_off);
        $(".Menu").keyup(menu_off);

         // 마우스올릴때
        $('.gnb_wrap .gnb .gnb_flex').mouseover(function(){
            $('.gnb').addClass('on');
        });

        $(".gnb").mouseleave(function() {
            if ($(window).width() > 1024) {
                $('.gnb').removeClass('on');
            }
        });

        // gnb_focus // 추가수정사항2번 -12/04 - 탭포커싱 때문에 소스 추가하였습니다.
        $('.gnb_wrap .gnb .gnb_flex').focusin(function(){
            $('.gnb').addClass('on');
        });

        $('.gnb').focusout(function(){
            $('.gnb').removeClass('on');
        });

        function menu_off() {
            if ($(window).width() > 1024) {
                $(".Menu li ul").show();
                $(".Menu.map li ul").hide();
                //$(".Menu").css("height", "384px");
                $(".Menu.map").css("height", "64px");
            }
        }


        // 상세검색 옵션 클릭
        /*
        $(".css-checkbox").on('click', function(e) {
            var checks = $(this).find('input');
            //$(checks).prop('checked', !$(checks).prop('checked'));
            //checks.trigger("click");
            console.log(checks);
        });
        */




        if ($(window).width() < 1023) {

            TriggerClick = 0;
            $("#close").click(function() {
                if (TriggerClick == 0) {
                    TriggerClick = 1;
                    $(".Menu").animate({ height: 'toggle' }, 300);
                } else {
                    TriggerClick = 0;
                    $(".Menu").animate({ height: 'toggle' }, 300);
                };
            });
        }

    });




    var uploadFile = $('.fileBox .uploadBtn');
    uploadFile.on('change', function() {
        if (window.FileReader) {
            var filename = $(this)[0].files[0].name;
        } else {
            var filename = $(this).val().split('/').pop().split('\\').pop();
        }

        $(this).siblings('.fileName').val(filename);
    });





    /* lnb */

    var lnbUI = {
        click: function(target, speed) {
            var _self = this,
                $target = $(target);
            _self.speed = speed || 300;

            $target.each(function() {
                if (findChildren($(this))) {
                    return;
                }
                $(this).addClass('noDepth');
            });

            function findChildren(obj) {
                return obj.find('> ul').length > 0;
            }

            $target.on('click', 'a', function(e) {
                e.stopPropagation();
                var $this = $(this),
                    $depthTarget = $this.next(),
                    $siblings = $this.parent().siblings();

                $this.parent('li').find('ul li').removeClass('on');
                $siblings.removeClass('on');
                $siblings.find('ul').slideUp(250);

                if ($depthTarget.css('display') == 'none') {
                    _self.activeOn($this);
                    $depthTarget.slideDown(_self.speed);
                } else {
                    $depthTarget.slideUp(_self.speed);
                    _self.activeOff($this);
                }

            })

        },
        activeOff: function($target) {
            $target.parent().removeClass('on');
        },
        activeOn: function($target) {
            $target.parent().addClass('on');
        }
    };


    // Call lnbUI
    $(function() {
        lnbUI.click('.m_lnb li', 300)
    });

});