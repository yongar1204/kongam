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
            duration: 1000
        });
    </script>    
    <header id="header">
        <%@ include file="/WEB-INF/jsp/egovframework/example/fragment/mobile/mobile-header.jsp" %>
    </header>
    <div class="wrap">
        <div class="header-wrap">
            <div class="bg"></div>           
        </div>
        <section class="sub-visual" id="sub-recruit">
            <div class="txt" data-aos="fade-up">
                <strong>채용안내</strong>
                <p>공감아이티는 응용 소프트웨어 개발 전문 기업입니다.</p>
            </div>
        </section>
        <div id="tabbar">
            <div class="button-group w_33">
                <button class="tablinks" onClick="location.href='/mobile/recruits/index.do'">인재상</button>
                <button class="tablinks active" onClick="location.href='/mobile/recruits/benefits.do'">복리후생</button>
                <button class="tablinks" onClick="location.href='/mobile/recruits/board.do'">채용안내/공고</button>
            </div>
        </div>
        <section class="sub-contents" id="recruit-area">
            <div class="content">                
                <div id="recruit02-wrap" class="tabcontent_tab" style="display: block;">
                    <ul>
                        <li>
                            <div><img src="/resources/mobile/images/recruit04.png" alt="시계아이콘"></div>
                            <div class="cont">
                                <strong>근무시간</strong>
                                <ul>
                                    <li>근무시간 : 09:00 ~ 18:00</li>
                                    <li>주 5일 근무제</li>
                                    <li>대체휴일제 적용(관공서와 동일)</li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <div><img src="/resources/mobile/images/recruit05.png" alt="화분아이콘"></div>
                            <div class="cont">
                                <strong>4대 보험가입</strong>
                                <ul>
                                    <li>산재, 건강, 고용, 국민연금 가입</li>
                                    <li>건강유지 및 질병예방을 위한 정기적 건강검진 실시</li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <div><img src="/resources/mobile/images/recruit06.png" alt="스마일아이콘"></div>
                            <div class="cont">
                                <strong>경조사</strong>
                                <ul>
                                    <li>경조사유에 따른 경조금 지급 및 휴가 부여</li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <div><img src="/resources/mobile/images/recruit07.png" alt="브레인아이콘"></div>
                            <div class="cont">
                                <strong>교육지원</strong>
                                <ul>
                                    <li>자기개발 도서구입비 지원</li>
                                    <li>신입사원 및 직무향상 교육 지원</li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <div><img src="/resources/mobile/images/recruit08.png" alt="컴퓨터아이콘"></div>
                            <div class="cont">
                                <strong>업무환경</strong>
                                <ul>
                                    <li>듀얼모니터 및 SSD 등 장비 수시<br>업그레이드</li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <div><img src="/resources/mobile/images/recruit09.png" alt="자동차아이콘"></div>
                            <div class="cont">
                                <strong>교통지원</strong>
                                <ul>
                                    <li>야간근무 교통비 지급</li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <div><img src="/resources/mobile/images/recruit10.png" alt="집아이콘"></div>
                            <div class="cont">
                                <strong>숙소비 지원</strong>
                                <ul>
                                    <li>지방 근무시 숙소 지원</li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <div><img src="/resources/images/recruit11.png" alt="장기근속 휴가 아이콘"></div>
                            <div class="cont">
                                <strong>장기근속 휴가</strong>
                                <ul>
                                    <li>근속 만 7년 1주</li>
                                    <li>만 14년 2주</li>
                                    <li>만 20년 1개월</li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <div><img src="/resources/images/recruit12.png" alt="리프레쉬 휴가 아이콘"></div>
                            <div class="cont">
                                <strong>리프레쉬 휴가</strong>
                                <ul>
                                    <li>프로젝트 종료후 1~3일 유급휴가</li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <div><img src="/resources/images/recruit13.png" alt="문화비 지원 아이콘"></div>
                            <div class="cont">
                                <strong>문화비 지원</strong>
                                <ul>
                                    <li>1년이상 근속자</li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <div><img src="/resources/images/recruit14.png" alt="자녀입학금 지원 아이콘"></div>
                            <div class="cont">
                            <strong>자녀입학금 지원</strong>
                            <ul>
                                <li>초등학교~대학교 차등 지원</li>
                            </ul>
                            </div>
                        </li>
                    </ul>
                </div>                
            </div>
        </section>
        <footer id="footer">
        
        	<%@ include file="/WEB-INF/jsp/egovframework/example/fragment/mobile/mobile-footer.jsp" %>
        </footer>
    </div>
</body>
</html>