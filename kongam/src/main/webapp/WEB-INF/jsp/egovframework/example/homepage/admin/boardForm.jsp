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
    <link rel="stylesheet" href="/resources/css/admin/style.css">
    <link rel="stylesheet" href="/resources/css/2022/common.css">
    <link rel="stylesheet" href="/resources/css/2022/layout.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.min.js"></script>
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
                        <li class="active"><a href="/admin/board/list.do">공지사항관리</a></li>
                        <li><a href="/admin/contactus/list.do">CONTACT US정보</a></li>
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
                <!-- <button class="tablinks active" onClick="openCity(event, 'support01-wrap')">공지사항</button>
                <button class="tablinks" onClick="openCity(event, 'support02-wrap')">뉴스&보도자료</button>
                <button class="tablinks" onClick="openCity(event, 'support03-wrap')">문의하기</button> -->
            </div>
        </div>
        <section class="sub-contents" id="support-area">
            <div class="content">
                <!-- 게시판 + 등록 : S -->
                <form id="board-form">
                    <table class="table-type-01">
                        <caption>신청인정보 표</caption>
                        <colgroup>
                            <col style="width:15%;" />
                            <col style="width:85%;" />
                        </colgroup>
                        <tbody>
                        <tr>
                            <th><i class="is-valid"></i>카테고리</th>
                            <td>
                                <div class="tBox">
                                    <label for="Input-0" class="hidden">카테고리</label>
                                    <%-- <select id="Input-0" name="category">
                                        <option th:each="category : ${categories}"
                                                th:value="${category.get('category_idx')}"
                                                th:text="${category.get('category')}">
                                        </option>
                                    </select> --%>
                                    <select name="category">
                                    	<option value="">선택해주세요.</option> 
                                    	<c:forEach var="category" items="${categories}"> 
                                    		<option value="${category.category_idx}"}>${category.category_name}</option> 
                                    	</c:forEach> 
                                    </select>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th><i class="is-valid"></i>제목</th>
                            <td>
                                <div class="tBox">
                                    <label for="Input-1" class="hidden">제목</label>
                                    <input type="text" id="Input-1" name="title" autocomplete="off"  />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>내용</th>
                            <td>
                                <div class="taBox">
                                    <label for="content" class="hidden">내용</label>
                                    <textarea id="content" name="content" cols="20" rows="20"></textarea>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>첨부파일</th>
                            <td>
                                <div class="file-input">
                                    <input id="addAttachment" name="attachment" type="file" multiple="multiple" />
                                    <label for="addAttachment">첨부파일</label>
                                </div>
                                <ul class="file-add">
                                    <!-- <li>제품설명서.hwp<button class="fileDelete" type="button" title="삭제"><i class="ico-close"></i>삭제</button></li>
                                    <li>청렴서약서.hwp<button class="fileDelete" type="button" title="삭제"><i class="ico-close"></i>삭제</button></li> -->
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th><i class="is-valid"></i>사용여부</th>
                            <td>
                                <ul class="rBoxWrap">
                                    <li class="rBox"> <input type="radio" id="used" name="sc-radio" /> <label for="used"><i class="ico-radio"></i><span>사용</span></label> </li>
                                    <li class="rBox"> <input type="radio" id="unused" name="sc-radio" /> <label for="unused"><i class="ico-radio"></i><span>미사용</span></label> </li>
                                </ul>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="linkArea center">
                        <button type="button" class="grey boardSubmit">저장</button>
                        <button type="button" class="line-lightGrey" onclick="location.href='/admin/board/list.do'">취소</button>
                    </div>
                </form>
                <!-- 게시판 + 등록 : E  -->
            </div>
        </section>
    </div>
</body>
<script type="text/javascript" src="../../resources/ckeditor/ckeditor.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="//cdn.ckeditor.com/4.13.0/standard/ckeditor.js"></script>
<script>
$(document).ready(function (){
	var attfileList = []
	$('#board-form').validate({
		rules:{
			content : "required"
		},
		messages:{
			content : "필수값 입니다."
		},
		submitHandler: function(){
			
		}
	})
	//
	$(document).on("click", ".fileDelete", function(){
		this.parentElement.remove();
		var fileNum = this.classList[1]
		const dataTransfer = new DataTransfer();
		var files = $('#addAttachment')[0].files;
		console.log(files)
		var fileArray = Array.from(files);
		fileArray.splice(fileNum,1);
		fileArray.forEach(file => { dataTransfer.items.add(file); });
		$('#addAttachment')[0].files = dataTransfer.files;
		console.log($('#addAttachment')[0].files)
		
		$('.file-add').empty();
		var file;
        for (var i = 0; i < $('#addAttachment')[0].files.length; i++) {
            file = $('#addAttachment')[0].files[i];
            $('.file-add').append(
                "<li id='" 
                + file.name + 
                "' class='attfile'>"
                +file.name+
                "<button class=\"fileDelete "+ i +"\" type=\"button\" title=\"삭제\"><i class=\"ico-close\"></i>삭제</button></li>"
            )
        }
	})
	//
	$(function() {
        CKEDITOR.replace('content', {
            filebrowserUploadUrl: '/board/api/imgUpload.ajax',
            fontSize_defaultLabel: "12",
            language: "ko"
        });
    })
    
    $("input[type=file]").change(function () {
        var fileInput = document.getElementById("addAttachment");
        var files = fileInput.files;
        var file;
        $('.file-add').empty();
        for (var i = 0; i < files.length; i++) {
            file = files[i];
            $('.file-add').append(
                "<li id='" 
                + file.name + 
                "' class='attfile'>"
                +file.name+
                "<button class=\"fileDelete "+ i +"\" type=\"button\" title=\"삭제\"><i class=\"ico-close\"></i>삭제</button></li>"
            )
        }
    });
	
	/*  */
	$('.boardSubmit').click(function () {
    var fileL = document.querySelector('#addAttachment').files
    let objects = {};
    let formDataAr = $('#board-form').serializeArray();
    let len = formDataAr.length;
    for (let i = 0; i < len; i++) {
        objects[formDataAr[i].name] = formDataAr[i].value;
    }
    var content = CKEDITOR.instances['content'].getData();
    objects.content = content

    const convertBase64 = (file) => {
        return new Promise((resolve, reject) => {
            const fileReader = new FileReader();
            fileReader.readAsDataURL(file);
            fileReader.onload = () => {
                resolve(fileReader.result);
            };
            fileReader.onerror = (error) => {
                reject(error);
            };
        });
    };

    let fileArr = [];
    async function sendData(){
        for (let file of fileL){
            let fileJson = {};
            fileJson.fileName = file.name
            fileJson.fileSize = file.size
            await uploadImage(file, fileJson);
        }
        objects.fileList = fileArr
        $.ajax({
            url: '/board/api.ajax',
            type: 'POST',
            data: JSON.stringify(objects),
            contentType: "application/json;charset=UTF-8",
            success: function (){
                alert("success")
                window.location.href = '/admin/board/list.do';
            }
        })
    }
    async function uploadImage(e, fileJson){
        const base64 = await convertBase64(e);
        await pushJson(base64, fileJson);
    }
    async function pushJson(base64, fileJson){
        fileJson.fileData = base64
        fileArr.push(fileJson)
    }
    sendData();
})
})

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
</script>
</html>