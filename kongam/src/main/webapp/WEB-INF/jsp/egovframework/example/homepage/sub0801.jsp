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
        <section class="sub-visual" id="solution-1">
            <div class="txt" data-aos="fade-up">
                <strong>데이터 거버넌스 사업</strong>
                <p>공감아이티는 응용 소프트웨어 개발 전문 기업입니다.</p>
            </div>
        </section>
        <div id="tabbar" class="solution">
            <div class="button-group w_25 tabNav">
                <a href="#bigData-1" class="tablinks active">IntoUs 소개</a>
                <a href="#bigData-2" class="tablinks">IntoUs ESB</a>
                <a href="#bigData-3" class="tablinks">IntoUs ETL</a>
                <a href="#bigData-4" class="tablinks">IntoUs QM/MM</a>
            </div>
        </div>
        <style>
            .tabNav-list > section{display:block;}
        </style>
        <section class="sub-contents">
            <div class="sol-content tabNav-list">
                <!-- intoUs 소개 :: S -->
                <section id="bigData-1">
                    <!-- cont-1 -->
                    <div class="cont-1">
                        <h3 class="basic-title">
                            <b class="tit">IntoUs</b>
                            <span class="txt">Data Governance 구축에 필요한 데이터 연계 수집, 적재, 표준, 품질관리 등<br />
                                전 과정에 필요한 S/W를 통합하여 솔루션 및 서비스를 제공하는<br />
                                <b>데이터 통합 연계 플랫폼</b>입니다.
                            </span>
                        </h3>
                        <div class="img-box" id="bigData-c1"> <img src="/resources/images/sub/bigData-1-c1-1.png" alt="intoUs 제품 목업 이미지" data-aos="fade-up" data-aos-delay="300"  /> </div>
                        <div class="bg-box"  > <img src="/resources/images/sub/bigData-1-c1-2.png" alt="intoUs 제품 소개 백그라운드 패턴"  data-aos="zoom-in"  data-aos-duration="500" data-aos-anchor="#bigData-c1"/> </div>
                    </div>
                    <!-- cont-2 -->
                    <div class="cont-2 " id="bigData-c2">
                        <div class="bg-point">
                            <i class="bg"data-aos="slide-left"  data-aos-duration="1000" data-aos-delay="500" data-aos-anchor="#bigData-c2"></i>
                            <i class="txt"data-aos="slide-right"  data-aos-duration="500" data-aos-delay="1500" data-aos-anchor="#bigData-c2"><img src="/resources/images/sub/bg-point-txt.png" alt="INTOUS POINT" /></i>
                        </div>
                        <div class="c-wrap">
                            <div class="visual-box">
                                <div class="icon">
                                    <span >
                                        <i class="b" data-aos="fade-down"  data-aos-duration="500" data-aos-delay="1900" data-aos-anchor="#bigData-c2" ></i>
                                        <i class="g" data-aos="fade-down"  data-aos-duration="500" data-aos-delay="1700" data-aos-anchor="#bigData-c2"></i>
                                    </span>
                                </div>
                                <div class="main-img" data-aos="fade-up"  data-aos-duration="1000" data-aos-delay="1500" data-aos-anchor="#bigData-c2"> <img src="/resources/images/sub/bigData-1-c2-1.png" alt="기능적합성, 성능 효율성 연관이미지" /> </div>
                                <i class="mi-bg" data-aos="zoom-in-left"  data-aos-duration="500" data-aos-delay="1000" data-aos-anchor="#bigData-c2"></i>
                            </div>
                            <div class="text-box">
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="2000" data-aos-anchor="#bigData-c2">
                                    <dt>기능적합성</dt>
                                    <dd>다양한 형태의 데이터 변환 지원</dd>
                                    <dd>대용량 메시지 처리(분할/병합) 기능</dd>
                                    <dd>연계클라이언트 Live Update 기능 제공</dd>
                                    <dd>데이터 선처리(작업전 삭제), 후처리(처리후 삭제 등)<br />기능들을 통한 추가 처리기능 제공</dd>
                                </dl>
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="2100" data-aos-anchor="#bigData-c2">
                                    <dt>성능 효율성</dt>
                                    <dd>대량데이터 처리에 대한 빠른 응답속도 보장</dd>
                                    <dd>메시지 전달 보장으로 데이터의 정합성 보장</dd>
                                    <dd>대규모 서비스를 위한 서버 Clustering 기능 제공</dd>
                                    <dd>메시지큐의 독립적인 운영으로 특정 인터페이스의 부하 폭주에도<br />타 인터페이스 안정적인 처리</dd>
                                </dl>
                            </div>
                        </div>
                    </div>
                    <!-- cont-3 -->
                    <div class="cont-3" id="bigData-c3">
                        <div class="c-wrap">
                            <div class="text-box reverse">
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="1300" data-aos-anchor="#bigData-c3">
                                    <dt>이식성</dt>
                                    <dd>다양한 OS 운영환경 제공(Unix, Linux, Windows)</dd>
                                    <dd>상용 DBMS/pakage application을 연동하기 위한 컴포넌트 제공</dd>
                                    <dd>DB, HTTP(S), FTP(s), File, Excel, Xml 등<br />다양한 프로토콜을 지원하는 Pre-Built Service Components 지원</dd>
                                    <dd>서비스 컴포넌트 및 Open API 활용으로 다양한 개발환경에 적합</dd>
                                </dl>
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="1400" data-aos-anchor="#bigData-c3">
                                    <dt>유지보수성</dt>
                                    <dd>실시간 서비스 모니터링 기능</dd>
                                    <dd>연계미시지 이력/통계 조회 기능</dd>
                                    <dd>실시간 장애상황 추적을 위한 이벤트 이력 조회 기능</dd>
                                </dl>
                            </div>
                            <div class="visual-box">
                                <div class="icon">
                                    <span >
                                        <i class="b" data-aos="fade-down"  data-aos-duration="500" data-aos-delay="1200" data-aos-anchor="#bigData-c3" ></i>
                                        <i class="g" data-aos="fade-down"  data-aos-duration="500" data-aos-delay="1000" data-aos-anchor="#bigData-c3"></i>
                                    </span>
                                </div>
                                <div class="main-img" data-aos="fade-up"  data-aos-duration="800" data-aos-delay="800" data-aos-anchor="#bigData-c3"> <img src="/resources/images/sub/bigData-1-c3-1.jpg" alt="이식성, 유지보수성 연관이미지" /> </div>
                                <i class="mi-bg" data-aos="zoom-in-left"  data-aos-duration="500" data-aos-delay="300" data-aos-anchor="#bigData-c3"></i>
                            </div>
                        </div>
                    </div>
                    <!-- cont-4 -->
                    <div class="cont-4 " id="bigData-c4">
                        <div class="bg-point">
                            <i class="bg"data-aos="slide-right"  data-aos-duration="3000" data-aos-delay="500" data-aos-anchor="#bigData-c4"></i>
                            <!-- <i class="txt"data-aos="slide-right"  data-aos-duration="500" data-aos-delay="1500" data-aos-anchor="#bigData-c4"><img src="./images/sub/bg-point-txt.png" alt="INTOUS POINT" /></i> -->
                        </div>
                        <div class="c-wrap">
                            <div class="visual-box">
                                <div class="icon">
                                    <span >
                                        <i class="b" data-aos="fade-down"  data-aos-duration="500" data-aos-delay="1900" data-aos-anchor="#bigData-c4" ></i>
                                        <i class="g" data-aos="fade-down"  data-aos-duration="500" data-aos-delay="1700" data-aos-anchor="#bigData-c4"></i>
                                    </span>
                                </div>
                                <div class="main-img" data-aos="fade-up"  data-aos-duration="800" data-aos-delay="1500" data-aos-anchor="#bigData-c4"> <img src="/resources/images/sub/bigData-1-c4-1.jpg" alt="보안성, 사용성 연관이미지" /> </div>
                                <i class="mi-bg" data-aos="zoom-in-left"  data-aos-duration="500" data-aos-delay="1000" data-aos-anchor="#bigData-c4"></i>
                            </div>
                            <div class="text-box">
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="2000" data-aos-anchor="#bigData-c4">
                                    <dt>보안성</dt>
                                    <dd>Endpoint 구간 전문전송에 표준보안 알고리즘(ARIA, SEED)지원</dd>
                                    <dd>메시지 위변조 방지를 위한 Hash 방식의 무결성 검증기능 제공</dd>
                                    <dd>Web Console 로그인시 RSA 암호화 지원</dd>
                                    <dd>사용자 로그인/비밀번호 변경 및 접근이력 조회를 통한 감시기능 제공</dd>
                                </dl>
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="2100" data-aos-anchor="#bigData-c4">
                                    <dt>사용성</dt>
                                    <dd>WYSIWYG방식의 GUI기반 서비스 디자인으로 연계 설정환경 지원</dd>
                                    <dd>Pre-Built된 연계컴포넌트를 사용하여<br />프로그램 추가 개발없이 손쉽게 연계항목을 추가/수정 가능</dd>
                                    <dd>사용자의 다양한 요구를 지원할 수 있는<br />Programmatic CustomMappingRule 및<br />CustomAdaper 기능 제공</dd>
                                </dl>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- intoUs 소개 :: E -->
                <!-- intoUs ESB :: S -->
                <section id="bigData-2">
                    <!-- cont-1 -->
                    <div class="cont-1">
                        <h3 class="basic-title" data-aos="fade-up" data-aos-delay="500">
                            <b class="tit">IntoUs ESB</b>
                            <span class="txt">다양한 이질적 환경을 통합하여 하나의 시스템으로 관리 및 운영할 수 있는<br />
                                유기적인 기술로써 표준 사양을 기반으로 구성되어 있으며<br />
                                요구사양이 바뀌어도 <b>쉽게 대응할 수 있는 유연성</b>이 있습니다.<br />
                            </span>
                        </h3>
                        <div class="esb-group">
                            <div class="c-wrap">
                                <ul class="eg-1"   id="ESB-1">
                                    <li data-aos="fade-right"  data-aos-duration="500" data-aos-delay="1200" data-aos-anchor="#ESB-1">
                                        <div class="tit"><b>DB</b>연동방식</div>
                                        <div class="cont">
                                            <span class="g">Legacy<br /><b>시스템</b></span>
                                            <i class="arrow"></i>
                                            <span class="b">ESB 연동어댑터<br /><b>DB 스케줄러</b></span>
                                        </div>
                                    </li>
                                    <li data-aos="fade-right"  data-aos-duration="500" data-aos-delay="1400" data-aos-anchor="#ESB-1">
                                        <div class="tit"><b>FTP</b>연동방식</div>
                                        <div class="cont">
                                            <span class="g">Legacy<br /><b>시스템</b></span>
                                            <i class="arrow"></i>
                                            <span class="b">ESB 연동어댑터 <br /><b>FTP 서버</b></span>
                                        </div>
                                    </li>
                                    <li data-aos="fade-right"  data-aos-duration="500" data-aos-delay="1600" data-aos-anchor="#ESB-1">
                                        <div class="tit"><b>HTTP</b>연동방식</div>
                                        <div class="cont">
                                            <span class="g">Legacy<br /><b>시스템</b></span>
                                            <i class="arrow"></i>
                                            <span class="b">ESB 연동어댑터 <br /><b>HTTP 서버</b></span>
                                        </div>
                                    </li>
                                    <li data-aos="fade-right"  data-aos-duration="500" data-aos-delay="1800" data-aos-anchor="#ESB-1">
                                        <div class="tit"><b>Socket</b>연동방식</div>
                                        <div class="cont">
                                            <span class="g">Legacy<br /><b>시스템</b></span>
                                            <i class="arrow"></i>
                                            <span class="b">ESB 연동어댑터 <br /><b>Socket 서버</b></span>
                                        </div>
                                    </li>
                                </ul>
                                <ul class="eg-2">
                                    <li class="b" data-aos="zoom-in-up"  data-aos-duration="500" data-aos-delay="1000" data-aos-anchor="#ESB-1">
                                        <p>연계기관</p>
                                        <img src="/resources/images/sub/bigData-2-c1-1.png" alt="연계기관 아이콘" />
                                    </li>
                                    <li class="arrow" data-aos="fade-right"  data-aos-duration="500" data-aos-delay="3000" data-aos-anchor="#ESB-1">
                                        <img src="/resources/images/sub/bigData-2-c1-3.png" alt="화살표 아이콘" />
                                    </li>
                                    <li class="g" data-aos="zoom-in-up"  data-aos-duration="500" data-aos-delay="2000" data-aos-anchor="#ESB-1">
                                        <p>연계서버</p>
                                        <img src="/resources/images/sub/bigData-2-c1-2.png" alt="연계서버 아이콘" />
                                    </li>
                                    
                                </ul>
                                <ul class="eg-3">
                                    <li data-aos="fade-left"  data-aos-duration="500" data-aos-delay="2000" data-aos-anchor="#ESB-1">
                                        <span class="tit"><b>데이터접속</b>서비스</span>
                                        <span class="cont">데이터베이스, 파일, XML, EDI</span>
                                    </li>
                                    <li class="center" data-aos="fade-left"  data-aos-duration="500" data-aos-delay="2200" data-aos-anchor="#ESB-1">
                                        <span class="tit"><b>개발 및 관리툴</b></span>
                                        <span class="cont">배포, 버전관리, 제어</span>
                                    </li>
                                    <li class="right" data-aos="fade-left"  data-aos-duration="500" data-aos-delay="2400" data-aos-anchor="#ESB-1">
                                        <span class="tit"><b>운영</b>서비스</span>
                                    </li>
                                    <li class="right" data-aos="fade-left"  data-aos-duration="500" data-aos-delay="2600" data-aos-anchor="#ESB-1">
                                        <span class="tit"><b>애플리케이션</b>서비스</span>
                                    </li>
                                    <li class="center" data-aos="fade-left"  data-aos-duration="500" data-aos-delay="2800" data-aos-anchor="#ESB-1">
                                        <span class="tit"><b>모니터링</b>서비스</span>
                                        <span class="cont">was, groupware, tp-monitor</span>
                                    </li>
                                    <li data-aos="fade-left"  data-aos-duration="500" data-aos-delay="3000" data-aos-anchor="#ESB-1">
                                        <span class="tit"><b>중계</b>서비스</span>
                                        <span class="cont">변환, 암ㆍ복호화, 라우팅, 압축ㆍ분할, 로그생성</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- cont-2 -->
                    <div class="cont-2 " id="ESB-2">
                        <div class="bg-point">
                            <i class="bg"data-aos="slide-right"  data-aos-duration="3000" data-aos-delay="500" data-aos-anchor="#ESB-2"></i>
                            <!-- <i class="txt"data-aos="slide-right"  data-aos-duration="500" data-aos-delay="1500" data-aos-anchor="#ESB-2"><img src="./images/sub/bg-point-txt.png" alt="INTOUS POINT" /></i> -->
                        </div>
                        <div class="c-wrap">
                            <div class="text-box reverse">
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="2000" data-aos-anchor="#ESB-2">
                                    <dt>멀티 프로토콜 지원</dt>
                                    <dd class="noBul">IntoUs ESB는 다양한 시스템과 연동하기 위해 멀티 프로토콜을 지원합니다.</dd>
                                </dl>
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="2200" data-aos-anchor="#ESB-2">
                                    <dt>표준기술 사용</dt>
                                    <dd class="noBul">IntoUs ESB는 웹서비스, XML 등 표준기술 사용합니다.</dd>
                                </dl>
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="2400" data-aos-anchor="#ESB-2">
                                    <dt>높은 품질 제공</dt>
                                    <dd class="noBul">IntoUs ESB는 트래픽을 조절할 수 있어<br />성능, 안전성, 보안 등의 높은 품질 제공합니다.</dd>
                                </dl>
                            </div>
                            <div class="visual-box">
                                <div class="icon">
                                    <span >
                                        <i class="b" data-aos="fade-down"  data-aos-duration="500" data-aos-delay="1900" data-aos-anchor="#ESB-2" ></i>
                                        <i class="g" data-aos="fade-down"  data-aos-duration="500" data-aos-delay="1700" data-aos-anchor="#ESB-2"></i>
                                    </span>
                                </div>
                                <div class="main-img" data-aos="fade-up"  data-aos-duration="800" data-aos-delay="1500" data-aos-anchor="#ESB-2"> <img src="/resources/images/sub/bigData-2-c2-1.jpg" alt="보안성, 사용성 연관이미지" /> </div>
                                <i class="mi-bg" data-aos="zoom-in-left"  data-aos-duration="500" data-aos-delay="1000" data-aos-anchor="#ESB-2"></i>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- intoUs ESB :: E -->
                <!-- intoUs ETL :: S -->
                <section id="bigData-3">
                    <!-- cont-1 -->
                    <div class="cont-1">
                        <h3 class="basic-title" data-aos="fade-up" data-aos-delay="500">
                            <b class="tit">IntoUs ETL</b>
                            <span class="txt">Spring Integration FrameWork를 사용하여 성능과 안정성을 보장하고<br />
                                <b>지오코딩 및 공간좌표 변환</b>을 통해 <b>공간정보 처리를 지원</b>합니다.
                            </span>
                        </h3>
                        <div class="c-wrap">
                            <div class="etl-group" data-aos="zoom-in" data-aos-anchor="#bigData-3"  data-aos-duration="500"  data-aos-delay="1300">
                                <h4 ><b>ETL</b> (추출, 변환, 적재)</h4>
                                <ul >
                                    <li data-aos="fade-right" data-aos-anchor="#bigData-3"  data-aos-duration="500"  data-aos-delay="1500">
                                        <b>Extract</b>
                                        <img src="/resources/images/sub/bigData-3-c1-1.png" alt="Extract 아이콘" />
                                        <p>Data Source 1</p>
                                    </li>
                                    <li class="arrow" data-aos="fade-right" data-aos-anchor="#bigData-3"  data-aos-duration="500"  data-aos-delay="1700"> 
                                        <img src="/resources/images/sub/bigData-3-c1-4.png" alt="화살표 아이콘 "/> 
                                    </li>
                                    <li data-aos="fade-right" data-aos-anchor="#bigData-3"  data-aos-duration="500"  data-aos-delay="1900">
                                        <b>Transform</b>
                                        <img src="/resources/images/sub/bigData-3-c1-2.png" alt="Extract 아이콘" />
                                        <p>Transformation Engine</p>
                                    </li>
                                    <li class="arrow" data-aos="fade-right" data-aos-anchor="#bigData-3"  data-aos-duration="500"  data-aos-delay="2100"> 
                                        <img src="/resources/images/sub/bigData-3-c1-4.png" alt="화살표 아이콘 "/> 
                                    </li>
                                    <li data-aos="fade-right" data-aos-anchor="#bigData-3"  data-aos-duration="500"  data-aos-delay="2300">
                                        <b>Load</b>
                                        <img src="/resources/images/sub/bigData-3-c1-3.png" alt="Extract 아이콘" />
                                        <p>Target</p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- cont-2 -->
                    <div class="cont-2 " id="bigData-3-c2">
                        <div class="bg-point">
                            <i class="bg"data-aos="slide-left"  data-aos-duration="1000" data-aos-delay="500" data-aos-anchor="#bigData-3-c2"></i>
                            <i class="txt"data-aos="slide-right"  data-aos-duration="500" data-aos-delay="1500" data-aos-anchor="#bigData-3-c2"><img src="/resources/images/sub/bg-point-txt.png" alt="INTOUS POINT" /></i>
                        </div>
                        <div class="c-wrap">
                            <div class="visual-box">
                                <div class="icon">
                                    <span >
                                        <i class="b" data-aos="fade-down"  data-aos-duration="500" data-aos-delay="1900" data-aos-anchor="#bigData-3-c2" ></i>
                                        <i class="g" data-aos="fade-down"  data-aos-duration="500" data-aos-delay="1700" data-aos-anchor="#bigData-3-c2"></i>
                                    </span>
                                </div>
                                <div class="main-img" data-aos="fade-up"  data-aos-duration="1000" data-aos-delay="1500" data-aos-anchor="#bigData-3-c2"> <img src="/resources/images/sub/bigData-3-c2-1.jpg" alt="시스템의 확장, 시스템 안정성 보장 연관이미지" /> </div>
                                <i class="mi-bg" data-aos="zoom-in-left"  data-aos-duration="500" data-aos-delay="1000" data-aos-anchor="#bigData-3-c2"></i>
                            </div>
                            <div class="text-box">
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="2000" data-aos-anchor="#bigData-3-c2">
                                    <dt>시스템의 확장</dt>
                                    <dd class="noBul">IntoUs ETL은 가변적 분산 수집 구조로 수집대상 시스템의 확장을 지원합니다.</dd>
                                </dl>
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="2200" data-aos-anchor="#bigData-3-c2">
                                    <dt>시스템 안정성 보장</dt>
                                    <dd class="noBul">멀티 스레드 구조를 사용하여 응답속도에 대한 안정성을 보장하며<br />
                                        ETL기반의 독립적인 운영으로 특정 인터페이스의 오류에도<br />
                                        타 인터페이스에서 안정적인 처리를 지원합니다.</dd>
                                </dl>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- intoUs ETL :: E -->
                <!-- intoUs QM/MM :: S -->
                <section id="bigData-4">
                    <!-- cont-1 -->
                    <div class="cont-1">
                        <h3 class="basic-title" data-aos="fade-up" data-aos-delay="500">
                            <b class="tit">IntoUs QM/MM</b>
                            <span class="txt">데이터의 신뢰성을 보장하는 <b>AI 기계학습 알고리즘 지원</b>이 가능한 <b>데이터 품질관리 3.0 기반</b> 데이터 유형에 따라,<br />
                                필요한 원시데이터·데이터 가공·데이터 활용 및 유형별 품질관리와 데이터구축 과정 품질관리를 위한<br />
                                획득·정제·가공·품질검수 등을 포함합니다.<br />
                            </span>
                        </h3>
                        <div class="c-wrap">
                            <div class="img-box"> 
                                <img src="/resources/images/sub/bigData-4-c1-4.png" alt="intoUs QM/MM 설명이미지" data-aos="fade-down" data-aos-delay="2000"  id="bigData-4"  />
                                <img src="/resources/images/sub/bigData-4-c1-1.png" alt="intoUs QM/MM 설명이미지" data-aos="fade-up" data-aos-duration="800" data-aos-delay="1500"  id="bigData-4"/>
                            </div>
                            <div class="bg-box"  > 
                                <img src="/resources/images/sub/bigData-4-c1-2.png" alt="intoUs QM/MM 백그라운드 패턴"  data-aos="fade-right"  data-aos-duration="500" data-aos-delay="1000" data-aos-anchor="#bigData-4"/> 
                                <img src="/resources/images/sub/bigData-4-c1-3.png" alt="intoUs QM/MM 백그라운드 패턴"  data-aos="fade-left"  data-aos-duration="500" data-aos-delay="1300" data-aos-anchor="#bigData-4"/> 
                            </div>
                        </div>
                        
                    </div>
                    <!-- cont-2 -->
                    <div class="cont-2 " id="QM-2">
                        <div class="bg-point">
                            <i class="bg"data-aos="slide-right"  data-aos-duration="2000" data-aos-delay="500" data-aos-anchor="#QM-2"></i>
                            <i class="txt"data-aos="slide-right"  data-aos-duration="500" data-aos-delay="1500" data-aos-anchor="#QM-2"><img src="/resources/images/sub/bg-point-txt.png" alt="INTOUS POINT" /></i>
                        </div>
                        <div class="c-wrap">
                            <div class="text-box reverse">
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="2000" data-aos-anchor="#QM-2">
                                    <dt>데이터 품질향상</dt>
                                    <dd class="noBul">체계적인 품질관리 프로세스와 상시 모니터링으로 데이터품질 향상</dd>
                                </dl>
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="2200" data-aos-anchor="#QM-2">
                                    <dt>다양한 플랫폼</dt>
                                    <dd class="noBul">관계형 데이터베이스, 파일, 빅데이터 플랫폼 등 다양한 원천데이터의 품질을 진단</dd>
                                </dl>
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="2400" data-aos-anchor="#QM-2">
                                    <dt>편리한 데이터정비</dt>
                                    <dd class="noBul">간소화된 절차와 자동화된 데이터정비로 오류데이터 탐지 및 정제</dd>
                                </dl>
                            </div>
                            <div class="visual-box">
                                <div class="icon">
                                    <span >
                                        <i class="b" data-aos="fade-down"  data-aos-duration="500" data-aos-delay="1900" data-aos-anchor="#QM-2" ></i>
                                        <i class="g" data-aos="fade-down"  data-aos-duration="500" data-aos-delay="1700" data-aos-anchor="#QM-2"></i>
                                    </span>
                                </div>
                                <div class="main-img" data-aos="fade-up"  data-aos-duration="800" data-aos-delay="1500" data-aos-anchor="#QM-2"> <img src="/resources/images/sub/bigData-4-c2-1.jpg" alt="데이터 품질향상, 다양한 플랫폼, 편리한 데이터정비 연관이미지" /> </div>
                                <i class="mi-bg" data-aos="zoom-in-left"  data-aos-duration="500" data-aos-delay="1000" data-aos-anchor="#QM-2"></i>
                            </div>
                        </div>
                    </div>
                    <!-- cont-3 -->
                    <div class="cont-3" id="QM-3">
                        <div class="c-wrap">
                            <div class="visual-box">
                                <div class="icon">
                                    <span >
                                        <i class="b" data-aos="fade-down"  data-aos-duration="500" data-aos-delay="1200" data-aos-anchor="#QM-3" ></i>
                                        <i class="g" data-aos="fade-down"  data-aos-duration="500" data-aos-delay="1000" data-aos-anchor="#QM-3"></i>
                                    </span>
                                </div>
                                <div class="main-img" data-aos="fade-up"  data-aos-duration="800" data-aos-delay="800" data-aos-anchor="#QM-3"> <img src="/resources/images/sub/bigData-4-c3-1.jpg" alt="머신러닝 적용, 데이터 매칭, 규칙기반 품질측정 연관이미지" /> </div>
                                <i class="mi-bg" data-aos="zoom-in-left"  data-aos-duration="500" data-aos-delay="300" data-aos-anchor="#QM-3"></i>
                            </div>
                            <div class="text-box">
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="1300" data-aos-anchor="#QM-3">
                                    <dt>머신러닝 적용</dt>
                                    <dd>명칭의 의미, 데이터 형식과 패턴을 분석하여 도메인 자동 판별</dd>
                                    <dd>텍스트 클러스터링 기술을 이용하여 텍스트 구분 오류 탐지</dd>
                                </dl>
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="1500" data-aos-anchor="#QM-3">
                                    <dt>데이터 매칭</dt>
                                    <dd class="noBul">데이터매칭 알고리즘으로 동일한 의미의 항목을 식별하고 데이터셋의 관계를 분석</dd>
                                </dl>
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="1700" data-aos-anchor="#QM-3">
                                    <dt>규칙기반 품질측정</dt>
                                    <dd class="noBul">업무규칙 기반으로 테이블관계, 데이터 중복, 코드, 날짜, 범위 등 패턴의 품질을 측정</dd>
                                </dl>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- intoUs QM/MM :: E -->
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