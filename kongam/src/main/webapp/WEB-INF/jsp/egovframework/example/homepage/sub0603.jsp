<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<%@ include file="/WEB-INF/jsp/egovframework/example/fragment/head.jsp" %>
<body>
<!--AOS 라이브러리-->
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script>
        AOS.init({
            easing: 'ease-out-sine',
            /*easing: 'ease-out-back',*/
            duration: 1000
        });
    </script>    
    <header id="header">
        <%@ include file="/WEB-INF/jsp/egovframework/example/fragment/header.jsp" %>
		<%@ include file="/WEB-INF/jsp/egovframework/example/fragment/contactus.jsp" %>
    </header>
    <div class="wrap">
        <div class="header-wrap">
            <div class="bg"></div>           
        </div>
        <section class="sub-visual" id="sub-business">
            <div class="txt" data-aos="fade-up">
                <strong>빅데이터서비스</strong>
                <p>공감아이티는 응용 소프트웨어 개발 전문 기업입니다.</p>
            </div>
        </section>
        <div id="tabbar">
            <div class="button-group w_25">
                <button class="tablinks" onClick="location.href='/solutions/intous.do'">IntoUs 서비스란?</button>
                <button class="tablinks" onClick="location.href='/solutions/intous/qm-mm.do'">IntoUs QM/MM</button>
                <button class="tablinks" onClick="location.href='/solutions/intous/esb.do'">IntoUs ESB</button>
                <button class="tablinks active" onClick="location.href='/solutions/intous/etl.do'">IntoUs ETL</button>
            </div>
        </div>
        <section class="sub-contents" id="business-area">
            <div class="content">                
                <div id="business01-wrap" class="tabcontent_tab" style="display: block;">
                    <h3>IntoUs ETL</h3>
                    <p class="mb40">Spring Integration FrameWork를 사용 성능과 안정성을 보장, 지오코딩 및 공간자표 변환 등 공간정보 처리 지원</p>
                    <h3>ETL 주요기능 및 특징</h3>
                    <div class="graybox mb40">
                        <div class="img">
                            <img src="/resources/images/egovframework/homepage/ETL01.png">
                        </div>
                    </div>
                    <h3>ETL GUI 화면 예시</h3>
                    <div class="graybox mb40">
                        <div class="img">
                            <img src="/resources/images/egovframework/homepage/ETL02.png">
                        </div>
                    </div>
                    <h3>좌표 변화 절차</h3>
                    <div class="graybox mb40">
                        <div class="img">
                            <img src="/resources/images/egovframework/homepage/ETL03.png">
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <footer id="footer">
        	<%@ include file="/WEB-INF/jsp/egovframework/example/fragment/footer.jsp" %>
        </footer>
        
    </div>
</body>
</html>