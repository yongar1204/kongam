<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- CSS :: modal-->
<style type="text/css">   
    .dailyPopup{position:absolute; top:0; left:0; width:100%; height:100%; background:rgba(0,0,0,.4); z-index:9999;}     
    .modal{width:100%; height:100%; display:flex; align-items:center; justify-content: center;}
    .modal-container{background: #fff; width: auto; height: auto; overflow: hidden; }
    .modal-content { width: 360px; height: 360px; }
    .modal-content img{width:100%; height:auto;}
    .container { padding: 16px; text-align: center; } 
    .modal .check { background: #000; padding: 0 15px; height: 45px;  display:flex; align-items: center; justify-content: flex-start;}
    .modal .cBox label{color:#fff;}
    .modal .cBox input[type="checkbox"]:checked + label{color:#fd5b2d;}
    .modal  .cBox input[type="checkbox"]:checked + label > i{background: #fd5b2d;border-color: #fd5b2d;}
    .modal  .close {width: 25px; height: 25px; font-size: 0; flex:none; margin-left:auto; }       
    .modal  .close i{width:100%; height:100%; }
    .modal  .close i:before,
    .modal  .close i:after{background:#fff;}
    .modal  .close:hover,
    .modal  .close:focus { cursor: pointer; }
    .modal  .close:hover i:before,
    .modal  .close:hover i:after{background:#fd5b2d;}

    /* ==== 768px 이하 일때 ==== */ @media only screen and (max-width: 768px) {
    .modal-content { width: 46.875vw; height: 46.875vw; /* width: 360px; height: 360px; */  }
    .container { padding: 2.083vw; /* padding: 16px; */  } 
    .modal .check { padding: 0 1.953vw; height: 5.859vw; /* padding: 0 15px; height: 45px; */  }
    .modal  .close {width: 3.255vw; height: 3.255vw; /* width: 25px; height: 25px; */  }       
    }


    /* ==== 450px 이하 일때 ==== */ @media only screen and (max-width: 450px) {
    .modal-content { width: 80vw; height: 80vw; /* width: 360px; height: 360px; */  }
    .container { padding: 3.556vw; /* padding: 16px; */  } 
    .modal .check { padding: 0 3.333vw; height: 10vw; /* padding: 0 15px; height: 45px; */  }
    .modal  .close {width: 5.556vw; height: 5.556vw; /* width: 25px; height: 25px; */  }              
    }

</style>


<!-- JS :: modal-->
<script>

    // 레이어팝업 : 쿠키세팅 
    function setCookie( name, value, expiredays ) {
        var todayDate = new Date();
        todayDate = new Date(parseInt(todayDate.getTime() / 86400000) * 86400000 + 54000000); 
        if ( todayDate > new Date() ){ 
            expiredays = expiredays - 1; 
        } 
        todayDate.setDate( todayDate.getDate() + expiredays ); 
        document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";" 
    }
    
    // 레이어팝업 : 쿠키 가져오기 
    function getCookie( name ) {
        var nameOfCookie = name + "="; 
        var x = 0; 
        while ( x <= document.cookie.length ){ 
            var y = (x+nameOfCookie.length); 
            if ( document.cookie.substring( x, y ) == nameOfCookie ) { 
                if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 ) 
                endOfCookie = document.cookie.length; 
                return unescape( document.cookie.substring( y, endOfCookie ) ); 
            } 
            x = document.cookie.indexOf( " ", x ) + 1; 
            if ( x == 0 ) break; 
        } 
        return ""; 
    }

    // 로딩전 :: 오늘하루 보지않기 체크 유무
    var popupSet = function(){
        var cookiedata = document.cookie;
                
        var popupItem = $('#id01');
        
        popupItem.each(function(){
            
            var $this = $(this),
                idx = $this.index(),
                i = idx + 1;

            if(cookiedata.indexOf("pc_close0"+ i +"=Y" )<0){
                $(this).show();
            }else{
                $(this).hide();
            }
            
        });
    };
        
    // 오늘하루보지않기 체크 후 닫기
    $(function(){

        // PC ver
        $('#id01').each(function(){
            var $this = $(this),
                idx = $this.index(),
                i = idx + 1,
                $chk_box = $this.find('.cBox');
            
            // 팝업 close
            var $close = $this.find('.close');	
            
            $close.click(function(){
                // 오늘하루 보지않기 체크 유무
                if($chk_box.find('input').is(':checked')){
                    setCookie("pc_close0" + i,"Y",1);
                    $this.hide();
                }
            });
        });

    });

    // 레이어팝업 세팅
    $(window).ready(function(){
        popupSet();
    });

    
    $(function(){
        
        // 팝업 닫힘 :: 영역 벗어남
        $(document).mouseup(function (e){
            var container = $('.modal-container');
            if( container.has(e.target).length === 0){
                $('#id01').stop(true,true).fadeOut(300);
            }
        });

        // 팝업 닫힘 :: 닫기 클릭
        $('.modal .close').each(function() {
            var $parent = $(this).parents('#id01');
            $(this).click(function(){
                    $parent.fadeOut();
                });
        });	
        
    });
    
</script>

<!-- HTML :: modal-->
<div class="modal">
    <div class="modal-container">
        <div class="modal-content">
            <img src="resources/mobile/images/popup/popup.gif" alt="이미지 팝업" />
        </div>
        <div class="check">
            <div class="cBox">
                <input type="checkbox" id="dailyPopup-check" /> 
                <label for="dailyPopup-check"><i class="ico-check"></i><span>오늘 하루 보지 않기</span></label>
            </div>
            <button type="button" class="close" title="닫기"><i class="ico-close"></i>닫기</button>
        </div>       
    </div>
</div> 