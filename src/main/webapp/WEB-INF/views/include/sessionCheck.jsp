<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file = "../include/board_header.jsp" %>
<c:if test="${sessionScope.userId==null}">
<script>
	alert("로그인 후에 사용해주세요");
	location.href = "${path}/login/login";
</script>
</c:if>
</head>
<body>

</body>
</html>