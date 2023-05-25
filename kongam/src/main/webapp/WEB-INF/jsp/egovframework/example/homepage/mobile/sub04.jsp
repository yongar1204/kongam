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
            <div class="button-group w_33">
                <button id="NOTICE" class="tablinks active" name="공지사항">공지사항</button>
                <button id="NEWS" class="tablinks" name="뉴스&보도자료">뉴스&보도자료</button>
                <button id="ACTIVITY" class="tablinks" name="사회공헌활동">사회공헌활동</button>
                <!-- <button class="tablinks" onClick="location.href='sub0403.html'">문의하기</button> -->
            </div>
        </div>
        <section class="sub-contents" id="support-area">
            <div class="content">
                <div id="support01-wrap" class="tabcontent_tab" style="display: block;">
                    <div class="noticeList">
                        <!-- <dl>
                            <dt> <a href="게시판-상세.html">웹디자이너 모집(ui/ux/웹어플리케이션)</a> </dt>
                            <dd>
                                <span>2022-05-27</span> 날짜
                                <span>45</span> 조회수
                            </dd>
                        </dl>
                        <dl>
                            <dt> <a href="게시판-상세.html">웹디자이너 모집(ui/ux/웹어플리케이션)</a> </dt>
                            <dd>
                                <span>2022-05-27</span> 날짜
                                <span>45</span> 조회수
                            </dd>
                        </dl>
                        <dl>
                            <dt> <a href="게시판-상세.html">웹디자이너 모집(ui/ux/웹어플리케이션)</a> </dt>
                            <dd>
                                <span>2022-05-27</span> 날짜
                                <span>45</span> 조회수
                            </dd>
                        </dl>
                        <dl>
                            <dt> <a href="게시판-상세.html">웹디자이너 모집(ui/ux/웹어플리케이션)</a> </dt>
                            <dd>
                                <span>2022-05-27</span> 날짜
                                <span>45</span> 조회수
                            </dd>
                        </dl> -->
                    </div>
                    <div class="board_pager">
                        <span class="inner">
                            <a href="#" class="pageFirst"><img src="/resources/images/btn_page_first.gif" alt="첫페이지"></a>
                            <a href="#" class="pagePrev"><img src="/resources/images/btn_page_pre.gif" alt="이전페이지"></a>
                            <a href="#" class="pageNow"><strong>1</strong></a><a href="#" class="pageNone">2</a>
                            <a href="#" class="pageNext"><img src="/resources/images/btn_page_next.gif" alt="다음페이지"></a>
                            <a href="#" class="pageLast"><img src="/resources/images/btn_page_last.gif" alt="마지막페이지"></a>
                        </span>
                    </div>
                </div>                
            </div>
        </section>
        <footer id="footer">
        	<%@ include file="/WEB-INF/jsp/egovframework/example/fragment/mobile/mobile-footer.jsp" %>
        </footer>
    </div>
</body>
<script src="/resources/mobile/js/2022/board-list.js"></script>
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

    //sticky
    // window.onscroll = function() {myFunction()};

    // var navbar = document.getElementById("tabbar");
    // var sticky = navbar.offsetTop;

    // function myFunction() {
    // if (window.pageYOffset >= sticky) {
    //     navbar.classList.add("sticky")
    // } else {
    //     navbar.classList.remove("sticky");
    // }
    // }
</script>
</html>