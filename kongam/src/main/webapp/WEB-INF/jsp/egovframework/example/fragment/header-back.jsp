<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="pcContainer">
    <h1> <a href="/index.do" title="홈으로"> 홈으로</a> </h1>
    <ul class="gnb" id="gnb">
        <li><a href="/companies/index.do">회사소개</a>
            <!--ul>
                <li><a href="sub01.html#greeting-wrap">인사말</a></li>
                <li><a href="sub01.html#history-wrap">연혁</a></li>
                <li><a href="sub01.html#organization-wrap">조직도</a></li>
                <li><a href="sub01.html#location-wrap">오시는길</a></li>
            </ul-->
            <ul class="sub">
                <li><a href="/companies/index.do">인사말</a></li>
                <li><a href="/companies/history.do">연혁</a></li>
                <li><a href="/companies/org.do">조직도</a></li>
                <li><a href="/companies/location.do">오시는길</a></li>
            </ul>
        </li>
        <li><a href="/solutions/intous.do">솔루션</a>
            <ul class="sub">
                <li><a href="/solutions/intous.do">INTOUS 서비스란?</a></li>
                <li><a href="/solutions/intous/qm-mm.do">INTOUS QM/MM</a></li>
                <li><a href="/solutions/intous/esb.do">INTOUS ESB</a></li>
                <li><a href="/solutions/intous/etl.do">INTOUS ETL</a></li>
            </ul>
        </li>
        <li><a href="/business/ai.do">비즈니스</a>
            <ul class="sub">
                <li><a href="/business/ai.do">AI분석활용서비스</a></li>
                <li><a href="/business/ar.do">위치기반 서비스</a></li>
                <li><a href="/business/sm-si.do">SI/SM 서비스</a></li>
            </ul>
        </li>
        <li><a href="/board/list.do">고객지원</a>
            <ul class="sub">
                <li><a href="/board/list/notice.do">공지사항</a></li>
                <li><a href="/board/list/news.do">뉴스&보도자료</a></li>
            </ul>
        </li>
        <li><a href="/recruits/index.do">채용안내</a>
            <ul class="sub">
                <li><a href="/recruits/index.do">인사제도</a></li>
                <li><a href="/recruits/benefits.do">복리후생</a></li>
                <li><a href="/recruits/board.do">채용안내/공고</a></li>
            </ul>
        </li>
    </ul>
    <button type="button" title="문의하기" class="openCU">문의하기</button>
</div>