<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
  /**
   * index 화면
   * 
   * @Class index.jsp
   * @author bms구축팀
   * @since 2022-02-14
   * @version 1.0
   */
%>
<script type="text/javaScript" >
/* 
	var name = prompt("테스트입니다.");
	
	if(name == "123"){
		location.href="/main/login.do";
	} else{
		location.href="/";
	} */
</script>
<%@ include file="/WEB-INF/jsp/egovframework/example/sample/include/include-header-main.jspf" %>
	<div class="main-container">
		<a class="logo" data-transition="slide" href="<c:url value='/main/login/login.do'/>" title="BX System"> 
		<img src="<c:url value='${path}/resources/image/bxlogo.png'/>" alt="BX시스템"/>
		</a>
	</div>
	<p>로고 클릭</p>
<%@ include file="/WEB-INF/jsp/egovframework/example/sample/include/include-footer-main.jspf" %>