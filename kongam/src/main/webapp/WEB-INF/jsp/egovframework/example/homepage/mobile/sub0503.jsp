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
                <button class="tablinks" onClick="location.href='/mobile/recruits/index.do'">인재상</button>
                <button class="tablinks" onClick="location.href='/mobile/recruits/benefits.do'">복리후생</button>
                <button class="tablinks active" onClick="location.href='/mobile/recruits/board.do'">채용안내/공고</button>
            </div>
        </div>
        <section class="sub-contents" id="recruit-area">
            <div class="content">                
                <div id="recruit03-wrap" class="tabcontent_tab" style="display: block;">
                    <div class="noticeList">
                        <dl>
                            <dt> <a href="게시판-상세.html">웹디자이너 모집(ui/ux/웹어플리케이션)</a> </dt>
                            <dd>
                                <span>2022-05-27</span> <!-- 날짜 -->
                                <span>45</span> <!-- 조회수 -->
                            </dd>
                        </dl>
                        <dl>
                            <dt> <a href="게시판-상세.html">웹디자이너 모집(ui/ux/웹어플리케이션)</a> </dt>
                            <dd>
                                <span>2022-05-27</span> <!-- 날짜 -->
                                <span>45</span> <!-- 조회수 -->
                            </dd>
                        </dl>
                        <dl>
                            <dt> <a href="게시판-상세.html">웹디자이너 모집(ui/ux/웹어플리케이션)</a> </dt>
                            <dd>
                                <span>2022-05-27</span> <!-- 날짜 -->
                                <span>45</span> <!-- 조회수 -->
                            </dd>
                        </dl>
                        <dl>
                            <dt> <a href="게시판-상세.html">웹디자이너 모집(ui/ux/웹어플리케이션)</a> </dt>
                            <dd>
                                <span>2022-05-27</span> <!-- 날짜 -->
                                <span>45</span> <!-- 조회수 -->
                            </dd>
                        </dl>
                    </div>
                    <div class="board_pager">
                        <span class="inner">
                            <a href="#" class="pageFirst"><img src="/resources/mobile/images/btn_page_first.gif" alt="첫페이지"></a>
                            <a href="#" class="pagePrev"><img src="/resources/mobile/images/btn_page_pre.gif" alt="이전페이지"></a>
                            <a href="#" class="pageNow"><strong>1</strong></a>
                            <a href="#" class="pageNext"><img src="/resources/mobile/images/btn_page_next.gif" alt="다음페이지"></a>
                            <a href="#" class="pageLast"><img src="/resources/mobile/images/btn_page_last.gif" alt="마지막페이지"></a>
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
<script>
$(document).ready(function () {
	$.ajax({
        url: '/board/api/JOB_POSTING.ajax',
        type: 'GET',
        dataType: 'JSON',
        success: function (result) {
            $('.noticeList').empty();
            boardListUp(result)
            paging(result)
        }
    })
    
    $('.inner').off('click', '.pn').on('click', '.pn' ,function (){
        var pn = this.classList[2]
        $.ajax({
            url: '/board/api/JOB_POSTING/' + pn + '.ajax',
            type: 'GET',
            dataType: 'JSON',
            cache: false,
            success: function (result){
                $('.noticeList').empty();
                boardListUp(result)
                paging(result)
            }
        })
    })

    function boardListUp(result){
		if(result.boardList.length == 0){
			$('.noticeList').append(
                "<div style=\"text-align:center;\" class=\"noData\">등록된 게시글이 없습니다.</div>")
		} else {
			$.each(result.boardList, function (idx, row){
                $('.noticeList').append(
                    "<dl>" +
                    "<dt><a href='/mobile/recruits/"+row.boardIdx+".do'>" + row.title + "</a></dt>" +
                    "<dd>" +
                    "<span>" + row.createdAt + "</span>" +
                    "<span>" + row.hit + "</span>" +
                    "</dd>" +
                    "</dl>"
                )
            })
		}
    }
    function paging(result){
        var first = 1;
        var preId = result.paging.pageNum -1;
        var nextId = result.paging.pageNum +1;
        var last = result.paging.totalPages;
        $('.inner').empty();
        $('.inner').append("<a id='firstPn' href='#' class='pn firstP "+first+"'><img src='/resources/images/btn_page_first.gif' alt='처음페이지'></a>")
        $('.inner').append("<a id='prePn' href='#' class='pn preP "+preId+"'><img src='/resources/images/btn_page_pre.gif' alt='이전페이지'></a>")
        for (var i=result.paging.startPage; i<=result.paging.lastPage; i++){
            $('.inner').append("<a href='#' class='pn nowP "+i+"'>"+i+"</a>")
        }
        $('.inner').append("<a id='nextPn' href='#' class='pn nextP "+nextId+"'><img src='/resources/images/btn_page_next.gif' alt='다음페이지'></a>")
        $('.inner').append("<a id='lastPn' href='#' class='pn lastP "+last+"'><img src='/resources/images/btn_page_last.gif' alt='마지막페이지'></a>")

        var firtsPn = document.getElementsByClassName('firstP')[0]
        var prePn = document.getElementsByClassName('preP')[0]
        var nowPn = document.getElementsByClassName('nowP')
        var nextPn = document.getElementsByClassName('nextP')[0]
        var lastPn = document.getElementsByClassName('lastP')[0]
        if (result.paging.pageNum === 1){
            firtsPn.classList.add('disabled')
            prePn.classList.add('disabled')
        }
        for (var i = 0; i<nowPn.length; i++ ){
            if (nowPn[i].classList.contains(result.paging.pageNum)){
                nowPn[i].classList.add('disabled')
            }
        }
        if (result.paging.pageNum === result.paging.totalPages || result.paging.totalPages === 0){
            nextPn.classList.add('disabled');
            lastPn.classList.add('disabled');
        }
    }
})
</script>
</html>