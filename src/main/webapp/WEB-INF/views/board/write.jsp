<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file = "../include/board_header.jsp" %>
<%@ include file = "../include/sessionCheck.jsp" %>
<script>
	$(function(){
		
		$("#btnSave").click(function(){
			//var title = document.form1.title.value(); 자바스트립트 일때
			var title = $("#title").val();
			var content = $("#content").val();
			//var writer = $("#writer").val();
			if(title==""){
				alert("제목입력하세요");
				document.form1.title.focus();
				return;
			}
			if(content==""){
				alert("내용입력하세요");
				document.form1.content.focus();
				return;
			}
			/* if(writer==""){
				alert("작성자입력하세요");
				document.form1.writer.focus();
				return;
			} */
			document.form1.submit(); //서버 전송
		});
	});
</script>
</head>
<body>
<%@ include file = "../include/board_menu.jsp" %>

<form name = "form1" method="post" action = "${path}/board/insert">
	- 제목 : <input type = "text" name = "title" id = "title" size = "80" placeholder="제목을 입력하세요"><br>
	<div>
	- 내용 : <textarea name = "content" id = "content" rows = "4" cols = "80" placeholder="내용을 입력하세요"></textarea>
	</div>
	<!-- <div>
		작성자 이름 : <input type = "text" name = "writer" id = "writer" placeholder ="이름을 입력하세요">
	</div> -->
	<div>
		<input type = "button" value = "작성 완료" id = "btnSave">
		<input type = "reset" value = "작성 취소">
	</div>

</form>

</body>
</html>