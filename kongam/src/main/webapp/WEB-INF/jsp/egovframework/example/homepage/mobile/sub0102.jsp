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
        <section class="sub-visual" id="sub-company">
            <div class="txt" data-aos="fade-up">
                <strong>회사소개</strong>
                <p>공감아이티는 응용 소프트웨어 개발 전문 기업입니다.</p>
            </div>
        </section>
        <div id="tabbar">
            <div class="button-group w_25">
                <button class="tablinks" onClick="location.href='/mobile/companies/index.do'">인사말</button>
                <button class="tablinks active" onClick="location.href='/mobile/companies/history.do'">연혁</button>
                <button class="tablinks" onClick="location.href='/mobile/companies/org.do'">조직도</button>
                <button class="tablinks" onClick="location.href='/mobile/companies/location.do'">오시는길</button>
            </div>
        </div>
        <section class="sub-contents" id="company">
            <div id="history" class="tabcontent_scroll">
                <div class="content">
                    <h3>연혁</h3>
                    <p class="mb60">㈜공감아이티는 고객이 필요로 하는 <span>정보시스템을 분석설계하여 맞춤형 프로그램을 구축 서비스하는 SI전문 기업입니다.</span><em>전자정부 표준프레임워크를 기반으로 업무 및 환경분석을 통해 고객이 원하는 최적의 시스템과 환경을 구축하기 위하여 최선을 노력을 다하고 있습니다.</em></p>
                    <div>
                        <dl>
                            <dt>2021</dt>
                            <dd><span>10월</span>소방청, 119통합상황관리시스템 기능고도화 사업</dd>
                            <dd><span>08월</span>소방청, 소방공무원 보건안전 관리시스템 고도화 사업</dd>
                            <dd><span>03월</span>행정안전부, 국가재난관리정보시스템 개선 사업</dd>
                            <dd><span>02월</span>INTOUS 솔루션 GS인증</dd>
                        </dl>
                    </div>
                    <div  data-aos="fade-left" data-aos-delay="200">
                        <dl>
                            <dt>2020</dt>
                            <dd><span>12월</span>데이터 수집/적제 솔루션 출시<br><em>(INTOUS ESB)</em></dd>
                            <dd><span>&nbsp;</span>데이터 거버넌스 솔루션 개발<br><em>(INTOUS QM/MM)</em></dd>
                            <dd><span>10월</span>충청남도, 재난안전대책본부 웹사이트 이관 사업 용역</dd>
                            <dd><span>09월</span>한국지능정보사회진흥원, 빅데이터 플랫폼 및 센터 구축 사업</dd>
                            <dd><span>08월</span>정보통신공사업 등록</dd>
                            <dd><span>06월</span>충청남도, 공유자원 개방공유시스템 개발 용역</dd>
                            <dd><span>05월</span>충청남도, 공간정보 통합플랫폼 구축</dd>
                            <dd><span>02월</span>논산시, 2020년 공간정보시스템 통합 유지관리 사업</dd>
                            <dd><span>01월</span>충청남도, 2020 충청남도 재난안전포털 유지보수 용역</dd>
                            <dd><span>&nbsp;</span>충청남도, 2020 위치기반 증강현실(AR)플랫폼 유지관리 용역</dd>
                            <dd><span>&nbsp;</span>충청남도, 2020 공간정보시스템 통합유지보수 용역</dd>
                        </dl>
                    </div>
                    <div data-aos="fade-left" data-aos-delay="200">
                        <dl>
                            <dt>2019</dt>
                            <dd><span>11월</span>충청남도, 로드킬 바로신고 시스템 구축</dd>
                            <dd><span>08월</span>충청남도, 2019년 충청남도 재난안전포털 유지보수 용역</dd>
                            <dd><span>06월</span>충청남도, 위치기반 증강현실(AR)개발지원시스템 및 콘텐츠 구축 용역</dd>
                            <dd><span>&nbsp;</span>국립농업과학원, 농약식품건강안전 정보시스템 운영</dd>
                            <dd><span>04월</span>국립식량과학원, 2019년 작물연구정보화 위탁관리</dd>
                            <dd><span>02월</span>여성기업인증</dd>
                            <dd><span>01월</span>소방청, 소방공무원 보건안전 관리시스템 구축사업</dd>
                        </dl>
                    </div>
                    <div  data-aos="fade-left" data-aos-delay="200">
                        <dl>
                            <dt>2018</dt>
                            <dd><span>12월</span>기업부설연구소 설립</dd>
                            <dd><span>&nbsp;</span>천안시, 2019년 공간정보시스템 통합유지보수 용역</dd>
                            <dd><span>11월</span>측량업(지도제작업)등록</dd>
                            <dd><span>09월</span>한국해양조사협회, 한국형 e-Nav 전자해도 공급 및 모니터링 시스템 개발</dd>
                            <dd><span>08월</span>한국환경공단, 비점오염저감시설 정보시스템 자료정비</dd>
                            <dd><span>06월</span>충청남도, 위치기반증강현실(AR) 플랫폼 구축 용역</dd>
                            <dd><span>&nbsp;</span>한국전자통신연구원, 복합 재난 예측 시나리오 재난 설정 및 연계 모듈 개발</dd>
                            <dd><span>&nbsp;</span>충청남도, 시계열정사영상 관리시스템 구축</dd>
                            <dd><span>04월</span>국립식량과학원, 2018년 작물연구정보화 위탁관리용역</dd>
                            <dd><span>01월</span>충청남도, 재난안전포털 고도화(2차) 사업</dd>
                        </dl>
                    </div>
                    <div data-aos="fade-left" data-aos-delay="200">
                        <dl>
                            <dt>2017</dt>
                            <dd><span>12월</span>특허기술이전 3건
                                <ul>
                                    <li>실시간 교통정보 기반의 경로정보 제공 시스템과 방법 및 이를 위한 이동통신 단말기</li>
                                    <li>POI 정보 등록 시스템 및 그 방법</li>
                                    <li>웹서버의 서비스 품질 측정 시스템 및 방법</li>
                                </ul>
                            </dd>
                            <dd><span>07월</span>국립식량과학원, 2017년 작물연구정보화 위탁사업 용역</dd>
                            <dd><span>06월</span>충남도청, 3차원 공간정보시스템 액티브X제거 사업 용역</dd>
                            <dd><span>04월</span>충주시, 공간정보시스템 통합개선 고도화 용역</dd>
                            <dd><span>&nbsp;</span>국립축산과학원, 축산농장 종합지원시스템(한우리)고도화 사업</dd>
                            <dd><span>03월</span>벤처기업인증</dd>
                            <dd><span>&nbsp;</span>천안시, 2017년 공간정보시스템 통합유지보수</dd>
                        </dl>
                    </div>
                    <div  data-aos="fade-left" data-aos-delay="200">
                        <dl>
                            <dt>2016</dt>
                            <dd><span>12월</span>국립농업과학원, 토양환경정보시스템 고도화</dd>
                            <dd><span>04월</span>본사 이전<em>(충남 논산시)</em></dd>
                            <dd><span>03월</span>대전 사무실 개소</dd>
                            <dd><span>&nbsp;</span>직접생산증명서 취득</dd>
                            
                        </dl>
                    </div>
                    <div data-aos="fade-left" data-aos-delay="200">
                        <dl>
                            <dt>2015</dt>
                            <dd><span>12월</span>사무실 개소<em>(세종시)</em></dd>
                            <dd><span>&nbsp;</span>소프트웨어사업자신고</dd>
                            <dd><span>&nbsp;</span>직접생산확인증명서 취득
                                <ul>
                                    <li>전산업무(소프트웨어개발)</li>
                                </ul>
                            </dd>
                            <dd><span>11월</span>전산업무(소프트웨어개발)</dd>
                        </dl>
                    </div>
                </div>                
            </div>
        </section>
        <footer id="footer">
        	<%@ include file="/WEB-INF/jsp/egovframework/example/fragment/mobile/mobile-footer.jsp" %>
        </footer>
    </div>
</body>
</html>