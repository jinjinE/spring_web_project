<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file = "../include/member_header.jsp" %>
<title>Insert title here</title>
<script>
$(function(){
	$('#btnLogout').click(function(){
		location.href ="${path}/login/logout";
	})
})
</script>
</head>
<body>
<%@ include file = "../include/member_menu.jsp" %>
<c:if test="${msg=='성공'}">
<div>${sessionScope.userName}(${sessionScope.userId})님 환영합니다.</div>
<input type = "button" value = "로그아웃" id = "btnLogout">
</c:if>
</body>
</html>