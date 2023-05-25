//contact-us POST
$(document).ready(function (){

	$('#contactUsSubmit').click(function () {
		if(!fn_email_validation()){
			return false;
		} else{
			var objects = {};
	        var formDataAr = $('#contactUsForm').serializeArray();
	        var len = formDataAr.length;
	        for (let i = 0; i < len; i++) {
	            objects[formDataAr[i].name] = formDataAr[i].value;
	        }
	        objects['category'] = 4
			
			$.ajax({
                url: '/board/api/contact.ajax',
                type: 'POST',
                data: JSON.stringify(objects),
                contentType: "application/json;charset=utf8",
                success: function (response){
					if(response == 'false'){
						alert("자동등록방지 문자를 확인하세요");
					} else{
						alert("문의내용이 성공적으로 접수 되었습니다.");
				        $('.popup-contactUs')[0].style.display = 'none';
				        $('html').removeAttr('style');
				        $('body').removeAttr('style');
						$('#contactUsForm')[0].reset();
					}
			    	
                }
            })
		}
	})
	
	
	function fn_email_validation(){
        var usremailCheck = /^[a-zA-Z0-9+-\_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;
        if(!usremailCheck.test($("input[name='contactEmail']").val())){
            alert("이메일 형식이 맞지 않습니다.");
            $("input[name='contactEmail']").val("");
            $("input[name='contactEmail']").focus();
            return false;
        }
        return true;
	}
	
})

function audio() {
		var rand = Math.random();
		var url = '/board/api/captchaAudio.do';
		$.ajax({
			url: url,
			type: 'POST',
			dataType: 'text',
			data: 'rand='+rand,
			async: false,
			success: function(resp){
				var uAgent = navigator.userAgent;
				var soundUrl = '/board/api/captchaAudio.do?rand='+rand;
				
				if(uAgent.indexOf('Trident') > -1 || uAgent.indexOf('MSIE') > -1){
					winPlayer(soundUrl);
				} else if(!!document.createElement('audio').canPlayType){
					try{
						new Audio(soundUrl).play();
					} catch(e){
						winPlayer(soundUrl);
					}
				} else {
					window.open(soundUrl, '', 'width=1, height=1');
				}
			}
		});
	}
	
	function winPlayer(objUrl){
		$('#captchaAudio').html('<vgsound src="' + objUrl + '">');
	}
	
	function refreshBtn(type){
		var rand = Math.random();
		var url = "/board/api/captchaImg.do?rand="+rand;
		$('#captchaImg').attr("src", "/board/api/captchaImg.do?rand=");
	}

