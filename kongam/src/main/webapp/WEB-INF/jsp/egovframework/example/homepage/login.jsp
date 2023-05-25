<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>공감아이티</title>
    <link rel="shortcut icon" type="image/x-icon" href="/resources/images/2022/favicon.ico">
    <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <link rel="stylesheet" href="/resources/css/style_normal.css">

    <!--AOS 라이브러리-->
    <link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css" />

    <!-- CSS file :: 2022 renewal -->
    <link rel="stylesheet" href="/resources/css/2022/common.css">
    <link rel="stylesheet" href="/resources/css/2022/layout.css">
    <link rel="stylesheet" href="/resources/css/2022/sub.css">

    <!-- JS file -->
    <script src="/resources/js/2022/jquery-1.11.0.min.js"></script>
    <script src="/resources/js/2022/slick.js"></script>

    <!-- include file -->
    <script type="text/javascript">   
        $(function(){
            //$("#header").load("header.html");
            //$("#header").addClass('sub');
            //$("#footer").load("footer.html");
            
        })        		
    </script>

</head>
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
    <div class="login-container">
        <section class="login-area" data-aos="fade-up">
            <h1><b>로그인</b>공감아이티 관리자페이지 입니다. 로그인 후 이용하세요.</h1>
            <form action="" method="post">
            	<div class="login-cont">
	                <article class="lg-list">
	                    <h2 class="hidden">아이디</h2>
	                    <div class="tBox wid100">
	                        <label for="input-1" class="hidden">아이디</label>
	                        <input type="text" id="input-1" name="userId" autocomplete="off" placeholder="아이디"/>
	                    </div>
	                </article>
	                <article class="lg-list">
	                    <h2 class="hidden">비밀번호</h2>
	                    <div class="tBox wid100">
	                        <label for="input-2" class="hidden">비밀번호</label>
	                        <input type="password" id="input-2" name="password" autocomplete="off" placeholder="비밀번호"/>
	                    </div>
	                </article>
	                <div style="color: red">
	                	${exception}
	                </div>
	                
	                <button class="login-submit" type="submit">로그인</button>
	                <ul class="login-find">
	                    <!-- <li> <a href="/">회원가입</a> </li>
	                    <li> <a href="/">아이디 찾기</a> </li>
	                    <li> <a href="/">비밀번호 찾기</a> </li> -->
	                </ul>
            	</div>
            </form>
        </section>
    </div>
</body>
</html>