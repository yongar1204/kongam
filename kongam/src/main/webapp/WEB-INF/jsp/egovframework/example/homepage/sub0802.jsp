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
        <section class="sub-visual" id="solution-2">
            <div class="txt" data-aos="fade-up">
                <strong>플랫폼 사업</strong>
                <p>공감아이티는 응용 소프트웨어 개발 전문 기업입니다.</p>
            </div>
        </section>
        <div id="tabbar" class="solution">
            <div class="button-group w_33 tabNav">
                <a href="#platform-1" class="tablinks active">IntoUs Stream</a>
                <a href="#platform-2" class="tablinks">IntoUs IoT</a>
                <a href="#platform-3" class="tablinks">Smart City Platform</a>
            </div>
        </div>
        <style>
            .tabNav-list > section{display:block;}
        </style>
        <section class="sub-contents">
            <div class="sol-content tabNav-list">
                <!-- intoUs Stream :: S -->
                <section id="platform-1">
                    <!-- cont-1 -->
                    <div class="cont-1">
                        <h3 class="basic-title" id="stream-1">
                            <b class="tit">IntoUs Stream</b>
                            <span class="txt">CCTV방범체계부터 산불감시, 항만감시, 저수지 범람 등<br />
                                다양한 재난상황을 실시간으로 분석하는 지능형 통합 재난 관제기술과 날씨정보, 지리정보시스템 등을 연계하여<br />
                                지자체, 학교시설 등 다양한 관리주체가 재난 위협을 효과적으로 모니터링 및 판단하는<br />
                                예측 및 공동대응기법을 적용한 <b>강력한 재난관리 연계시스템</b>입니다.
                            </span>
                        </h3>
                        <div class="c-wrap">
                            <ul class="stream-group">
                                <li data-aos="fade-right"  data-aos-duration="500"  data-aos-delay="500"> <span>영상데이터<br />디바이스</span> </li>
                                <li data-aos="fade-right"  data-aos-duration="500"  data-aos-delay="700"> <span>영상데이터<br />수집 및 저장</span> </li>
                                <li data-aos="fade-right"  data-aos-duration="500"  data-aos-delay="900"> <span>영상데이터<br />통합관리</span> </li>
                                <li data-aos="fade-right"  data-aos-duration="500"  data-aos-delay="1100"> <span>서비스제공</span> </li>
                            </ul>
                        </div>
                    </div>             
                    <!-- cont-2 -->
                    <div class="cont-2 " id="stream-2">
                        <div class="bg-point">
                            <i class="bg"data-aos="slide-left"  data-aos-duration="1000" data-aos-delay="500" data-aos-anchor="#stream-2"></i>
                            <i class="txt"data-aos="slide-right"  data-aos-duration="500" data-aos-delay="1500" data-aos-anchor="#stream-2"><img src="/resources/images/sub/bg-point-txt.png" alt="INTOUS POINT" /></i>
                        </div>
                        <div class="c-wrap">
                            <div class="visual-box">
                                <div class="icon">
                                    <span >
                                        <i class="b" data-aos="fade-down"  data-aos-duration="500" data-aos-delay="1900" data-aos-anchor="#stream-2" ></i>
                                        <i class="g" data-aos="fade-down"  data-aos-duration="500" data-aos-delay="1700" data-aos-anchor="#stream-2"></i>
                                    </span>
                                </div>
                                <div class="main-img" data-aos="fade-up"  data-aos-duration="1000" data-aos-delay="1500" data-aos-anchor="#stream-2"> <img src="/resources/images/sub/platform-1-c1-2.jpg" alt="영상 데이터 업로드, 상황에 따른 영상 모드 지원 연관이미지" /> </div>
                                <i class="mi-bg" data-aos="zoom-in-left"  data-aos-duration="500" data-aos-delay="1000" data-aos-anchor="#stream-2"></i>
                            </div>
                            <div class="text-box">
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="2000" data-aos-anchor="#stream-2">
                                    <dt>영상 데이터 업로드</dt>
                                    <dd>CCTV, 드론영상, 스마트폰 영상, VMS Server 등 영상 데이터 수집</dd>
                                    <dd>수집된 영상 데이터를 영상 서버에 업로드</dd>
                                </dl>
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="2100" data-aos-anchor="#stream-2">
                                    <dt>상황에 따른 영상 모드 지원</dt>
                                    <dd>사용자의 시스템 네트워크 속도에 따라 화질 변화가 가능한 스트리밍 프로토콜 지원(HLS)</dd>
                                    <dd>실시간 영상 재생이 가능한 영상 프로토콜 지원(WebRTC)</dd>
                                </dl>
                            </div>
                        </div>
                    </div>      
                    <!-- cont-3 -->
                    <div class="cont-3" id="stream-3">
                        <div class="c-wrap">
                            <div class="text-box reverse">
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="1300" data-aos-anchor="#stream-3">
                                    <dt>광범위한 사이트 및 솔루션에 플러그인 가능</dt>
                                    <dd>HTML5 Player를 지원하는 라이브러리를 사용함으로써<br />다양한 플러그인 지원이 가능</dd>
                                    <dd>웹 사이트에 제공되며 모바일에서도 호환이 가능</dd>
                                </dl>
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="1400" data-aos-anchor="#stream-3">
                                    <dt>연계가 Base인 솔루션</dt>
                                    <dd>망연계 등 NAT를 통한 다양한 연계상황에 대응 가능</dd>
                                    <dd>API제공으로 타시스템과 연계 가능</dd>
                                </dl>
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="1500" data-aos-anchor="#stream-3">
                                    <dt>사용자 환경에 맞춘 시스템 매니지먼트 제공</dt>
                                    <dd>사용자 시스템 환경에 맞는 동영상 기술 적용 </dd>
                                    <dd>네트워크 속도에 따른 화질 변화 기능 적용</dd>
                                </dl>
                            </div>
                            <div class="visual-box">
                                <div class="icon">
                                    <span >
                                        <i class="b" data-aos="fade-down"  data-aos-duration="500" data-aos-delay="1200" data-aos-anchor="#stream-3" ></i>
                                        <i class="g" data-aos="fade-down"  data-aos-duration="500" data-aos-delay="1000" data-aos-anchor="#stream-3"></i>
                                    </span>
                                </div>
                                <div class="main-img" data-aos="fade-up"  data-aos-duration="800" data-aos-delay="800" data-aos-anchor="#stream-3"> <img src="/resources/images/sub/platform-1-c1-3.jpg" alt="intoUs Stream 연관이미지" /> </div>
                                <i class="mi-bg" data-aos="zoom-in-left"  data-aos-duration="500" data-aos-delay="300" data-aos-anchor="#stream-3"></i>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- intoUs Stream :: E -->
                <!-- intoUs IoT :: S -->
                <section id="platform-2">
                    <!-- cont-1 -->
                    <div class="cont-1">
                        <h3 class="basic-title"  data-aos="fade-up" data-aos-delay="500">
                            <b class="tit">IntoUs IoT</b>
                            <span class="txt">실시간 데이터처리 및 사물인터넷 기술을 적용한 최적화된 시스템으로<br />
                            <b>실시간 장애 및 수요예측기능을 제공</b>합니다.
                            </span>
                        </h3>
                        <div class="c-wrap">
                            <ul class="stream-group">
                                <li data-aos="fade-right"  data-aos-duration="500"  data-aos-delay="500"> <span>센서<br />디바이스</span> </li>
                                <li data-aos="fade-right"  data-aos-duration="500"  data-aos-delay="700"> <span>센서<br />수집 및 저장</span> </li>
                                <li data-aos="fade-right"  data-aos-duration="500"  data-aos-delay="900"> <span>센서데이터<br />통합관리</span> </li>
                                <li data-aos="fade-right"  data-aos-duration="500"  data-aos-delay="1100"> <span>서비스제공</span> </li>
                            </ul>
                        </div>
                    </div>             
                    <!-- cont-2 -->
                    <div class="cont-2 " id="IoT-2">
                        <div class="bg-point">
                            <i class="bg"data-aos="slide-left"  data-aos-duration="1000" data-aos-delay="500" data-aos-anchor="#IoT-2"></i>
                            <i class="txt"data-aos="slide-right"  data-aos-duration="500" data-aos-delay="1500" data-aos-anchor="#IoT-2"><img src="/resources/images/sub/bg-point-txt.png" alt="INTOUS POINT" /></i>
                        </div>
                        <div class="c-wrap">
                            <div class="visual-box">
                                <div class="icon">
                                    <span >
                                        <i class="b" data-aos="fade-down"  data-aos-duration="500" data-aos-delay="1900" data-aos-anchor="#IoT-2" ></i>
                                        <i class="g" data-aos="fade-down"  data-aos-duration="500" data-aos-delay="1700" data-aos-anchor="#IoT-2"></i>
                                    </span>
                                </div>
                                <div class="main-img" data-aos="fade-up"  data-aos-duration="1000" data-aos-delay="1500" data-aos-anchor="#IoT-2"> <img src="/resources/images/sub/platform-2-c2-1.jpg" alt="다양한 데이터 수집 기능, 실시간 위치정보 및 추적기능 제공 지원 연관이미지" /> </div>
                                <i class="mi-bg" data-aos="zoom-in-left"  data-aos-duration="500" data-aos-delay="1000" data-aos-anchor="#IoT-2"></i>
                            </div>
                            <div class="text-box">
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="2000" data-aos-anchor="#IoT-2">
                                    <dt>다양한 데이터 수집 기능</dt>
                                    <dd class="noBul">IoT 센서 등 실시간 자료 수집 지원 및 이기종 타시스템의<br />온오프라인 데이터 수집 기능, Global Standard 연계 기술 적용</dd>
                                </dl>
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="2100" data-aos-anchor="#IoT-2">
                                    <dt>실시간 위치정보 및 추적기능 제공</dt>
                                    <dd class="noBul">사람, 자산, 차량 등의 실시간 위치파악 및 이동경로 추적<br />위치분석 및 주요 부착 센서의 실시간 모니터링</dd>
                                </dl>
                            </div>
                        </div>
                    </div>      
                    <!-- cont-3 -->
                    <div class="cont-3" id="IoT-3">
                        <div class="c-wrap">
                            <div class="text-box reverse">
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="1300" data-aos-anchor="#IoT-3">
                                    <dt>Remote Control 및 Real-Time Actuator 제어</dt>
                                    <dd class="noBul">다양한 IoT Controller를 통한 Remote Command 실행 및<br />제어 기능 제공 및 IoT Controller를 통한 Actuator 제어</dd>
                                </dl>
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="1400" data-aos-anchor="#IoT-3">
                                    <dt>데이터 통합 모니터링 기능 제공</dt>
                                    <dd class="noBul">다양한 IoT Senser 및 장비로부터의 데이터 수집,<br />Enterprise 내 다양한 Business Application 표준 인터페이스 제공</dd>
                                </dl>
                            </div>
                            <div class="visual-box">
                                <div class="icon">
                                    <span >
                                        <i class="b" data-aos="fade-down"  data-aos-duration="500" data-aos-delay="1200" data-aos-anchor="#IoT-3" ></i>
                                        <i class="g" data-aos="fade-down"  data-aos-duration="500" data-aos-delay="1000" data-aos-anchor="#IoT-3"></i>
                                    </span>
                                </div>
                                <div class="main-img" data-aos="fade-up"  data-aos-duration="800" data-aos-delay="800" data-aos-anchor="#IoT-3"> <img src="/resources/images/sub/platform-2-c3-1.jpg" alt="intoUs IoT 연관이미지" /> </div>
                                <i class="mi-bg" data-aos="zoom-in-left"  data-aos-duration="500" data-aos-delay="300" data-aos-anchor="#IoT-3"></i>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- intoUs IoT :: E -->
                <!-- Smart City Platform :: S -->
                <section id="platform-3">
                    <!-- cont-1 -->
                    <div class="cont-1">
                        <h3 class="basic-title"  data-aos="fade-up" data-aos-delay="500">
                            <b class="tit">smart city platform</b>
                            <span class="txt">스마트시티 플랫폼은 다양한 도시상황 관리 및 스마트도시 통합운영센터 운영을 위한 핵심기술인 기반 소프트웨어로<br />
                                지자체 도시관제센터에서 <b>방범, 방재, 교통, 시설물 정보 시스템을 연계하여 활용</b>합니다.
                            </span>
                        </h3>
                        <div class="c-wrap" id="sCity-1">
                            <ul class="sCity-group">
                                <li class="sCg-1"> 
                                    <div class="item" data-aos="fade-right"  data-aos-duration="500"  data-aos-delay="700" data-aos-anchor="#sCity-1">
                                        <span>교통</span>
                                        <i></i>
                                    </div> 
                                    <div class="item" data-aos="fade-right"  data-aos-duration="500"  data-aos-delay="1000" data-aos-anchor="#sCity-1">
                                        <span>방범</span>
                                        <i></i>
                                    </div> 
                                    <div class="item" data-aos="fade-right"  data-aos-duration="500"  data-aos-delay="1300" data-aos-anchor="#sCity-1">
                                        <span>환경</span>
                                        <i></i>
                                    </div> 
                                </li>
                                <li class="sCg-2" data-aos="zoom-in"  data-aos-duration="500"  data-aos-delay="1500" data-aos-anchor="#sCity-1">
                                    <div class="item">
                                        <span>스마트시티<br />플랫폼</span>
                                    </div>
                                </li>
                                <li class="sCg-3"> 
                                    <div class="item" data-aos="fade-right"  data-aos-duration="500"  data-aos-delay="1800" data-aos-anchor="#sCity-1">
                                        <i></i>
                                        <span>통합관제</span>
                                    </div> 
                                    <div class="item" data-aos="fade-right"  data-aos-duration="500"  data-aos-delay="2100" data-aos-anchor="#sCity-1">
                                        <i></i>
                                        <span>모니터링</span>
                                    </div> 
                                    <div class="item" data-aos="fade-right"  data-aos-duration="500"  data-aos-delay="2400" data-aos-anchor="#sCity-1">
                                        <i></i>
                                        <span>GIS 서비스</span>
                                    </div> 
                                </li>
                            </ul>
                        </div>
                    </div>             
                    <!-- cont-2 -->
                    <div class="cont-2 " id="sCity-2">
                        <div class="bg-point">
                            <i class="bg"data-aos="slide-left"  data-aos-duration="1000" data-aos-delay="500" data-aos-anchor="#sCity-2"></i>
                            <i class="txt"data-aos="slide-right"  data-aos-duration="500" data-aos-delay="1500" data-aos-anchor="#sCity-2"><img src="/resources/images/sub/bg-point-txt.png" alt="INTOUS POINT" /></i>
                        </div>
                        <div class="c-wrap">
                            <div class="visual-box">
                                <div class="icon">
                                    <span >
                                        <i class="b" data-aos="fade-down"  data-aos-duration="500" data-aos-delay="1900" data-aos-anchor="#sCity-2" ></i>
                                        <i class="g" data-aos="fade-down"  data-aos-duration="500" data-aos-delay="1700" data-aos-anchor="#sCity-2"></i>
                                    </span>
                                </div>
                                <div class="main-img" data-aos="fade-up"  data-aos-duration="1000" data-aos-delay="1500" data-aos-anchor="#sCity-2"> <img src="/resources/images/sub/platform-3-c2-1.jpg" alt="통합환경 기능 제공, 독자적인 기술 적용 연관이미지" /> </div>
                                <i class="mi-bg" data-aos="zoom-in-left"  data-aos-duration="500" data-aos-delay="1000" data-aos-anchor="#sCity-2"></i>
                            </div>
                            <div class="text-box">
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="2000" data-aos-anchor="#sCity-2">
                                    <dt>통합환경 기능 제공</dt>
                                    <dd>통합관제, 통합운영, 통합연계, 통합DB 기능 제공</dd>
                                    <dd>서비스 운영환경 통합</dd>
                                </dl>
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="2100" data-aos-anchor="#sCity-2">
                                    <dt>독자적인 기술 적용</dt>
                                    <dd>IntoUs ESB · ETL · QM/MM </dd>
                                    <dd>IntoUs AI · ICT · IoT · STREAM </dd>
                                    <dd>WEB GIS · AR </dd>
                                </dl>
                            </div>
                        </div>
                    </div>      
                </section>
                <!--Smart City Platform :: E -->
            </div>
            <article class="brochure">
                <div class="container" data-aos="fade-up"  data-aos-duration="1000" data-aos-delay="1000">
                    <h3>ESB기반 데이터 통합 연계 플랫폼</h3>
                    <img src="/resources/images/sub/brochure_logo.png" alt="인투어스 로고" />
                    <button type="button" onclick="location.href='/intousppt/downLoad.do'">제품소개서 다운로드</button>
                </div>
                <div class="img-box" data-aos="slide-down"  data-aos-duration="1000" data-aos-delay="500"> <img src="/resources/images/sub/brochure_bg_icon.png" alt="제품소개서 다운로드 배경 아이콘" /> </div>
                <div class="bg-box" data-aos="zoom-out" data-aos-duration="3000"> <img src="/resources/images/sub/brochure_bg.jpg" alt="제품소개서 다운로드 배경 이미지" /> </div>
            </article>
        </section>
        <footer id="footer">
        	<%@ include file="/WEB-INF/jsp/egovframework/example/fragment/footer.jsp" %>
        </footer>
    </div>
</body>
<script>
    //tab
    function openCity(evt, cityName) {
      var i, tabcontent, tablinks;
      tabcontent = document.getElementsByClassName("tabcontent_tab");
      for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
      }
      tablinks = document.getElementsByClassName("tablinks");
      for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
      }
      document.getElementById(cityName).style.display = "block";
      evt.currentTarget.className += " active";
    }
</script>
</html>