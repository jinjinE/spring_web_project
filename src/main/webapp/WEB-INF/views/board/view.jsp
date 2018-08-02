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
	
	//listReply(); ==> controller
	listReplyRest("1"); //댓글목록 출력 ==> restcontroller
	
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
	
	$("#btnReply").click(function(){
		var replytext=$("#replytext").val();//내가 입력한 값
		var bno = "${dto.bno}";//글번호
		var secretReply = "n";//비밀댓글 아님
		if($("#secretReply").is(":checked")){
			//is() : ()안에 있는 요소가 조재하느 지 여부 체크
			//checked 존재하면 : true, 아니면 : false
			secretReply = "y";
		}
		var param = "replytext="+replytext+"&bno="+bno+"&secretReply="+secretReply;
		//전달되는 값
		$.ajax({//속성:값으로 전달
			type : "post",//전달타입 : get/post
			url : "${path}/reply/insert",//전달될 URL주소
			data : param,//전달되는 값
			success : function(){//성공적으로 전송되었을때
				alert("댓글 등록되었습니다.");
				listReply("1"); //함수 호출 ==> 댓글 출력
			}
		});
	});	
		
});

//댓글 목록 출력하는 함수
// 1> controller인 경우
function listReply(num){
	$.ajax({
		type : "post",
		url : "${path}/reply/list?bno=${dto.bno}&curPage="+num,
		success:function(result){
			$("#listReply").html(result);
			//alert("성공");
		},//replyList에서 만들어서 result에 저장ㅇ
		error:function() {
			alert("실퍠");
		}
		
	});
	
}
// 2> RestController인경우
function listReply2(num){
	$.ajax({
		type : "post",
		url : "${path}/reply/listJson?bno=${dto.bno}&curPage="+num,
		success:function(result){
			//alert(result);
			/* $("#listReply").html(result); */
			var output = "<table>";
			for(var i in result){
				output+="<tr>"
				output += "<td>"+result[i].userName;
				output += "("+changeDate(result[i].regdate)+")<br>";
				output += result[i].replytext + "</td>";
				output += "</tr>"
			}
			output+="</table>";
			$("#listReply").html(output);
		}
	});//replyList에서 만들어서 result에 저장
}


//** 댓글 목록 => Rest방식 => 댓글출력방법 선택사항
function listReplyRest(num){
	$.ajax({
		type : "post",
		url : "${path}/reply/list?bno=${dto.bno}&curPage="+num,
		success:function(result){
			$("#listReply").html(result);
			//alert("성공");
		}
		
	});
}

function changeDate(date){
	date = new Date(parseInt(date));
	year = date.getFullYear();
	month = date.getMonth();
	day = date.getDate();
	hour = date.getHours();
	minute = date.getMinutes();
	second = date.getSeconds();
	return year+"-"+month+"-"+day+"-"+hour+":"+minute+":"+second;
}

function showReplyModify(rno){
	$.ajax({
		type : "post",
		url : "${path}/reply/detail/"+rno,
		success:function(result){
			$("#modifyReply").html(result);
			$("#modifyReply").css("visibility", "visible");
			//alert("성공");
		}
		
	});
}
</script>
<style>
	#modifyReply{
		width : 500;
		height : 100;
		border : 1px solid gray;
		z-index: 10;
		visibility : hidden;
	}
</style>
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
	<c:if test="${sessionScope.userId!=null}">
		<input type = "button" value = "수정" id = "btnUpdate">
		<input type = "button" value = "삭제" id = "btnDelete">
	</c:if>
	<input type = "button" value = "목록보기" id = "btnList">
	</div>
</form>

<!--댓글 작성 입력공간 -->
<div>
<c:if test="${sessionScope.userId != null}">
	<textarea name = "replytext" id = "replytext" rows="5" cols="80" placeholder="댓글 작성해주세요"></textarea>
<br/>
<!-- 비밀댓글 체크박스 ==> checked : true, non-checked : false -->
<input type = "checkbox" id = "secretReply" name = "secretReply"> 비밀 댓글
<input type = "button" value = "댓글작성" id = "btnReply">
</c:if>
</div>
<!-- 댓글 출력 공간 -->
<div id = "listReply">
</div>

</body>
</html>



