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
                <button class="tablinks" onClick="location.href='/mobile/companies/history.do'">연혁</button>
                <button class="tablinks active" onClick="location.href='/mobile/companies/org.do'">조직도</button>
                <button class="tablinks" onClick="location.href='/mobile/companies/location.do'">오시는길</button>
            </div>
        </div>
        <section class="sub-contents" id="company">
            <div id="organization_2022" class="tabcontent_scroll">
                <div class="content">
                    <h3>조직도</h3>
                    <div class="organization">
                        <div class="og-item-1" data-aos="fade-down">
                            <span>대표이사</span>
                        </div>
                        <div class="og-item-2">
                            <div class="list" data-aos="fade-right" data-aos-delay="100">
                                <div class="tit"><span>기업부설연구소</span></div>
                                <div class="cont">
                                    <span>연구소</span>
                                    <span>제품개발팀</span>
                                </div>
                            </div>
                            <div class="list" data-aos="fade-left" data-aos-delay="200">
                                <div class="tit"><span>경영관리부</span></div>
                            </div>
                        </div>
                        <div class="og-item-3">
                            <dl class="list" data-aos="fade-up-left" data-aos-delay="300" >
                                <dt class="tit"><span>SI사업부</span></dt>
                                <dd class="cont">
                                    <span>사업지원팀</span>
                                    <span>공공사업팀</span>
                                </dd>
                            </dl>
                            <dl class="list" data-aos="fade-up-left" data-aos-delay="400">
                                <dt class="tit"><span>솔루션사업부</span></dt>
                                <dd class="cont">
                                    <span>솔루션기술팀</span>
                                    <span>솔루션운영팀</span>
                                </dd>
                            </dl>
                            <dl class="list" data-aos="fade-up-left" data-aos-delay="500">
                                <dt class="tit"><span>운영지원부</span></dt>
                                <dd class="cont">
                                    <span>기술지원팀</span>
                                    <span>운영지원팀</span>
                                </dd>
                            </dl>
                            <dl class="list" data-aos="fade-up-left" data-aos-delay="600">
                                <dt class="tit"><span>전략영업부</span></dt>
                                <dd class="cont">
                                    <span>영업팀</span>
                                    <span>마케팅팀</span>
                                </dd>
                            </dl>
                        </div>
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