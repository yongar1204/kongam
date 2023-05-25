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
                <button class="tablinks active" onClick="location.href='/companies/history.do'">연혁</button>
                <button class="tablinks" onClick="location.href='/companies/org.do'">조직도</button>
                <button class="tablinks" onClick="location.href='/companies/location.do'">오시는길</button>
            </div>
        </div>
        <section class="sub-contents" id="company">
            <div id="history" class="tabcontent_scroll">
                <div class="content">
                    <h3>연혁</h3>
                    <p class="mb60">㈜공감아이티는 고객이 필요로 하는 <span>정보시스템을  분석설계하여 맞춤형 프로그램을 구축 서비스하는 SI전문 기업입니다.</span><em>전자정부 표준프레임워크를 기반으로 업무 및 환경분석을 통해 고객이 원하는 최적의 시스템과 환경을 구축하기 위하여 최선을 노력을 다하고 있습니다.</em></p>
                    
                    <div>
                        <dl>
                            <dt>2022</dt>
                            <dd><span>12월</span>여성가족부 주관 <br>'2022 가족친화기업' 인증</dd>
                            <dd><span>11월</span>'2022 자랑스러운 여성벤처인' 중소벤처기업부장관 표창장 수상</dd>
                            <dd><span>&nbsp;</span>문화체육관광부 주관  <br>'2022 여가친화기업' 인증</dd>
                            <dd><span>06월</span>국군재정관리단 <br>헬기위치추적체계 SW고도화 사업</dd>
                            <dd><span>&nbsp;</span>행정안전부 <br>NDMS GIS 연계체계 유지관리 개선 사업</dd>
                            <dd><span>&nbsp;</span>행정안전부 <br>재난안전정보시스템 ISP 및 NDMS <br>센싱정보 연계사업</dd>
                            <!-- <dd><span>04월</span>저작권 등록 프로그램<br>
                            	<ul>
                                    <li>ezMap이지맵</li>
                                    <li>IntoUs QM</li>
                                    <li>IntoUs MM</li>
                                    <li>IntoUs IOT</li>
                                    <li>IntoUs Stream</li>
                                </ul>
                            </dd> -->
                            <dd><span>04월</span>ezMap, IntoUs(QM, MM, Stream)<br>저작권등록<br></dd>
                            <!-- <dd><span>02월</span>통신서버소프트웨어 나라장터 <br>종합쇼핑몰 등록<br>
                            	<ul>
                                    <li>IntoUs ESB Enterprise Server</li>
                                    <li>IntoUs ESB Standard Server</li>
                                    <li>IntoUs ESB Agent Connection License</li>
                                </ul>
                            </dd> -->
                            <dd><span>02월</span>IntoUs ESB 통신서버소프트웨어<br>나라장터 종합쇼핑몰 등록</dd>
                            <dd><span>01월</span>행정안전부<br> 2022년 GIS기반 통합상황관리시스템 <br>운영 및 유지관리 사업</dd>
                        </dl>
                    </div>
                    <div  data-aos="fade-right" data-aos-delay="200">
                        <dl>
                            <dt>2021</dt>
                            <dd><span>10월</span>소방청, 119통합상황관리시스템 기능고도화 사업</dd>
                            <dd><span>08월</span>해양수산부, 해양수산분야 빅데이터 플랫폼 및 센터 구축 2차 사업</dd>
                            <dd><span>&nbsp;</span>소방청, 소방공무원 보건안전 관리시스템 고도화 용역</dd>
                            <dd><span>07월</span>대전광역시, 빅데이터 정책지원시스템 구축(관광문화/의료보건)용역</dd>
                            <dd><span>03월</span>행정안전부, 국가재난관리정보시스템 개선 사업</dd>
                            <dd><span>&nbsp;</span>행정안전부, 국가안전정보 통합공개시스템 구축 2차 사업</dd>
                            <dd><span>02월</span>IntoUs 솔루션 GS인증</dd>
                            <dd><span>01월</span>TMAX ‘HyperData for IntoUs’ 솔루션 공급 및 기술지원 MOU 체결</dd>
                        </dl>
                    </div>
                    <div  data-aos="fade-left" data-aos-delay="200">
                        <dl>
                            <dt>2020</dt>
                            <!-- <dd><span>12월</span>데이터 수집/적제 솔루션 출시<br><em>(IntoUs ESB)</em></dd>
                            <dd><span>&nbsp;</span>데이터 거버넌스 솔루션 개발<br><em>(IntoUs QM/MM)</em></dd> -->
