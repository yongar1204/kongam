<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="/resources/mobile/js/2022/layout.js"></script>
<script src="/resources/mobile/js/2022/contact-us.js"></script>
<!-- logo & button -->
<div class="pcContainer">
    <h1> <a href="/" title="홈으로"> 홈으로</a> </h1>
    <button type="button" title="문의하기" class="openCU"><i></i>문의하기</button>
    <button type="button" title="전체메뉴" class="moMenu"><i></i>전체메뉴</button>
</div>

<!-- gnb -->
<ul class="gnb" id="gnb">
    <li><a href="/mobile/companies/index.do">회사소개</a>
        <ul class="sub">
            <li><a href="/mobile/companies/index.do">인사말</a></li>
            <li><a href="/mobile/companies/history.do">연혁</a></li>
            <li><a href="/mobile/companies/org.do">조직도</a></li>
            <li><a href="/mobile/companies/location.do">오시는길</a></li>
        </ul>
    </li>
    <li><a href="/mobile/bigdata.do">데이터 거버넌스 사업</a>
        <!-- <ul class="sub">
            <li><a href="sub0801.html#bigData-1">intoUs 소개</a></li>
            <li><a href="sub0801.html#bigData-2">intoUs ESB</a></li>
            <li><a href="sub0801.html#bigData-3">intoUs ETL</a></li>
            <li><a href="sub0801.html#bigData-4">intoUs QM/MM</a></li>
        </ul> -->
    </li>
    <li><a href="/mobile/platform.do">플랫폼 사업</a>
        <!-- <ul class="sub">
            <li><a href="sub0802.html#platform-1">intoUs Stream</a></li>
            <li><a href="sub0802.html#platform-2">intoUs IoT</a></li>
            <li><a href="sub0802.html#platform-3">Smart City Platform</a></li>
        </ul> -->
    </li>
    <li><a href="/mobile/gis.do">GIS 솔루션 사업</a>
        <!-- <ul class="sub">
            <li><a href="sub0803.html#ezMap-1">ezmap 소개</a></li>
            <li><a href="sub0803.html#ezMap-2">ezmap view</a></li>
            <li><a href="sub0803.html#ezMap-3">ezmap Control</a></li>
            <li><a href="sub0803.html#ezMap-4">ezmap edit</a></li>
        </ul> -->
    </li>
    <li><a href="/mobile/board/list/notice.do">공감소식</a>
        <ul class="sub">
            <li><a href="/mobile/board/list/notice.do">공지사항</a></li>
            <li><a href="/mobile/board/list/news.do">뉴스&보도자료</a></li>
            <li><a href="/mobile/board/list/activity.do">사회공헌활동</a></li>
        </ul>
    </li>
    <li><a href="/mobile/recruits/index.do">채용안내</a>
        <ul class="sub">
            <li><a href="/mobile/recruits/index.do">인재상</a></li>
            <li><a href="/mobile/recruits/benefits.do">복리후생</a></li>
            <li><a href="/mobile/recruits/board.do">채용안내/공고</a></li>
        </ul>
    </li>
</ul>


<article class="popup-contactUs">
    <div class="cu-wrap">
        <div class="head">
            <div class="pcContainer">
                <h3>contact us</h3>
                <p>궁금하신 사항은 문의하기를 이용해주세요.<br />담당자가 자세하게 안내해드리겠습니다.</p>
                <button type="button" class="close" title="닫기"><i class="ico-close"></i>닫기</button>
            </div>        
        </div>
        <div class="cont">
            <div class="pcContainer">
            	<form id="contactUsForm">
	                <div class="cont-wrap"><div class="cont-inner">
	                    <div class="tBox">
	                        <label for="Input-1">이름</label>
	                        <input type="text" id="Input-1" name="contactName" autocomplete="off"  />
	                    </div>           
	                    <div class="tBox">
	                        <label for="Input-3">이메일 주소</label>
	                        <input type="text" id="Input-3" name="contactEmail" autocomplete="off"  />
	                    </div> 
	                    <div class="tBox">
	                        <label for="Input-5">제목</label>
	                        <input type="text" id="Input-5" name="title" autocomplete="off"  />
	                    </div>       
	                    <div class="taBox">
	                        <label for="textarea-1">내용</label>
	                        <textarea id="textarea-1" name="content" rows="15"></textarea>
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