<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String context = request.getContextPath();
%>
<form action = "<%= context %>/test/articleSubmitted" method = "post">
	<input type = "hidden" name = "parentId" value = "0">
	제목 : <input type = "text" name = "title"><br>
	내용 : <textarea name = "content" cols = "50" rows = "5"></textarea><br/>
	<input type = "submit" value = "전송">
</form>
</body>
</html>