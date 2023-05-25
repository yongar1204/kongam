<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항관리</title>
    <link rel="stylesheet" href="/resources/css/style_normal.css">
    <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <link rel="stylesheet" href="/resources/css/style_normal.css">
    <link rel="stylesheet" href="/resources/css/admin/style.css">
    <link rel="stylesheet" href="/resources/css/2022/common.css">
    <link rel="stylesheet" href="/resources/css/2022/layout.css">
    <link rel="stylesheet" href="/resources/css/2022/animation.css">
    <link rel="stylesheet" href="/resources/css/2022/sub.css">
    
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
	<div class="wrap">
		<div id="header_warp">
			<header>
				<h1><a href="#">공감아이티 홈페이지 관리자</a></h1>
                <nav id="gnb-wrap">
                    <ul>
                        <li><a href="#l">사용자정보</a></li>
                        <li><a href="#">권한관리</a></li>
                        <li><a href="/admin/board/list.do">공지사항관리</a></li>
                        <li class="active"><a href="/admin/contactus/list.do">CONTACT US정보</a></li>
                        <li><div>계정 : <sec:authentication property="principal.username"/></div></li>
                      </ul>
                </nav>
			</header>
		</div>
        <div class="header-wrap">             
            <div class="bg"></div>           
        </div>
        <section class="sub-visual" id="sub-support">
            <div class="txt" data-aos="fade-up">
                <strong>고객지원</strong>
                <p>공감아이티는 응용 소프트웨어 개발 전문 기업입니다.</p>
            </div>
        </section>
        <div id="tabbar">
            <div class="button-group w_33">
            </div>
        </div>
        <section class="sub-contents" id="support-area">
            <div class="content">
                <!-- 게시판 + 상세 : S  -->
                <article class="table-detail-01">
                    <ul class="td-header">
                        <li>
                            <h2>${contactUs.title}</h2>
                            <ul class="info">
                                <li class="num">${contactUs.createdAt}</li>
                                <li><b>작성자</b><span class="num">${contactUs.contact_email}</span></li>
                            </ul>
                        </li>
                        <li>
                            <div class="attachment-download"> 
                            </div> 
                        </li>
                    </ul>
                    <div class="td-content">
                    	${contactUs.content}
                    </div>
                </article>
                <div class="linkArea center">
                    <a type="button" class="grey goList" id="listLink" href="/admin/contactus/list.do">목록</a>
                    <a type="button" class="grey goDelete" id="deleteLink" href="#">삭제</a>
                </div>
                <!-- 게시판 + 상세 : E  -->
            </div>
        </section>
    </div>
</body>
<script src="/resources/js/bootstrap.min.js"></script>
<script>
$('.goDelete').click(function () {
	var bIdx = window.location.pathname.split("/")[3];
	if (confirm('해당 문의내용을 삭제하시겠습니까?')) {
		$.ajax({
	        url: '/admin/board/delete/' + bIdx,
	        type: 'POST',
	        success: function (){
	            alert("해당 문의내용이 삭제되었습니다.");
	            window.location.href = '/admin/contactus/list.do';
	        }
	    })
	} else {
		return false;
	}
})
</script>
</html>