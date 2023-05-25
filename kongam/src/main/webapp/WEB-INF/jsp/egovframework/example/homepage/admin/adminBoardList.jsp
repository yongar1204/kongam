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
    <link rel="stylesheet" href="/resources/css/admin/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
    <div id="wrap">
        <div id="header_warp">
            <header>
                <h1><a href="#">공감아이티 홈페이지 관리자 </a></h1>
                <nav id="gnb-wrap">
                    <ul>
                        <li><a href="#l">사용자정보</a></li>
                        <li><a href="#">권한관리</a></li>
                        <li class="active"><a href="/admin/board/list.do">공지사항관리</a></li>
                        <li><a href="/admin/contactus/list.do">CONTACT US정보</a></li>
                        <li><div>계정 : <sec:authentication property="principal.username"/></div></li>
                      </ul>
                </nav>            
            </header>
        </div>
        <div id="container">
            <div id="contents">
                <ul id="list_depth">
                    <li><a href="#">홈</a></li>
                    <li><a class="active">공지사항관리</a></li>
                </ul>
                <div>
                	<ul class="category_list">
                		<li class="category"><a href="/admin/board/list.do">공지사항</a></li>
                		<li class="category"><a href="/admin/board/list/NEWS.do">뉴스/보도자료</a></li>
                		<li class="category"><a href="/admin/board/list/ACTIVITY.do">사회공헌활동</a></li>
                		<li class="category"><a href="/admin/board/list/JOB_POSTING.do">채용안내/공고</a></li>
                	</ul>
                </div>
                <h2>공지사항관리</h2>
                <div class="contents-box">
                    <p class="page_info">
                        <span class="total_page">전체게시물 <b>${pagingMap.paging.totalElements}</b> </span>
                    </p>
                    <table class="tbl-board">
                        <caption>공지사항</caption>
                        <colgroup>
                            <col style="width: 14%;">
                            <col style="width: 76%;">
                            <col style="width: 20%;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>번호</th>
                                <th>제목</th>
                                <th>작성일</th>
                            </tr>
                        </thead>
                        <tbody>
                        	<c:forEach var="post" items="${ pagingMap.boardList }">
                        		<tr>
                        			<td>${ post.boardIdx }</td>
	                                <td class="txt_left"><a href="/admin/board/editform/${ post.boardIdx }.do">${ post.title }</a></td>
	                                <td>${ post.createdAt }</td>
                        		</tr>
                        	</c:forEach>
                        </tbody>
                    </table>
                    <div class="btn_group fl_right">
                        <button type="button" class="color" onClick="location.href='/admin/board/form.do'">글쓰기</button>
                    </div>
                    <div class="board_pager">
                        <span class="inner">
                            <a href="#" class="pageFirst"><img src="/resources/images/admin/btn_page_first.gif" alt="첫페이지"></a>
                            <a href="#" class="pagePrev"><img src="/resources/images/admin/btn_page_pre.gif" alt="이전페이지"></a>
                            <c:forEach var="page" begin="${pagingMap.paging.startPage}" end="${pagingMap.paging.lastPage}">
                            	<c:choose>
                            		<c:when test="${ pagingMap.paging.pageNum == page }">
                            			<a href="#" class="pageNow"><strong>${page}</strong></a>
                            		</c:when>
                            		<c:otherwise>
                            			<a href="/admin/board/list/${ pagingMap.category }/${ page }.do" class="pageNone">${page}</a>
                            		</c:otherwise>
                            	</c:choose>
                            </c:forEach>
                            <a href="#" class="pageNext"><img src="/resources/images/admin/btn_page_next.gif" alt="다음페이지"></a>
                            <a href="#" class="pageLast"><img src="/resources/images/admin/btn_page_last.gif" alt="마지막페이지"></a>
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <footer id="footer">
            copyright ⓒ 2018 THE PROVINCE OF CHUNGCHEONGNAM-DO. All Rights Reserved.
        </footer>
    </div>
</body>
</html>