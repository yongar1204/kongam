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
                <button class="tablinks active" onClick="location.href='/solutions/intous/esb.do'">IntoUs ESB</button>
                <button class="tablinks" onClick="location.href='/solutions/intous/etl.do'">IntoUs ETL</button>
            </div>
        </div>
        <section class="sub-contents" id="business-area">
            <div class="content">                
                <div id="business01-wrap" class="tabcontent_tab" style="display: block;">
                    <h3>IntoUs ESB</h3>
                    <p class="mb40">Iot 센서 등 실시간 자료 수집 에서 이기종의 타시스템의 온·오프라인 데이터 수집을 위한 메시지 기반의 연계 솔루션 
                        공간정보 연계를 위한 Geometry를 포함한 다양한 포멧의 지원과 글로벌 표준 연계 기술을 사용하는 연계통합랫폼으로, 다양한 환경에서 운영되는 정보들을 통합할 수 있는 ESB 제품</p>
                    <h3>IntoUs 연계 아키텍쳐</h3>
                    <div class="graybox mb40">
                        <div class="img">
                            <img src="/resources/images/egovframework/homepage/ESB01.png">
                        </div>
                    </div>
                    <h3>IntoUs 메시징 기반 연계</h3>
                    <div class="graybox mb40">
                        <div class="img">
                            <img src="/resources/images/egovframework/homepage/ESB02.png">
                        </div>
                    </div>
                    <h3>IntoUs 구성요소</h3>
                    <div class="graybox mb40">
                        <div class="img">
                            <img src="/resources/images/egovframework/homepage/ESB03.png">
                        </div>
                    </div>
                    <h3>IntoUs 특장점</h3>
                    <table class="tbl-basic mt20">
                        <caption>OpenLayers 설명</caption>
                        <colgroup>
                            <col style="width:50%">
                            <col style="width:50%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>특징</th>
                                <th>장점</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <ul class="list">
                                        <li>미들웨어(Bus)를 이용한 서비스 중심의 시스템 연계방식</li>
                                        <li>EAI에 표준I/F와 SOA사상을 반영한 기술 구조</li>
                                        <li>표준기술(웹서비스,XML 등)을 책택 이기종을 포함한 표준통합 환경을 제공</li>
                                        <li>멀티 프로토콜 지원과 분산구조 형태의 다양한 결합 가능</li>
                                    </ul>
                                </td>
                                <td>
                                    <ul class="list">
                                        <li>표준기술 사용 및 서비스 단위 재사용으로 통합비용 절감</li>
                                        <li>버스 형태의 연결 구조로 확장성/유연성이 높음</li>
                                        <li>AMQP를 사용하여 다양한 언어와 프로토콜을 지원함</li>
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