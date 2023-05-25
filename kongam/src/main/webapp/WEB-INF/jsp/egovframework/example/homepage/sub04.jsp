<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
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
            </div>
        </div>
        <section class="sub-contents" id="support-area">
            <div class="content">
                <div id="support01-wrap" class="tabcontent_tab" style="display: block;">
                    <h3>공지사항</h3>
                    <table class="tbl-board mt20">
                        <caption>공감아이티 공지사항</caption>
                        <colgroup>
                            <col style="width:8%">
                            <col style="width:59%">
                            <col style="width:15%">
                            <col style="width:8%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>번호</th>
                                <th>제목</th>
                                <th>날짜</th>
                                <th>조회</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                        </tbody>
                    </table>
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
                <div id="support02-wrap" class="tabcontent_tab">
                    <h3>뉴스&보도자료</h3>
                    <table class="tbl-board mt20">
                        <caption>문의하기</caption>
                        <colgroup>
                            <col style="width:8%">
                            <col style="width:59%">
                            <col style="width:15%">
                            <col style="width:8%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>번호</th>
                                <th>제목</th>
                                <th>날짜</th>
                                <th>조회</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>등록 된 내용이 없습니다.</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="board_pager">
                        <span class="inner">
                            <a href="#" class="pageFirst"><img src="/resources/images/btn_page_first.gif" alt="첫페이지"></a>
                            <a href="#" class="pagePrev"><img src="/resources/images/btn_page_pre.gif" alt="이전페이지"></a>
                            <a href="#" class="pageNow"><strong>1</strong></a>
                            <a href="#" class="pageNext"><img src="/resources/images/btn_page_next.gif" alt="다음페이지"></a>
                            <a href="#" class="pageLast"><img src="/resources/images/btn_page_last.gif" alt="마지막페이지"></a>
                        </span>
                    </div>
                </div>
                <div id="support03-wrap" class="tabcontent_tab">
                    <h3>문의하기</h3>
                    <table class="tbl-board mt20">
                        <caption>문의하기</caption>
                        <colgroup>
                            <col style="width:8%">
                            <col style="width:59%">
                            <col style="width:15%">
                            <col style="width:8%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>번호</th>
                                <th>제목</th>
                                <th>날짜</th>
                                <th>조회</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>등록 된 내용이 없습니다.</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="board_pager">
                        <div class="inner">
                            <a href="#" class="pageFirst"><img src="/resources/images/btn_page_first.gif" alt="첫페이지"></a>
                            <a href="#" class="pagePrev"><img src="/resources/images/btn_page_pre.gif" alt="이전페이지"></a>
                            <a href="#" class="pageNow"><strong>1</strong></a>
                            <a href="#" class="pageNext"><img src="/resources/images/btn_page_next.gif" alt="다음페이지"></a>
                            <a href="#" class="pageLast"><img src="/resources/images/btn_page_last.gif" alt="마지막페이지"></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <footer id="footer">
            <%@ include file="/WEB-INF/jsp/egovframework/example/fragment/footer.jsp" %>
        </footer>
    </div>
</body>
<script src="/resources/js/2022/board-list.js"></script>
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