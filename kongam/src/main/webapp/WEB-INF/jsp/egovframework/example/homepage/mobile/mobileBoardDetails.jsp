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
        <section class="sub-visual" id="sub-support">
            <div class="txt" data-aos="fade-up">
                <strong>공감소식</strong>
                <p>공감아이티는 응용 소프트웨어 개발 전문 기업입니다.</p>
            </div>
        </section>
        <div id="tabbar">
            <div class="button-group w_50">
                <button class="tablinks active" onClick="location.href='/mobile/board/list/notice.do';">공지사항</button>
                <button class="tablinks" onClick="location.href='/mobile/board/list/news.do';">뉴스&보도자료</button>
                <button class="tablinks" onClick="location.href='/mobile/board/list/activity.do';">사회공헌활동</button>
            </div>
        </div>
        <section class="sub-contents" id="support-area">
            <div class="content">
                <!-- 게시판 + 상세 : S  -->
                <article class="table-detail-01">
                    <ul class="td-header">
                        <li>
                            <h2>title</h2>
                            <ul class="info">
                                <li class="num">created_at</li>
                                <li><b>작성자</b><span class="num">user</span></li>
                            </ul>
                        </li>
                        <li>
                            <div class="attachment-download"> 
                            </div> 
                        </li>
                    </ul>
                    <div class="td-content">
                    	content
                    </div>
                    <ul class="board-pagination">
                        <li class="prev"> 
                            <span> <i class="ico-arrow"></i> 이전글 </span>
                            <a href="/" class="webkitBox">title</a>
                            <span class="num pcVer">created_at</span>
                        </li>
                        <li class="next"> 
                            <span> <i class="ico-arrow"></i> 다음글 </span>
                            <a href="/" class="webkitBox">title</a>
                            <span class="num pcVer">created_at</span>
                        </li>
                    </ul>
                </article>
                <div class="linkArea right">
                    <a type="button" class="grey goList" id="listLink">목록</a>
                </div>
                <!-- 게시판 + 상세 : E  -->
            </div>
        </section>
        <footer id="footer">
        	<%@ include file="/WEB-INF/jsp/egovframework/example/fragment/mobile/mobile-footer.jsp" %>
        </footer>
    </div>
</body>
<script src="/resources/mobile/js/2022/board-details.js"></script>
</html>