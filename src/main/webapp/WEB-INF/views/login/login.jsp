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
	$('#btnLogin').click(function(){
		var userId = $("#userId").val();
		var userPw = $("#userPw").val();
		if(userId==""){
			alert("아이디 입력");
			$("#userId").focus();
			return;
		}
		if(userPw==""){
			alert("비번 입력");
			$("#userPw").focus();
			return;
		}
		document.form1.action="${path}/login/loginCheck";
		document.form1.submit();
	})
})
</script>
    <link href="../resources/css/login_signup.css" rel="stylesheet" type = "text/css">
</head>
<body>


<section class="container">
		    <article class="half">
			        <h1>Azure</h1>
			        <div class="tabs">
				            <span class="tab signin active">Sign in</span>
			        </div>
			        <div class="content">
				            <div class="signin-cont cont">
					                <form name = "form1" method = "post"  class="signUp" id="signupForm">
						                    <input type="text" name="userId" id="userId" class="inpt" required="required" placeholder="Your Id">
						                    <label for="userId">Your Id</label>
						                    <input type="password" name="userPw" id="userPw" class="inpt" required="required" placeholder="Your password">
                						    <label for="userPw">Your password</label>
						                    <div class="submit-wrap">
							                        <input type="submit" value="Sign in" class="submit">
						                    </div>
        					        </form>
    				        </div>
			        </div>
		    </article>
		    <div class="half bg"></div>
	</section>






<!-- <form name = "form1" method = "post"  class="signUp" id="signupForm">
 <h1 class="signUpTitle">로그인</h1>
<table border="1" width="300px">
	<tr>
		<td>아이디 : </td>
		<td><input type = "text" name = "userId" id = "userId" class = "signUpInput"></td>
	</tr>
	<tr>
		<td>비밀번호 : </td>
		<td><input type = "password" name = "userPw" id = "userPw" class = "signUpInput"></td>
	</tr>
	<tr>
		<td colspan = "2">
			<input type = "button" value = "로그인" id = "btnLogin" class = "signUpButton">
			<input type = "reset" value = "취소" class = "signUpButton">
		</td>
	</tr>
</table>
</form> -->

<c:if test = "${msg=='실패'}">
<div>아이디와 비밀번호가 일치하지 않음</div>
</c:if>
<c:if test = "${msg=='logout'}">
<div>로그아웃 되었습니다.</div>
</c:if>
</body>
</html>