<!--                             <dd><span>10월</span>넥타소프트, 데이터 표준/메타데이터,데이터 품질,데이터 시각화개발</dd> -->

							<dd><span>12월</span>데이터 수집/적제 솔루션 <br>IntoUs ESB 출시</dd>
							<dd><span>10월</span>데이터 거버넌스 솔루션 <br>IntoUs QM/MM 개발<br></dd>
                            <dd><span>&nbsp;</span>충청남도, 재난안전대책본부 웹사이트 이관 사업</dd>
                            <dd><span>09월</span>한국지능정보사회진흥원, 빅데이터 플랫폼 및 센터 구축 사업</dd>
                            <dd><span>08월</span>정보통신공사업 등록</dd>
                            <dd><span>05월</span>충청남도, 공간정보 통합플랫폼 구축 사업</dd>
                            <dd><span>03월</span>충청남도, 2020년 공간정보시스템 통합 유지관리사업</dd>
                            <!-- <dd><span>01월</span>논산시, 2020년 공간정보시스템 통합 유지관리 용역</dd> -->
                            <dd><span>&nbsp;</span>충청남도, 2020 충청남도 재난안전포털 유지보수 용역</dd>
                            <!-- <dd><span>&nbsp;</span>충청남도, 2020 위치기반 증강현실(AR) 플랫폼 유지관리 용역</dd> -->
                            <!-- <dd><span>&nbsp;</span>충청남도, 2020 공간정보시스템 통합유지보수 용역</dd> -->
                        </dl>
                    </div>
                    <div data-aos="fade-right" data-aos-delay="200">
                        <dl>
                            <dt>2019</dt>
                            <dd><span>12월</span>IntoUs 저작권 등록</dd>
                            <!-- <dd><span>11월</span>충청남도, 로드킬 바로신고 시스템 구축</dd> -->
                            <dd><span>&nbsp;</span>국립농업과학원, 농약식품건강안전 정보시스템 운영</dd>
                            <dd><span>06월</span>충청남도, 위치기반 증강현실(AR) 개발지원시스템 및 콘텐츠 구축 용역</dd>
                            <!-- <dd><span>&nbsp;</span>국립농업과학원, 농약식품건강안전 정보시스템 운영</dd> -->
                            <!-- <dd><span>04월</span>국립식량과학원, 2019년 작물연구정보화 위탁관리용역</dd> -->
                            <dd><span>03월</span>위치기반 증강현실(AR)플랫폼 저작권 등록</dd>
                            <dd><span>02월</span>한국여성경제인협회 여성기업인증</dd>
                            <dd><span>01월</span>소방청, 소방공무원 보건안전 관리시스템 구축사업</dd>
                        </dl>
                    </div>
                    <div  data-aos="fade-left" data-aos-delay="200">
                        <dl>
                            <dt>2018</dt>
                            <dd><span>12월</span>기업부설연구소 설립</dd>
                            <!-- <dd><span>&nbsp;</span>천안시, 2019년 공간정보시스템 통합유지보수 용역</dd> -->
                            <dd><span>11월</span>측량업(지도제작업)등록</dd>
                            <!-- <dd><span>&nbsp;</span>특허기술
                            	<ul>
                            		<li>POI정보 등록 시스템 및 그 방법</li>
                            		<li>웹서버의 서비스 품질 측정 시스템 및 방법</li>
                            		<li>실시간 교통정보 기반의 경로정보 시스템과 방법 및 이를 위한 이동통신 단말기</li>
                            	</ul>
                            </dd> -->
                            <dd><span>&nbsp;</span>POI정보 등록 시스템 및 그 방법<br> 특허기술 등록</dd>
                            <dd><span>&nbsp;</span>웹서버의 서비스 품질 측정 시스템 및 방법 특허기술 등록</dd>
                            <dd><span>&nbsp;</span>실시간 교통정보 기반의 경로정보 시스템과 방법 및 이를 위한 <br>이동통신 단말기 특허기술 등록</dd>
                            <dd><span>09월</span>한국해양조사협회, 한국형 e-Nav 전자해도 공급 및 모니터링 시스템 개발</dd>
                            <!-- <dd><span>08월</span>한국환경공단, 비점오염저감시설 정보시스템 자료정비</dd> -->
                            <!-- <dd><span>06월</span>충청남도, 위치기반증강현실(AR) 플랫폼 구축 용역</dd> -->
                            <dd><span>06월</span>한국전자통신연구원, 복합 재난 예측 시나리오 재난 설정 및 연계 모듈 개발</dd>
                            <!-- <dd><span>&nbsp;</span>충청남도, 시계열정사영상 관리시스템 구축</dd> -->
                            <!-- <dd><span>04월</span>국립식량과학원, 2018년 작물연구정보화 위탁관리용역</dd> -->
                            <!-- <dd><span>03월</span>저작권 등록 프로그램
                            	<ul>
                            		<li>한우리 젖소 산유능력정보 서비스 프로그램</li>
                            		<li>한우리 젖소 유전능력정보 서비스 프로그램</li>
                            	</ul>
                            </dd> -->
                            <dd><span>03월</span>한우리 젖소 산유능력정보 서비스 프로그램 저작권 등록</dd>
                            <dd><span>&nbsp;</span>한우리 젖소 유전능력정보 서비스 프로그램 저작권 등록</dd>
                            <dd><span>01월</span>충청남도, 재난안전포털 고도화 2차 사업</dd>
                        </dl>
                    </div>
                    <div data-aos="fade-right" data-aos-delay="200">
                        <dl>
                            <dt>2017</dt>
                            <dd><span>06월</span>충청남도, 공간정보시스템 액티브X제거 사업</dd>
                            <dd><span>04월</span>충주시, 공간정보시스템 통합개선 고도화 용역</dd>
                            <dd><span>&nbsp;</span>국립축산과학원, 축산농장 종합지원시스템(한우리)고도화 사업</dd>
                            <!-- <dd><span>&nbsp;</span>저작권 등록 프로그램
                            	<ul>
                            		<li>기후변화 신시나리오 기반 가축사육기상정보 서비스 프로그램</li>
                            	</ul>
                            </dd> -->
                            <dd><span>&nbsp;</span>기후변화 신시나리오 기반 가축사육기상정보 서비스 프로그램 저작권 등록</dd>
                            <dd><span>03월</span>벤처기업인증</dd>
                        </dl>
                    </div>
                    <div  data-aos="fade-left" data-aos-delay="200">
                        <dl>
                            <dt>2016</dt>
                            <dd><span>12월</span>충청남도, 재난안전포털 구축 사업</dd>
                            <!-- <dd><span>06월</span>충청남도, 3차원생활공간정보시스템 액티브X제거사업</dd> -->
                            <dd><span>06월</span>국립농업과학원, 토양환경정보시스템 고도화</dd>
                            <dd><span>05월</span>국립축산과학원, 축산농장 종합지원시스템(한우리,돼지)구축</dd>
                        </dl>
                    </div>
                    <div data-aos="fade-right" data-aos-delay="200">
                        <dl>
                            <dt>2015</dt>
                            <dd><span>11월</span>(주)공감아이티 법인 설립</dd>
                        </dl>
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