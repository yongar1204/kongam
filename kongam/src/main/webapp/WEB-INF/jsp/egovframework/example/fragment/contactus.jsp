<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<article class="popup-contactUs">
    <div class="cu-wrap">
        <div class="head">
            <div class="pcContainer">
                <h3>contact us</h3>
                <p>궁금하신 사항은 문의하기를 이용해주세요. 담당자가 자세하게 안내해드리겠습니다.</p>
                <button type="button" class="close" title="닫기"><i class="ico-close"></i>닫기</button>
            </div>
        </div>
        <div class="cont">
            <div class="pcContainer">
                <form id="contactUsForm">
                    <div class="cont-wrap"><div class="cont-inner">
                        <div class="tBox">
                            <label for="Input-1">이름</label>
                            <input type="text" id="Input-1" name="contactName" autocomplete="off" required/>
                        </div>
                        <div class="tBox">
                            <label for="Input-3">이메일 주소</label>
                            <input type="email" id="Input-3" name="contactEmail" autocomplete="off" required />
                        </div>
                        <div class="tBox">
                            <label for="Input-5">제목</label>
                            <input type="text" id="Input-5" name="title" autocomplete="off" required />
                        </div>
                        <div class="taBox">
                            <label for="textarea-1">내용</label>
                            <textarea id="textarea-1" name="content" cols="20" rows="20" required></textarea>
                        </div>
                        <div class="cBox">
                            <input type="checkbox" id="sc-term-00" class="allCheck" />
                            <label for="sc-term-00"><i class="ico-check"></i><span><b>이메일 수집에 동의합니다.</b>해당 문의에 대한 회신 목적으로 이메일을 수집하며, 상담 후 파기합니다.</span></label>
                        </div>
                        <!-- -------------------------------------- -->
                        <div class="form-group captcha-group">
                        	<label for="captcha" style="display:block;">자동 입력 방지</label>
                        	<div class="captcha">
                        		<div class="form-group">
                        			<img id="captchaImg" src="/board/api/captchaImg.do" alt="캡차 이미지" title="캡챠 이미지" />
                        			<div id="captchaAudio" style="display:none;"></div>
                        		</div>
                        		<div class="form-group">
	                        		<a onclick="javascript:refreshBtn()" class="refreshBtn">
	                        			<input type="button" value="새로고침" />
	                        		</a>
	                        		<a onclick="javascript:audio()" class="refreshBtn">
	                        			<input type="button" value="음성듣기" />
	                        		</a>
                        		</div>
	                        	<div class="form-group">
	                        		<input type="text" name="answer" id="answer" class="form-control">
	                        	</div>
                        	</div>
                        </div>
                        <!-- -------------------------------------- -->
	                    <div class="pcContainer">
	                		<div class="linkArea center">
	                    		<button id="contactUsSubmit" type="button" class="grey">문의하기</button>
	                		</div>
	            		</div>
                    </div></div>
                </form>
            </div>
        </div>
        <div class="foot">
        </div>
    </div>
</article>

<script>
	/* function audio() {
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
				var soundUrl = 'captchaAudio.do?rand='+rand;
			}
		})
	}
	
	function winPlayer(objUrl){
		$('#captchaAudio').html('<vgsound src="' + objUrl + '">');
	}
	
	function refreshBtn(type){
		var rand = Math.random();
		var url = "/board/api/captchaImg.do?rand="+rand;
		$('#captchaImg').attr("src", "/board/api/captchaImg.do?rand=");
		console.log(window.sessionStorage.length)
	} */
</script>
