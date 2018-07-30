<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file = "../include/board_header.jsp" %>
<script>
$(function(){
	$("#btnUpdate").click(function(){
		var title = $('#title').val();
		var content = $("#content").val();
		var writer = $("#writer").val();
		if(title==""){
			alert("제목 입력필수");
			document.form1.title.focus();
			return;
		}
		if(content==""){
			alert("내용 입력필수");
			document.form1.content.focus();
			return;
		}
		if(writer==""){
			alert("작성자 입력필수");
			document.form1.writer.focus();
			return;
		}
		document.form1.action = "${path}/board/update?bno=${dto.bno}";
		document.form1.submit();
	});
	
	$("#btnDelete").click(function(){
		if(confirm("삭제하시겠습니까?")){
			document.form1.action = "${path}/board/delete?bno=${dto.bno}";
			document.form1.submit();
		}
	});
	
	$("#btnList").click(function(){
		location.href = "${path}/board/list?curPage=${curPage}&searchOption=${searchOption}&keyword=${keyword}"
	});
});
</script>
</head>
<body>
<%@ include file = "../include/board_menu.jsp" %>
<h2>게시글 상세 보기</h2>
<form name = "form1" method = "post">
	<div>작성일자 : <fmt:formatDate value = "${dto.regdate}" pattern = "yyyy-MM-dd HH:mm:ss"/></div>
	<div>조회수 : ${dto.viewcnt}</div>
	<div>제목 : <input type = "text" name = "title" id = "title" size = "80" value = "${dto.title}"></div>
	<div>작성자 : <input type = "text" name = "writer" id = "writer" value = "${dto.writer}"></div>
	<div>내용 : <textarea name = "content" id = "content" rows = "4" cols = "80">${dto.content}</textarea></div>
	<div>
	<input type = "hidden" name = "bno" value = "${dto.bno}">
	<input type = "button" value = "수정" id = "btnUpdate">
	<input type = "button" value = "삭제" id = "btnDelete">
	<input type = "button" value = "목록보기" id = "btnList">
	</div>
</form>
</body>
</html>