<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var = "path" value = "${pageContext.request.contextPath}"/>

	<div>
		<a href = "${path}/member/list">회원목록보기</a>
		<a href = "${path}/member/write">회원등록보기</a>
	</div>
	<div>
		<a href = "${path}/board/list">게시판 목록보기</a>
		<a href = "${path}/board/write">게시판 글쓰기</a>
		
	</div>
	<hr>
</body>
</html>