<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="ko">
 <head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
  <link rel="icon" href="/resources/mobile/images/2022/favicon.ico">
  <link rel="shortcut icon" type="image/x-icon" href="/resources/mobile/images/2022/favicon.ico">
  <title>공감아이티</title>

 <!-- CSS file -->
  <link rel="stylesheet" href="/resources/mobile/css/2022/fullpage.css">
  <link rel="stylesheet" href="/resources/mobile/css/2022/slick.css">
  <link rel="stylesheet" href="/resources/mobile/css/2022/common.css">
  <link rel="stylesheet" href="/resources/mobile/css/2022/layout.css">
  <link rel="stylesheet" href="/resources/mobile/css/2022/main.css">
  <link rel="stylesheet" href="/resources/mobile/css/2022/animation.css">
  
  <!-- JS file -->
  <script src="/resources/mobile/js/2022/jquery-1.11.0.min.js"></script>
  <script src="/resources/mobile/js/2022/jquery.fullpage.js"></script>
  <script src="/resources/mobile/js/2022/slick.js"></script>
  <script src="/resources/mobile/js/2022/main.js"></script>
 </head>
 <body>
	<dl id="skipToContent" tabindex="-2">
		<dt>바로가기 메뉴</dt>	
		<dd><a href="#mainContent">본문 바로가기</a></dd>
		<dd><a href="#gnb">메인메뉴 바로가기</a></dd>
	</dl>

	<div id="id01"class="dailyPopup">
