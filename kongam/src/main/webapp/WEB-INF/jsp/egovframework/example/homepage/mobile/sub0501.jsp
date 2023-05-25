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
                <button class="tablinks active" onClick="location.href='/mobile/recruits/index.do'">인재상</button>
                <button class="tablinks" onClick="location.href='/mobile/recruits/benefits.do'">복리후생</button>
                <button class="tablinks" onClick="location.href='/mobile/recruits/board.do'">채용안내/공고</button>
            </div>
        </div>
        <section class="sub-contents" id="recruit-area">
            <div class="content">
                <div id="recruit01-wrap" class="tabcontent_tab" style="display: block;">
                    <h3 class="hidden">인재상</h3>
                    <div class="mb40 txt">
                        <b class="point">공감아이티는 사람 개개인의 소중한 가치를<span class="br"></span>최우선으로 하고 있습니다.</b>
                        <p>사람과 기술 중심의 경영철학을 바탕으로 초심을 잃지 않고 전진 할 수 있도록<span class="br"></span>
                            인재들의 많은 관심 부탁드립니다. 공감아이티의 문은 항상 열려 있습니다.</p>
                    </div>
                    <ul>
                        <li>
                            <div><img src="/resources/mobile/images/recruit01.jpg" alt="진취성관련이미지"></div>
                            <strong>진취성</strong>
                            항상 도전하여 현재의 자신에 안주하지 않고<br>
                            적극적인 자세로 일을 수행하는 사람
                        </li>
                        <li>
                            <div><img src="/resources/mobile/images/recruit02.jpg" alt="창의성관련이미지"></div>
                            <strong>창의성</strong>
                            끊임없이 새롭고 창조적인 아이디어로<br>
                            변화를 추구하는 사람
                        </li>
                        <li>
                            <div><img src="/resources/mobile/images/recruit03.jpg" alt="팀정신관련이미지"></div>
                            <strong>팀정신</strong>
                            동료에 대한 상호존중과 신뢰를 바탕으로<br>
                            공동의 목표를 달성하고자 소통하는 사람
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

    // //sticky
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