
//boardDetails
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

    $(document).ready(function (){
        var bIdx = window.location.pathname.split("/")[2]
        $.ajax({
            url : '/board/api/details/' + bIdx,
            type : 'GET',
            dataType: 'JSON',
            success : function (result){
                $.each(result.fileMapList, function (idx, row){
                $('.attachment-download').append(
                    "<a href='/board/api/downLoad.do?idx=" + row.fileIdx + "'>" + row.orgFileName + "</a>"
                	)
            	})
                $('.td-content').empty();
                $('.td-content').append("<div>" + result.content + "</div>")
                $('.td-header h2').empty();
                $('.td-header h2').append("<div>" + result.title + "</div>")
                $('.td-header .info').empty();
                $('.td-header .info').append("<li class=\"num\">"+result.createdAt+"</li>\n" +
                    "<li><b>작성자</b><span class=\"num\">관리자</span></li>");
                $('.board-pagination').empty();
                if(!result.pre){
                	 $('.board-pagination').append("<li class='prev'><span><i class='ico-arrow'></i> 이전글 </span><a href='javascript:;' class='webkitBox'>이전글이 없습니다<span class = 'num' pcVer></span></li>");
                } else{
                $('.board-pagination').append("<li class='prev'><span><i class='ico-arrow'></i> 이전글 </span><a href='/board/" + result.pre.boardIdx + ".do' class='webkitBox'>"
                									+ result.pre.title + "</a><span class = 'num' pcVer>" + result.pre.createdAt + "</span></li>")}
                if(!result.next){
                	$('.board-pagination').append("<li class='next'><span><i class='ico-arrow'></i> 다음글 </span><a href='javascript:;' class='webkitBox'>다음글이 없습니다<span class = 'num' pcVer></span></li>");
                } else{
                	$('.board-pagination').append("<li class='next'><span><i class='ico-arrow'></i> 다음글 </span><a href='/board/" + result.next.boardIdx + ".do' class='webkitBox'>"
                									+ result.next.title + "</a><span class = 'num' pcVer>" + result.next.createdAt + "</span></li>");
                }
                $('#listLink').attr('href', function(){
                	if(result.category_name == 'NOTICE'){
                		return '/board/list/notice.do'
                	} else if(result.category_name == 'NEWS'){
                		return '/board/list/news.do'
                	} else if(result.category_name == 'ACTIVITY'){
                		return '/board/list/activity.do'
                	} else {
                		return '/recruits/board.do'
                	}
                	
                })
            }
        })
    })