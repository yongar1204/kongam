<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<%@ include file="/WEB-INF/jsp/egovframework/example/fragment/mobile/mobile-head.jsp" %>
<body>
<!--AOS 라이브러리-->
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script>
        AOS.init({
            easing: 'ease-out-sine',
            /*easing: 'ease-out-back',*/
            duration: 1000,
            once:true
        });
    </script>    
    <header id="header">
        <%@ include file="/WEB-INF/jsp/egovframework/example/fragment/mobile/mobile-header.jsp" %>
    </header>
    <div class="wrap">
        <div class="header-wrap">
            <div class="bg"></div>           
        </div>
        <section class="sub-visual" id="solution-3">
            <div class="txt" data-aos="fade-up">
                <strong>GIS 솔루션 사업</strong>
                <p>공감아이티는 응용 소프트웨어 개발 전문 기업입니다.</p>
            </div>
        </section>
        <div id="tabbar" class="solution">
            <div class="button-group w_25 tabNav">
                <a href="#ezMap-1" class="tablinks active">ezMap 소개</a>
                <a href="#ezMap-2" class="tablinks">ezMap View</a>
                <a href="#ezMap-3" class="tablinks">ezMap Control</a>
                <a href="#ezMap-4" class="tablinks">ezMap Edit</a>
            </div>
        </div>
        <style>
            .tabNav-list > section{display:block;}
        </style>
        <section class="sub-contents">
            <div class="sol-content tabNav-list">
                <!-- ezMap 소개 :: S -->
                <section id="ezMap-1">
                    <!-- cont-1 -->
                    <div class="cont-1">
                        <h3 class="basic-title" id="ezMap-c1">
                            <b class="tit">ezMap</b>
                            <span class="txt">ezMap은 GIS에 최적화된 프로그램으로 사용자가 GIS응용프로그램을<span class="br"></span>
                                사용하지 않고 WEB시스템에서 공간정보 수정이 가능하도록 하는 시스템입니다.<span class="br"></span>
                                기본적으로 제공되는 기능뿐만 아니라 실사용에 적합한 고급 기능까지 사용가능하며<span class="br moVer"></span>
                                <b>사용자가 직접 손쉽게 사용 가능</b>합니다.
                            </span>
                        </h3>
                        <div class="c-wrap">
                            <div class="img-box" id="bigData-c1"> <img src="/resources/mobile/images/sub/ezMap-1-c1-1.png" alt="ezMap 소개 목업 이미지" data-aos="fade-up" data-aos-delay="300"  /> </div>
                            <div class="bg-box"  > <img src="/resources/mobile/images/sub/ezMap-1-c1-2.png" alt="ezMap 소개 백그라운드 패턴"  data-aos="zoom-in"  data-aos-duration="500" data-aos-delay="800"/> </div>
                        </div>
                    </div>        
                </section>     
                <!-- ezMap 소개 :: E -->
                <!--ezMap View :: S -->
                <section id="ezMap-2">
                    <!-- cont-2 -->
                    <div class="cont-1 ">
                        <div class="bg-point">
                            <i class="bg" data-aos="slide-left"  data-aos-duration="1000" data-aos-delay="500" data-aos-anchor="#ezMap-2"></i>
                        </div>
                        <div class="c-wrap">
                            <div class="text-box reverse">
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="2000" data-aos-anchor="#ezMap-2">
                                    <dt>ezMap View</dt>
                                    <dd class="noBul">웹지도 서비스의 기본적인 기능을 제공하고 있으며<br />항공 및 드론영상 데이터를 가공하여 지도상에 표출할 수 있습니다.</dd>
                                </dl>
                            </div>
                            <div class="ezView-group">
                                <!-- <img src="./images/sub/ezMap-2-1.png" alt="항공영상"  data-aos="zoom-in" data-aos-duration="300" data-aos-delay="2000"  data-aos-anchor="#ezMap-2"/>
                                <img src="./images/sub/ezMap-2-2.png" alt="검색"   data-aos="zoom-in" data-aos-duration="300" data-aos-delay="2200" data-aos-anchor="#ezMap-2"/>
                                <img src="./images/sub/ezMap-2-3.png" alt="그리기"  data-aos="zoom-in" data-aos-duration="300" data-aos-delay="2400"  data-aos-anchor="#ezMap-2"/>
                                <img src="./images/sub/ezMap-2-4.png" alt="로드뷰"  data-aos="zoom-in" data-aos-duration="300" data-aos-delay="2600"  data-aos-anchor="#ezMap-2"/>
                                <img src="./images/sub/ezMap-2-5.png" alt="저장"  data-aos="zoom-in" data-aos-duration="300" data-aos-delay="2800"  data-aos-anchor="#ezMap-2"/>
                                <img src="./images/sub/ezMap-2-6.png" alt="화면분활"  data-aos="zoom-in" data-aos-duration="300" data-aos-delay="3000"  data-aos-anchor="#ezMap-2"/> -->
                                <ul>
                                    <li class="item-1" data-aos="zoom-in" data-aos-duration="300" data-aos-delay="2000" data-aos-anchor="#ezMap-2"> <img src="/resources/mobile/images/sub/ezMap-icon-1.png"  alt="항공영상 아이콘"/>항공영상</li>
                                    <li class="item-2" data-aos="zoom-in" data-aos-duration="300" data-aos-delay="2200" data-aos-anchor="#ezMap-2"> <img src="/resources/mobile/images/sub/ezMap-icon-2.png"  alt="검색 아이콘"/>검색</li>
                                    <li class="item-3" data-aos="zoom-in" data-aos-duration="300" data-aos-delay="2400" data-aos-anchor="#ezMap-2"> <img src="/resources/mobile/images/sub/ezMap-icon-3.png"  alt="그리기 아이콘"/>그리기</li>
                                    <li class="item-4" data-aos="zoom-in" data-aos-duration="300" data-aos-delay="2600" data-aos-anchor="#ezMap-2"> <img src="/resources/mobile/images/sub/ezMap-icon-4.png"  alt="로드뷰 아이콘"/>로드뷰</li>
                                    <li class="item-5" data-aos="zoom-in" data-aos-duration="300" data-aos-delay="2800" data-aos-anchor="#ezMap-2"> <img src="/resources/mobile/images/sub/ezMap-icon-5.png"  alt="저장 아이콘"/>저장</li>
                                    <li class="item-6" data-aos="zoom-in" data-aos-duration="300" data-aos-delay="3000" data-aos-anchor="#ezMap-2"> <img src="/resources/mobile/images/sub/ezMap-icon-6.png"  alt="화면분활 아이콘"/>화면분활</li>
                                </ul>
                                <img src="/resources/mobile/images/sub/ezMap-2-7.png" alt="지도 배경"  data-aos="fade-up"  data-aos-duration="500" data-aos-delay="1800"  data-aos-anchor="#ezMap-2"/>
                            </div>
                        </div>
                    </div>      
                </section>
                <!-- ezMap View :: E -->
                <!--ezMap Control :: S -->
                <section id="ezMap-3">
                    <!-- cont-2 -->
                    <div class="cont-1 ">
                        <div class="bg-point">
                            <i class="bg" data-aos="slide-right"  data-aos-duration="1000" data-aos-delay="500" data-aos-anchor="#ezMap-3"></i>
                            <!-- <i class="txt" data-aos="slide-right"  data-aos-duration="500" data-aos-delay="1500" data-aos-anchor="#ezMap-2"><img src="./images/sub/bg-point-txt.png" alt="INTOUS POINT" /></i> -->
                        </div>
                        <div class="c-wrap">
                            <div class="text-box reverse">
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="2000" data-aos-anchor="#ezMap-3">
                                    <dt>ezMap Control</dt>
                                    <dd class="noBul">사용자가 레이어에 대한 전반적인 설정을 관리하는 시스템입니다.<br />
                                        레이어 추가 및 삭제, 레이어 스타일 설정, 레이어 셋 설정 등 사용자가 실제 사용할 수 있는 기능에 직관적인 UI를 적용하여 사용의 편이성을 높였습니다. </dd>
                                </dl>
                            </div>
                            <div class="ezCtrl-group">
                                <img src="/resources/mobile/images/sub/ezMap-3-1.png" alt="선형 심볼 설정 이미지"  data-aos="zoom-in" data-aos-duration="500" data-aos-delay="2200"  data-aos-anchor="#ezMap-3" />
                                <img src="/resources/mobile/images/sub/ezMap-3-2.png" alt="레이어 관리자 이미지"  data-aos="zoom-in" data-aos-duration="500" data-aos-delay="2600" data-aos-anchor="#ezMap-3" />
                                <img src="/resources/mobile/images/sub/ezMap-3-3.png" alt="상수관로 미리보기 이미지" data-aos="fade-up"  data-aos-duration="500" data-aos-delay="1800"  data-aos-anchor="#ezMap-3" />
                            </div>
                        </div>
                    </div>      
                </section>
                <!-- ezMap Control :: E -->
                <!--ezMap Control :: S -->
                <section id="ezMap-4">
                    <!-- cont-2 -->
                    <div class="cont-1 ">
                        <div class="bg-point">
                            <i class="bg" data-aos="slide-left"  data-aos-duration="1000" data-aos-delay="500" data-aos-anchor="#ezMap-4"></i>
                            <!-- <i class="txt" data-aos="slide-right"  data-aos-duration="500" data-aos-delay="1500" data-aos-anchor="#ezMap-2"><img src="./images/sub/bg-point-txt.png" alt="INTOUS POINT" /></i> -->
                        </div>
                        <div class="c-wrap">
                            <div class="text-box reverse">
                                <dl data-aos="fade-up"  data-aos-duration="500" data-aos-delay="2000" data-aos-anchor="#ezMap-4">
                                    <dt>ezMap Edit</dt>
                                    <dd class="noBul">사용자가 GIS응용프로그램을 사용하지 않고  Web 시스템에서 공간정보 수정이 가능하도록 하는 시스템입니다.  
                                        </dd>
                                </dl>
                            </div>
                            <div class="ezEdit-group">
                                <img src="/resources/mobile/images/sub/ezMap-4-1.png" alt="추출 데이터추출 이미지" data-aos="fade-down"  data-aos-duration="800" data-aos-delay="3000"  data-aos-anchor="#ezMap-4" />
                                <img src="/resources/mobile/images/sub/ezMap-4-2.png" alt="병합 이미지" data-aos="fade-down"  data-aos-duration="800" data-aos-delay="2700"  data-aos-anchor="#ezMap-4" />
                                <img src="/resources/mobile/images/sub/ezMap-4-3.png" alt="병합 - 기존데이터 + 추가데이터 이미지" data-aos="fade-down"  data-aos-duration="800" data-aos-delay="2400"  data-aos-anchor="#ezMap-4" />
                                <img src="/resources/mobile/images/sub/ezMap-4-4.png" alt="추가 - 데이터추가 이미지" data-aos="fade-down"  data-aos-duration="800" data-aos-delay="2100"  data-aos-anchor="#ezMap-4" />
                                <img src="/resources/mobile/images/sub/ezMap-4-5.png" alt="기존데이터 이미지" data-aos="fade-down"  data-aos-duration="800" data-aos-delay="1800"  data-aos-anchor="#ezMap-4" />
                            </div>
                        </div>
                    </div>      
                </section>
                <!-- ezMap Control :: E -->
            </div>
        </section>
        <footer id="footer">
        	<%@ include file="/WEB-INF/jsp/egovframework/example/fragment/mobile/mobile-footer.jsp" %>
        </footer>
    </div>
</body>
</html>