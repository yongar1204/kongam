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
                <button class="tablinks active" onClick="location.href='/solutions/intous/qm-mm.do'">IntoUs QM/MM</button>
                <button class="tablinks" onClick="location.href='/solutions/intous/esb.do'">IntoUs ESB</button>
                <button class="tablinks" onClick="location.href='/solutions/intous/etl.do'">IntoUs ETL</button>
            </div>
        </div>
        <section class="sub-contents" id="business-area">
            <div class="content">                
                <div id="data-wrap" class="tabcontent_tab" style="display: block;">
                    <!--div class="DataGovernance mb40"></div-->
                    <h3>IntoUs QM/MM</h3>
                    <p class="mb40">데이터 의 신뢰성을 보장하는 AI 기계학습  알고리즘  지원이 가능한  데이터 품질관리 3.0 기반 데이터 유형에 따라 필요한<br>
                        원시데이터, 데이터 가공,  데이터 활요에 따른 유형별 품질관리와 데이터구축 과정 품질관리를 위한 획득, 정제, 가공, 품질 검수 등을 포함</p>
                    <h3>QM/MM 관리 프로세스</h3>
                    <div class="graybox mb40">
                        <div class="img">
                            <img src="/resources/images/egovframework/homepage/QM-MM.png">
                        </div>
                    </div>
                    <h3>M/M(Mentadata Magagement) 관리 예시</h3>
                    <div class="graybox mb40">
                        <div class="img">
                            <img src="/resources/images/egovframework/homepage/MM.png">
                        </div>
                    </div>
                    <h3>Q/M(Mentadata Magagement) 관리 예시</h3>
                    <div class="graybox">
                        <div class="img">
                            <img src="/resources/images/egovframework/homepage/QM.png">
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