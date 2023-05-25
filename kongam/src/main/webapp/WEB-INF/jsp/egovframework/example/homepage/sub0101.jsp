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
        <section class="sub-visual" id="sub-company">
            <div class="txt" data-aos="fade-up">
                <strong>회사소개</strong>
                <p>공감아이티는 응용 소프트웨어 개발 전문 기업입니다.</p>
            </div>
        </section>
        <div id="tabbar">
            <div class="button-group w_25">
                <button class="tablinks active" onClick="location.href='/companies/index.do'">인사말</button>
                <button class="tablinks" onClick="location.href='/companies/history.do'">연혁</button>
                <button class="tablinks" onClick="location.href='/companies/org.do'">조직도</button>
                <button class="tablinks" onClick="location.href='/companies/location.do'">오시는길</button>
            </div>
        </div>
        <section class="sub-contents" id="company">
            <div id="greeting_2022" class="tabcontent_scroll">
                <div class="content">
                    <h3>인사말</h3>
                    <div class="greeting-visual">
                        <img src="/resources/images/2022/greeting-visual.jpg" alt="empathy for other people’s - 공감아이티는 사람의 소중한 가치를 최우선으로하는 공감아이티는 사람중심의 경영을 통한 탁월함과 감성비즈니스로 최고의 기업가치를 창출하겠습니다." />
                    </div>
                    <div class="greeting-text"data-aos="fade-right">
                        <h4>투명한 경영과 소통을 통한 의사결정을 통해<br />더불어 만들어가는 풍요롭고 행복한 회사를 만들어 가겠습니다.</h4>
                        <p>㈜공감아이티는 고객, 직원, 조직과의 공감ㆍ 소통을 중요시하는 정보기술 서비스 전문기업 입니다. <br />
                            <br />
                            다수의 지자체 및 공공기관을 대상으로 위치기반 기술을 응용한 토지, 교통, 건축, 농업, 재난, 재해, 소방 등 <br />
                            다양한 분야에서 행정업무에 특화된 맞춤형 솔루션을 개발하여 공급하고 있습니다. <br />
                            공간정보를 활용한 독보적인 GIS분야 자체 기술을 보유하고 있으며, <br />
                            끊임없는 연구 개발과 기술혁신을 통해 고객에게 최고의 가치를 제공할 수 있도록 노력하고 있습니다. <br />
                            <br />
                            사람과 기술 중심의 경영철학을 바탕으로 초심을 잃지 않고 <br />
                            고객이 추구하는 업무에서 항상 인정받는 기업이 될 것을 약속 드립니다. <br />
                            <br />
                            감사합니다.
                        </p>
                    </div>
                </div>
                <div class="signature" data-aos="fade-zoom-in" >
                    <div class="signature-text" data-aos="fade-right" data-aos-delay="200">
                        <h4>혁신과 신뢰의 가치를 높이고</h4>
                        <p>지속적인 기술혁신 통한 차별화된 IT 서비스와 협업과 소통<br />
                        그리고 공정의 가치를 더하여 경쟁력과 만족도를 높여갑니다.</p>
                        <h4>행복한 나눔과 상생</h4>
                        <p>사람중심의 공유와 공공 이윤 추구를 통해<br />
                        보다 실질적이고 행복한 나눔과 상생을 추구합니다.</p>
                        <h4>합리적인 공감</h4>
                        <p>리더 중심의 의사결정시스템과 자기주도적 문제해결을<br />
                        학습강화로 서비스 불만을 해소와 개인의 역량을 향상합니다.</p>
                        <h4>바르고 선한 시너지</h4>
                        <p>공감만의 혁신적이고 전문적인 서비스를 통해
                        더 큰 만족과 가치를 선사하여 새로운 비즈니스 혁신을 이룹니다.</p>
                    </div>
                    <div class="signature-img">
                        <div class="si-wrap">
                            <i class="si-1"></i>
                            <i class="si-2"></i>
                            <i class="si-3"></i>
                            <i class="si-4"></i>
                        </div>
                    </div>
                </div>
                <div class="content">
                    <div class="greeting-copy" data-aos="fade-up" >
                        <p>올바른 IT서비스를 위해 <span>우리는 오늘도 <b>Creation!!</b></span></p>
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