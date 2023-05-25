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
                <button class="tablinks" onClick="location.href='/companies/index.do'">인사말</button>
                <button class="tablinks" onClick="location.href='/companies/history.do'">연혁</button>
                <button class="tablinks" onClick="location.href='/companies/org.do'">조직도</button>
                <button class="tablinks active" onClick="location.href='/companies/location.do'">오시는길</button>
            </div>
        </div>
        <section class="sub-contents" id="company">
            <div id="location" class="tabcontent_scroll">
                <div class="content" style="width:1680px">
                    <h3>오시는길</h3>
                    <div>
                    	<div class="map" id="gyeryong">
                        <div id="daumRoughmapContainer1603171544631" class="root_daum_roughmap root_daum_roughmap_landing"></div>
                        <script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
                        <script charset="UTF-8">
                            new daum.roughmap.Lander({
                                "timestamp" : "1603171544631",
                                "key" : "22jcv",
                                "mapWidth" : "470",
                                "mapHeight" : "468"
                            }).render();
                        </script>
                        <address>
                            <strong>본사</strong>
                            <p>충청남도 계룡시 서금암3길 5, 206호</p>
                        </address>
                    </div>
	                    <div class="map" id="daejeon">
							<div id="daumRoughmapContainer1675844650891" class="root_daum_roughmap root_daum_roughmap_landing"></div>
							<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
							<script charset="UTF-8">
								new daum.roughmap.Lander({
									"timestamp" : "1675844650891",
									"key" : "2dopo",
									"mapWidth" : "470",
									"mapHeight" : "468"
								}).render();
							</script>
	                        <address>
	                            <strong>대전 사무실</strong>
	                            <p>대전시 유성구 죽동로297번길 69, 랜드빌딩 4층</p>
	                        </address>                        
	                    </div>
	                    <div class="map" id="sejeong">
							<div id="daumRoughmapContainer1675846472369" class="root_daum_roughmap root_daum_roughmap_landing"></div>
							<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
							<script charset="UTF-8">
								new daum.roughmap.Lander({
									"timestamp" : "1675846472369",
									"key" : "2doqe",
									"mapWidth" : "470",
									"mapHeight" : "468"
								}).render();
							</script>
							<address>
	                            <strong>세종 사무실</strong>
	                            <p>세종특별자치시 나성로 33-6, 에이스타워704-2</p>
	                        </address>                
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