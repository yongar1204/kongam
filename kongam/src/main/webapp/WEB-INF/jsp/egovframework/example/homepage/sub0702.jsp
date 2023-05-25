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
                <button class="tablinks active" onClick="location.href='/business/ar.do'">위치기반서비스</button>
                <button class="tablinks" onClick="location.href='/business/archive.do'">아카이브서비스</button>
                <button class="tablinks" onClick="location.href='/business/sm-si.do'">SI/SM서비스</button>
            </div>
        </div>
        <section class="sub-contents" id="technology-area">
            <div class="content">
                <div id="service-field-wrap" class="tabcontent_tab" style="display: block;">
                    <h3 class="mt40">위치기반 증강현실(AR)</h3>
                    <ul class="list mb20">
                        <li>증강현실(Augmenter realitry): 현실의 이미지나 배경에 3차원 가상 이미지를 겹쳐서 하나의 영상으로 보여주는 기술(ex : 포켓몬고)</li>
                        <li>현실의 건물이나 토지에 현재 위치를 계산하여 행정, 의료, 재난안전, 시설물 관리 등 공공·민간 산업 분야에서 활용도가 놓은 데이터를 접목하여 현실 공간에<br>시각화하여 제공</li>
                    </ul>
                    <div class="graybox" id="AR">
                        <dl>
                            <dt>증강현실 기술활용분야</dt>
                            <dd>
                                <div>
                                    <img src="/resources/images/egovframework/homepage/img-07.png">
                                    <span>재난 ㆍ재해 안전관리</span>
                                </div>
                                <div>
                                    <img src="/resources/images/egovframework/homepage/img-08.png">
                                    <span>문화관광</span>
                                </div>
                                <div>
                                    <img src="/resources/images/egovframework/homepage/img-09.png">
                                    <span>생활안전</span>
                                </div>
                                <div>
                                    <img src="/resources/images/egovframework/homepage/img-10.png">
                                    <span>부동산</span>
                                </div>
                                <div>
                                    <img src="/resources/images/egovframework/homepage/img-11.png">
                                    <span>생활편의</span>
                                </div>
                                <div>
                                    <img src=/resources/images/egovframework/homepage//img-12.png">
                                    <span>범죄예방</span>
                                </div>
                            </dd>
                        </dl>
                        <dl class="mt40">
                            <dt>위치기반 증강현실시스템 구현 예시</dt>
                            <dd>
                                <div>
                                    <img src="/resources/images/egovframework/homepage/img-13.png">
                                    <span>Map</span>
                                </div>
                                <div>
                                    <img src="/resources/images/egovframework/homepage/img-14.png">
                                    <span>Map + 지적도</span>
                                </div>
                                <div>
                                    <img src="/resources/images/egovframework/homepage/img-15.png">
                                    <span>Map + 지적도 + AR</span>
                                </div>
                                <div>
                                    <img src="/resources/images/egovframework/homepage/img-16.png">
                                    <span>위치기반증강현실</span>
                                </div>
                            </dd>
                        </dl>
                    </div>
                    <h3 class="mt40">위치기반 실시간 열스트레스 제공 기술</h3>
                    <ul class="list mb20">
                        <li>기상청에서 3시간 단위로 발표하는 기상예보를 바탕으로 열스트레스 정보를 생성 축척하고 지역별로 예측되는 열스트레스정보를<br>GIS 기술을 적용 지도화면으로 표출하고, 열스트레스에 따른 각종 정보를 SMS로 전송하는 기술</li>
                    </ul>
                    <div class="graybox" id="AR">
                        <dl>
                            <dt>활용예시</dt>
                            <dd>
                                <div>
                                    <img src="/resources/images/egovframework/homepage/img-17.gif">
                                </div>
                                <div>
                                    <img src="/resources/images/egovframework/homepage/img-18.gif">
                                </div>
                                <div>
                                    <img src="/resources/images/egovframework/homepage/img-19.gif">
                                </div>
                            </dd>
                        </dl>
                        <p>한우, 젖소, 돼지, 가금 등 열스트레스 모형과 기상정보를 결합하여 해당 농장주에게 실시간 열스트레스 정보제공</p>
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