<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file = "../include/board_header.jsp" %>
</head>
<body>
<table border= "1" width = "500px">
	<c:forEach var = "row" items = "${list}">
		<tr>
			<td>
				${row.userName} (<fmt:formatDate value = "${row.regdate}" pattern="yyyy-MM-dd HH:mm:ss"/>)<br>
				${row.replytext}
			</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>