<%-- 		<%@ include file="/WEB-INF/jsp/egovframework/example/fragment/mobile/mobile-popup.jsp" %> --%>
	</div>

	<header id="header">
		<%@ include file="/WEB-INF/jsp/egovframework/example/fragment/mobile/mobile-header.jsp" %>
	</header>

	<div class="mainContent" id="mainContent">
		<div id="fullpage">
			<section class="section">
				<div class="mainSlide">
					<div class="ms-cont ms-1">
						<div class="txt">
							<h3>공감아이티는<span class="br moVer"></span><b>혁신과 신뢰의 가치를</b><br /><b>높이고</b></h3>
							<p>지속적인 기술혁신을 통한 차별화된 IT 서비스와<br />협업과 소통 그리고 공정의 가치를 더하여 경쟁력과 만족도를 높여갑니다.</p>
							<div class="img-box">
								<div class="ib-wrap">
									<i class="ib-1"></i>
									<i class="ib-2"></i>
									<i class="ib-3"></i>
									<i class="ib-4"></i>
									<i class="ib-5"></i>
								</div>
							</div>
						</div>
						<i class="bg-box"></i>
					</div>
					<div class="ms-cont ms-2">
						<div class="txt">
							<h3>공감아이티는<br /><b>행복한 나눔과 상생</b></h3>
							<p>사람중심의 공유와 공공 이윤 추구를 통해<br />보다 실질적이고 행복한 나눔과 상생을 추구합니다.</p>
							<div class="img-box">
								<div class="ib-wrap">
									<i class="ib-1"></i>
									<i class="ib-2"></i>
									<i class="ib-3"></i>
									<i class="ib-4"></i>
									<i class="ib-5"></i>
								</div>
							</div>
						</div>
						<i class="bg-box"></i>
					</div>
					<div class="ms-cont ms-3">
						<div class="txt">
							<h3>공감아이티는<br /><b>합리적인 공감</b></h3>
							<p>리더 중심의 의사결정시스템과 자기주도적 문제해결을<span class="br"></span>학습강화로 서비스 불만을 해소와 개인의 역량을 향상합니다.</p>
							<div class="img-box">
								<div class="ib-wrap">
									<i class="ib-1"></i>
									<i class="ib-2"></i>
									<i class="ib-3"></i>
									<i class="ib-4"></i>
									<i class="ib-5"></i>
								</div>
							</div>
						</div>
						<i class="bg-box"></i>
					</div>
					<div class="ms-cont ms-4">
						<div class="txt">
							<h3>공감아이티는<br /><b>바르고 선한 시너지</b></h3>
							<p>공감만의 혁신적이고 전문적인 서비스를 통해<br />더 큰 만족과 가치를 선사하여 새로운 비지니스 혁신을 이룹니다.</p>
							<div class="img-box">
								<div class="ib-wrap">
									<i class="ib-1"></i>
									<i class="ib-2"></i>
									<i class="ib-3"></i>
									<i class="ib-4"></i>
									<i class="ib-5"></i>
								</div>
							</div>
						</div>
						<i class="bg-box"></i>
					</div>
				</div>
			</section>
			<section class="section">
				<div class="contentArea first">
					<div class="ca-cont">
						<div class="txt">
								<h3>
									<span class="ani-txt"><span>데이터의 가치를 보전하고<br />활용할 수 있는</span></span>
									<span class="ani-txt"><span><b>데이터 거버넌스 사업</b></span></span>
								</h3>
								<p>
									<span class="ani-txt"><span>시스템 구성부터 관리까지 사용의 편의성을 고려한</span></span>
									<span class="ani-txt"><span>데이터 거버넌스 서비스 제공합니다.</span></span>
								</p>
								<div class="btn-wrap"> <a href="/mobile/bigdata.do" class="btn-arrow" ><span>자세히보기</span></a> </div>								
						</div>
                        <div class="img"> <img src="/resources/mobile/images/2022/cs-img-1.jpg" alt="관련이미지" /> </div>
					</div>
                </div>
            </section>
            <section class="section">
				<div class="contentArea second">
					<div class="ca-cont">
						<div class="txt">
								<h3>
									<span class="ani-txt"><span>성공적인 비즈니스 모델을<br />약속하는</span></span>
									<span class="ani-txt"><span><b>플랫폼 사업</b></span></span>
								</h3>
								<p>
									<span class="ani-txt"><span>고객의 가치창출 및 비즈니스 확장을 위한</span></span>
									<span class="ani-txt"><span>자동화 플랫폼 서비스를 제공합니다.</span></span>
								</p>
								<div class="btn-wrap"> <a href="/mobile/platform.do" class="btn-arrow" ><span>자세히보기</span></a> </div>								
						</div>
                        <div class="img"> <img src="/resources/mobile/images/2022/cs-img-2.jpg" alt="관련이미지" /> </div>
					</div>
                </div>
            </section>
            <section class="section">
				<div class="contentArea third">
					<div class="ca-cont">
						<div class="txt">
								<h3>
									<span class="ani-txt"><span>사용자 친화적 WEB기반<br />서비스를 지향하는</span></span>
									<span class="ani-txt"><span><b>GIS 솔루션</b></span></span>
								</h3>
								<p>
									<span class="ani-txt"><span>공감아이티의 수 많은 현장 중신 노하우를 바탕으로</span></span>
									<span class="ani-txt"><span>사용자 맞춤 GIS 솔루션을 제공합니다.</span></span>
								</p>
								<div class="btn-wrap"> <a href="/mobile/gis.do" class="btn-arrow" ><span>자세히보기</span></a> </div>								
						</div>
                        <div class="img"> <img src="/resources/mobile/images/2022/cs-img-3.jpg" alt="관련이미지" /> </div>
					</div>
                </div>
            </section>
			<section class="section">
				<div class="mainNews">
					<div class="mn-wrap">
						<div class="tit">
							<h3>
								<span class="ani-txt"><span>공감아이티</span></span>
								<span class="ani-txt"><span><b>소식</b></span></span>
							</h3>
							<div class="btn-wrap"> <a href="/mobile/board/list/notice.do" class="btn-arrow" ><span>자세히보기</span></a> </div>
						</div>
						<div class="cont">
							<c:forEach var="Post" items="${recentPost}">
								<a href="/mobile/board/${Post.boardIdx}.do" class="boxHover">
									<span class="division">News</span>
									<span class="title-text">${Post.title}</span>
									<span class="sub-text">${Post.content}</span>
									<span class="date">${Post.createdAt}</span>
								</a>
							</c:forEach>
						</div>
					</div>
					<div class="bg">
						<div class="bg-wrap">
							<i class="bg-1"></i>
							<i class="bg-2"></i>
						</div>
					</div>
				</div>

			</section>
			<section class="section fp-auto-height" style=" z-index: 3;">
				<footer id="footer">
					<%@ include file="/WEB-INF/jsp/egovframework/example/fragment/mobile/mobile-footer.jsp" %>
				</footer>
			</section>
		</div>
	</div>
 </body>
</html>
