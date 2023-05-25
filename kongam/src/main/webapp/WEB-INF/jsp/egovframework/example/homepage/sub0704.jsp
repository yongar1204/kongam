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
                <button class="tablinks" onClick="location.href='/business/archive.do'">아카이브서비스</button>
                <button class="tablinks active" onClick="location.href='/business/sm-si.do'">SI/SM서비스</button>
            </div>
        </div>
        <section class="sub-contents" id="technology-area">
            <div class="content">
                <div id="service-field-wrap" class="tabcontent_tab" style="display: block;">
                    <h3>통합재난ㆍ상황관리 사업</h3>
                    <p class="mb40">㈜공감아이티는 Open source 및 상용 GIS S/W를 이용한 웹 기반 공간정보통합 관리시스템 및 공간행정업무 맞춤형 솔루션을 개발하여<br>정부기관 및 지방자치단체를 대상으로 보급하고 있습니다. 각 기관에서 보유하고 있는 공간 정보와 실시간 정보 융합기술을 활용하여 다양한 분야에 활용할 수 있습니다.
                    </p>
                    <h4>통합 재난관리 시스템 구성</h4>
                    <div class="graybox mb80" id="diagram">
                        <dl>
                            <dt>통합 재난관리 시스템 구성</dt>
                            <dd><img src="/resources/images/egovframework/homepage/business0501.gif"></dd>
                        </dl>
                        <dl class="mt50">
                            <dt>외부연계</dt>
                            <dd><img src="/resources/images/egovframework/homepage/business0502.gif"></dd>
                        </dl>
                        <dl class="mt50">
                            <dt>사용자</dt>
                            <dd>대국민ㆍ재난전문가ㆍ유관기관ㆍ업무담당자</dd>
                        </dl>
                    </div>
                    <h3>모바일사업</h3>
                    <p class="mb40">최근 스마트폰의 확산으로 인해 스마트폰이 PC사용률을 추월함에 따라시스템 구축시 모바일 기반의 접근성을 반드시 고려해야 합니다.<br>
                        모바일 특성에 맞게 편의성을 고려한 UI/UX를 구성하고 업무담당자와 국민모두가 언제 어디서나 쉽고 편하게 접근할 수있는 맞춤형 서비스를 제공합니다.
                    </p>
                    <h4>사업분야</h4>
                    <div class="graybox" id="mobile">
                        <div>
                            <strong>재난분야</strong>
                            <i><img src="/resources/images/egovframework/homepage/business07.png"></i>
                            <ul>
                                <li><img src="/resources/images/egovframework/homepage/business10.png"></li>
                                <li>재난 발생시 실시간 알림서비스</li>
                                <li>행동요령 조회 및 재난정보 SNS 공유</li>
                                <li>안전을 위협하는 생활불편사항 신고</li>
                            </ul>                            
                        </div>
                        <div>
                            <strong>GIS분야</strong>
                            <i><img src="/resources/images/egovframework/homepage/business08.png"></i>
                            <ul>
                                <li><img src="/resources/images/egovframework/homepage/business11.png"></li>
                                <li>내 위치 주변 주요시설물 정보 조회</li>
                                <li>도착지 설정 후 도보, 자동차 등 경로안내</li>
                                <li>실생활에 밀접한 다양한 지도서비스 제공</li>
                            </ul>
                        </div>
                        <div>
                            <strong>공공서비스분야</strong>
                            <i><img src="/resources/images/egovframework/homepage/business09.png"></i>
                            <ul>
                                <li><img src="/resources/images/egovframework/homepage/business12.png"></li>
                                <li>토지 및 건축물대장 등 부동산정보 조회</li>
                                <li>현장에서 데이터 취득 및 관리 지원</li>
                                <li>공공데이터를 활용한 신규 서비스 도출</li>
                            </ul>
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