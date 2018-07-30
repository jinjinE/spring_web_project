<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file = "../include/member_header.jsp" %>
<script src = "https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
$(function(){
		$("#btnUpdate").click(function(){
			if(confirm("수정하시겠습니까?")){
				document.form1.action="${path}/member/update";
				document.form1.submit();
			}
		});
		
		$("#btnDelete").click(function(){
			if(confirm("삭제하시겠습니까?")){
				document.form1.action="${path}/member/delete";
				document.form1.submit();
			}
		});
});
</script>

</head>
<body>
<%@ include file = "../include/member_menu.jsp" %>
<h2>회원 상세 정보 보기</h2>
<form name = "form1">
	- 아이디 : <input type = "text" name = "userId" value = "${dto.userId}" readonly><br/>
	- 비밀번호 : <input type = "password" name = "userPw"><br/>
	- 이름 : <input type = "text" name = "userName" value = "${dto.userName}"><br/>
	- 이메일 : <input type = "text" name = "userEmail" value = "${dto.userEmail}"><br/>
	- 회원가입날짜 : <fmt:formatDate value = "${dto.userRegdate}" pattern = "yyyy-MM-dd HH:mm:ss"/><br/>
	- 회원정보 수정날짜 : <fmt:formatDate value = "${dto.userUpdatedate}" pattern = "yyyy-MM-dd HH:mm:ss"/><br/>
	<input type = "button" value = "수정" id = "btnUpdate">
	<input type = "button" value = "삭제" id = "btnDelete">
	<div>${message}</div>
</form>
</body>
</html>