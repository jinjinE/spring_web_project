<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file = "../include/member_header.jsp" %>
    <link href="../resources/css/login_signup.css" rel="stylesheet" type = "text/css">
</head>
<body>
<%@ include file = "../include/member_menu.jsp" %>


<section class="container">
		    <article class="half">
			        <h1>Azure</h1>
			        <div class="tabs">
				            <span class="tab signin active">Sign up</span>
			        </div>
			        <div class="content">
				         
    				        <div class="signin-cont cont">
                <form action="${path}/member/insert" name = "form1" method="post" enctype="multipart/form-data">
						                    <input type="text" name="userId" id="userId" class="inpt" required="required" placeholder="Your id">
						                    <label for="userId">Your Id</label>
						                    <input type="text" name="userName" id="userName" class="inpt" required="required" placeholder="Your name">
						                    <label for="userName">Your Name</label>
                   							<input type="email" name="userEmail" id="userEmail" class="inpt" required="required" placeholder="Your email">
						                    <label for="userEmail">Your Email</label>
						                    <input type="password" name="userPw" id="userPw" class="inpt" required="required" placeholder="Your password">
                						    <label for="userPw">Your Password</label>
						                    <div class="submit-wrap">
							                        <input type="submit" value="Sign up" class="submit">
							                        <a href="#" class="more">Terms and conditions</a>
						                    </div>
        					        </form>
            </div>
			        </div>
		    </article>
		    <div class="half bg"></div>
	</section>





<%-- <h2>회원등록</h2>
<form name = "form1" action="${path}/member/insert">
	- 아이디 : <input type = "text" name = "userId"/><br>
	- 비밀번호 : <input type = "password" name = "userPw"/><br>
	- 이름 : <input type = "text" name = "userName"/><br>
	- 이메일 : <input type = "email" name = "userEmail"/><br>
	<input type = "submit" value = "입력완료">
	<input type = "reset" value = "입력취소">
</form> --%>
</body>
</html>