
//boardList
    $(document).ready(function (){
    	
    	var ctg;
    	if(window.location.href.indexOf("notice") != -1){
    		ctg = "NOTICE";
    	} else if (window.location.href.indexOf("news") != -1) {
			ctg = "NEWS";
		} else if (window.location.href.indexOf("activity") != -1) {
			ctg = "ACTIVITY";
		} else {
			ctg = "NOTICE";
		}
        $.ajax({
            url: '/board/api/' + ctg +'.ajax',
            type: 'GET',
            dataType: 'JSON',
            success: function (result) {
                $('.noticeList').empty();
                boardListUp(result)
                paging(result)
                tablinks = document.getElementsByClassName("tablinks");
                for (i = 0; i < tablinks.length; i++) {
                	tablinks[i].className = tablinks[i].className.replace(" active", "");
                	if(tablinks[i].id == ctg){
                		tablinks[i].classList.add("active")
                		$('#support01-wrap h3, #support01-wrap caption').empty();
                		$('#support01-wrap h3').append(tablinks[i].name)
                	}
                }
            }
        })

        $('.tablinks').click(function (){
            var category = this.id;
            tablinks = document.getElementsByClassName("tablinks");
            for (i = 0; i < tablinks.length; i++) {
                tablinks[i].className = tablinks[i].className.replace(" active", "");
            }
            this.classList.add("active")
            $('#support01-wrap h3, #support01-wrap caption').empty();
            $('#support01-wrap h3').append(this.name)
            $('#support01-wrap caption').append(this.name)

            $.ajax({
                url: '/board/api/'+category+'.ajax',
                type: 'GET',
                dataType: 'JSON',
                success: function (result) {
                    $('.noticeList').empty();
                    boardListUp(result)
                    paging(result)
                }
            })
        })

        $('.inner').off('click', '.pn').on('click', '.pn' ,function (){
            var pn = this.classList[2]
            var category = $('.tablinks.active')[0].id
            $.ajax({
                url: '/board/api/'+ category + '/' + pn + '.ajax',
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
                    "<div style='text-align:center;' class='noData'> 등록된 게시글이 없습니다. </div>")
			} else {
				$.each(result.boardList, function (idx, row){
	                $('.noticeList').append(
	                    "<dl>" +
	                    "<dt><a href='/mobile/board/"+row.boardIdx+".do'>" + row.title + "</a></dt>" +
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
