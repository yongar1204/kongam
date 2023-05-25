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
        <section class="sub-visual" id="sub-technology">
            <div class="txt" data-aos="fade-up">
                <strong>서비스분야</strong>
                <p>공감아이티는 응용 소프트웨어 개발 전문 기업입니다.</p>
            </div>
        </section>
        <div id="tabbar">
            <div class="button-group w_25">
                <button class="tablinks" onClick="location.href='/business/ai.do'">AI분석/시각화 서비스</button>
                <button class="tablinks" onClick="location.href='/business/ar.do'">위치기반서비스</button>
                <button class="tablinks active" onClick="location.href='/business/archive.do'">아카이브서비스</button>
                <button class="tablinks" onClick="location.href='/business/sm-si.do'">SI/SM서비스</button>
            </div>
        </div>
        <section class="sub-contents" id="technology-area">
            <div class="content">
                <div id="service-field-wrap" class="tabcontent_tab" style="display: block;">
                    <h3>아카이브서비스</h3>
                    <p class="mb40">아카이브서비스 시스템입니다.</p>
                    <h3>통합유지관리</h3>
                    <p class="mb40">다양한 공공기관 시스템 구축 경험으로 고객의 요구사항을 즉시 반영하여 시스템 유지관리를 합니다.</p>
                    <h4>행정정보·공간정보 융합 서비스</h4>
                    <div class="graybox" id="case">
                        <div>
                            <p><img src="/resources/images/egovframework/homepage/business0601.gif"></p>
                            <dl>
                                <dt>도시기반시설물 관리시스템</dt>
                                <dd>지자체에서 보유하고 운영, 관리중인 도로와 7대 지하 시설물(전기,통신,가스,난방등)을 대상으로 웹GIS기술을 통해 통합하여 서비스</dd>
                                <dd>도시기반시설물을 한눈에 파악할 수 있고, 굴착시 안전사고 예방과 시설물 관리업무에<br>
                                    대한 능동적 관리체계 구축</dd>
                            </dl>
                        </div>
                        <div>
                            <p><img src="/resources/images/egovframework/homepage/business0602.gif"></p>
                            <dl>
                                <dt>생활지리정보시스템</dt>
                                <dd>기 구축된 공간정보를 기반으로 부동산, 교통,생활편의, 교육, 복지 등 실생활에 밀접한<br>
                                    공간 정보와 행정정보를 융합하여 서비스</dd>
                            </dl>
                        </div>
                        <div>
                            <p><img src="/resources/images/egovframework/homepage/business0603.gif"></p>
                            <dl>
                                <dt>항공사진조회시스템</dt>
                                <dd>최신 항공사진과 과거 항공사진을 연도별로 비교하여 토지 및 지형의 변화,<br>
                                    토지이용현황 등을 확인해 행정자료로 활용</dd>
                                <dd>지적민원, 재산관리, 도시건축, 산림, 농지관리 등 각종 인허가 부서에서<br>
                                    대민 행정 서비스에 폭넓게 활용 가능</dd>
                            </dl>
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