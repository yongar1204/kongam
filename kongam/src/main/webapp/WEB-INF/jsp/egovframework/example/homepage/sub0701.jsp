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
                <button class="tablinks active" onClick="location.href='/business/ai.do'">AI분석/시각화 서비스</button>
                <button class="tablinks" onClick="location.href='/business/ar.do'">위치기반서비스</button>
                <button class="tablinks" onClick="location.href='/business/archive.do'">아카이브서비스</button>
                <button class="tablinks" onClick="location.href='/business/sm-si.do'">SI/SM서비스</button>
            </div>
        </div>
        <section class="sub-contents" id="technology-area">
            <div class="content">
                <div id="service-field-wrap" class="tabcontent_tab" style="display: block;">
                    <h3>Web GIS 기술</h3>
                    <p class="mb40">Web GIS(Geographical Information System) 는 웹을 기반으로 하는 각종 지리정보를 서비스하는 시스템입니다.<br>
                        일반적인 지도를 기본으로 최신의 웹기술과 개방형 국제표준을 적용하여 생활, 교통정보 및 기후, 식생, 강수, 인구 등의 모든 공간정보를 총체적으로 통합한 시스템입니다.</p>
                    <h3>OGC 표준지도 서비스 활용</h3>
                    <p class="mb20">OGC(Open Geospatial Consortium)1994년 개방형 기술을 GIS분야에 활용하고자 민간 산업체 기반으로 설립된 단체, 지도서비스 기반 다양한 표준 제정</p>
                    <div class="graybox mb40">
                        <div class="img"><img src="/resources/images/egovframework/homepage/technology01.gif"></div>
                    </div>
                    <h3>OpenLayers</h3>
                    <p class="mb20">지도서버를 이용해서 서비스 할 수 있는 오픈소스 라이브러리 Client 지도서비스를 위하여 Javascript를 이용, AJAX, Web2.0 활용</p>
                    <div class="graybox">
                        <div class="img"><img src="/resources/images/egovframework/homepage/technology02.gif"></div>
                    </div>
                    <table class="tbl-basic mt20">
                        <caption>OpenLayers 설명</caption>
                        <colgroup>
                            <col style="width:20%">
                            <col style="width:80%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>구성요소</th>
                                <th>상세설명</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th>Map</th>
                                <td>웹지도 서비스를 제공하기 위한 기본 클래스 지도를 생성하고 조작하기 위한 프로퍼티 및 함수로 구성됨</td>
                            </tr>
                            <tr>
                                <th>Layer</th>
                                <td>Layer를 생성하고 조작하는 프로퍼티 및 함수로 구성된 클래스(포토샵의 Layer와 유사) WMS, WFS, GML, Vector Layer 등을 지원</td>
                            </tr>
                            <tr>
                                <th>Control</th>
                                <td>맵 객체를 컨트롤 하기 위한 클래스 확대, 축소, 거리, 면적 등 컨트롤의 기본 클래스 제공</td>
                            </tr>
                            <tr>
                                <th>Handler</th>
                                <td>컨트롤과 연결되어 발생하는 이벤트 클래스</td>
                            </tr>
                            <tr>
                                <th>Base Types</th>
                                <td>OpenLayers에서 사용하는 기본 타입들을 정의함, 문자열, 숫자, 함수, 배열을 다루기 위한 함수 포함</td>
                            </tr>
                        </tbody>
                    </table>
                    <div id="openlayers">
                        <dl>
                            <dt>지도표현</dt>
                            <dd>웹상에서 이미지 및 점, 선, 면 등의 백터 형태로 지도를 표현</dd>
                            <dd class="img"><img src="/resources/images/egovframework/homepage/technology03.gif"></dd>
                        </dl>
                        <dl>
                            <dt>심볼설정</dt>
                            <dd>점, 선, 면에 대한 색상, 투명도, 스타일 설정</dd>
                            <dd class="img"><img src="/resources/images/egovframework/homepage/technology04.gif"></dd>
                        </dl>
                        <dl>
                            <dt>거리/면적 측정</dt>
                            <dd>지도상 작도를 통한 거리 및 면적 측정</dd>
                            <dd class="img"><img src="/resources/images/egovframework/homepage/technology05.gif"></dd>
                        </dl>
                    </div>
                    <h3 class="mt40">OpenAPI</h3>
                    <p class="mb20">직접 응용 프로그램과 서비스를 개발 할 수 있도록 외부에서 지원하는 공개된 지도 API 활용</p>
                    <div class="graybox">
                        <div class="img"><img src="/resources/images/egovframework/homepage/technology06.gif"></div>
                    </div>
                    <h3 class="mt40">하이브리드 앱 기술</h3>
                    <p class="mb20">직접 응용 프로그램과 서비스를 개발 할 수 있도록 외부에서 지원하는 공개된 지도 API 활용</p>
                    <div class="graybox">
                        <div class="img"><img src="/resources/images/egovframework/homepage/technology07.gif"></div>
                    </div>
                    <table class="tbl-basic mt20">
                        <caption>OpenLayers 설명</caption>
                        <colgroup>
                            <col style="width:20%">
                            <col style="width:40%">
                            <col style="width:40%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>비교항목</th>
                                <th>네이티브 앱</th>
                                <th>하이브리드 앱</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th>실행속도</th>
                                <td>
                                    <ul class="list">
                                        <li>내부 기능이 최종 실행 할 수 있는 기계어 형태, 사전에 컴파일과 최적화 되어있어 실행속도가 빠르고 사이즈가 가벼움</li>
                                    </ul>
                                </td>
                                <td>
                                    <ul class="list">
                                        <li>어플리케이션 실행시 모든 기능이 웹 브라우저를 경유해 간접적으로 실행됨</li>
                                        <li>웹 어플리케이션과 동일</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>보안성</th>
                                <td>
                                    <ul class="list">
                                        <li>내부 실행 코드가 기계어로 컴파일 되었기 때문에 시스템 내부 처리 정보 노출 등이 거의 불가능함</li>
                                    </ul>
                                </td>
                                <td>
                                    <ul class="list">
                                        <li>웹 어플리케이션과 동일</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>장치제어</th>
                                <td>
                                    <ul class="list">
                                        <li>디바이스의 장착된 카메라, GPS등을 모두 제어 할 수 있음</li>
                                    </ul>
                                </td>
                                <td>
                                    <ul class="list">
                                        <li>디바이스에 장착된 주변장치를 네이비트 OS기반의 모듈을 통해 구현</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>실행방식</th>
                                <td>
                                    <ul class="list">
                                        <li>OS 초기화면에서 해당 어플리케이션 아이콘을 선택해 직접 실행하는 방식</li>
                                    </ul>
                                </td>
                                <td>
                                    <ul class="list">
                                        <li>OS 초기화면에서 어플리케이션 아이콘을 선택하면 대상 URL로 이동 및 접속해 실행하는 방식</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>어플리케이션 개발 및 운영</th>
                                <td>
                                    <ul class="list">
                                        <li>모든 어플리케이션을 각 운영체제별로 개발 및 유지보수해야함</li>
                                    </ul>
                                </td>
                                <td>
                                    <ul class="list">
                                        <li>웹 브라우저만 있다면 운영체제에 상관없이 실행 가능</li>
                                    </ul>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
        <footer id="footer">
        	<%@ include file="/WEB-INF/jsp/egovframework/example/fragment/footer.jsp" %>
        </footer>
        
    </div>
</body>
</html>