<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
//1> 수정
$(function(){
	$("#btnReplyUpdate").click(function(){
		var detailReplytext = $('#detailReplytext').val();
		$.ajax({
			type : "put",
			url : "${path}/mvc/reply/update/${vo.rno}",
			headers:{
				"Content-Type":"application/json"
			},
			data : JSON.stringify({
				replytext : detailReplytext
			}),
			dataType : "text",
			success : function(result){
				if(result=="success"){
					$("#modifyReply").css("visibility", "hidden");
					listReply("1");
				}
			},
			error:function(request,status,error){
		        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		    }
		});
	});
	//2> 삭제
	$("#btnReplyDelete").click(function(){
		if(confirm("삭제하시겠습니까?")){
			$.ajax({
				type : "delete",
				url : "${path}/mvc/reply/delete/${vo.rno}",
				success : function(result){
					if(result=="success"){
						alert("삭제되었습니다.");
						$("#modifyReply").css("visibility", "hidden");
						listReply("1");
					}
				},
				error:function(request,status,error){
			        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			    }
		    });
		}
	});
	//3> 닫기
	$("#btnReplyClose").click(function(){
		$("#modifyReply").css("visibility", "hidden");
	});
	
});

</script>
</head>
<body>
- 댓글번호  : ${vo.rno}
- 댓글 작성공간 : 
<textarea id = "detailReplytext" row = "4" cols="80">
${vo.replytext}
</textarea>


	<input type = "button" value = "수정" id = "btnReplyUpdate"><br/>
	<input type = "button" value = "삭제" id = "btnReplyDelete"><br/>
<input type = "button" value = "닫기" id = "btnReplyClose"><br/>


</body>
</html>