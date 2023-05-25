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
                <button class="tablinks active" onClick="location.href='/solutions/intous.do'">IntoUs 서비스란?</button>
                <button class="tablinks" onClick="location.href='/solutions/intous/qm-mm.do'">IntoUs QM/MM</button>
                <button class="tablinks" onClick="location.href='/solutions/intous/esb.do'">IntoUs ESB</button>
                <button class="tablinks" onClick="location.href='/solutions/intous/etl.do'">IntoUs ETL</button>
            </div>
        </div>
        <section class="sub-contents" id="business-area">
            <div class="content">                
                <div id="data-wrap" class="tabcontent_tab" style="display: block;">
                    <h3>IntoUs 서비스</h3>
                    <p class="mb40">IntoUs 구축에 필요한 데이터 연계 수집, 적재, 표준, 품질관리 전 과정에 필요한 S/W를 One-Flatform의 통합 솔루션 및 서비스 제공</p>
                    <div class="graybox mb40">
                        <div class="img">
                            <img src="/resources/images/egovframework/homepage/datagovernance.png">
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