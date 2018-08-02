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
				<br/>
				
				<c:if test = "${sessionScope.userId ==row.replyer}">
					<input type = "button" value = "수정" id = "btnModify" onclick = "showReplyModify('${row.rno}')"><br/>
				</c:if>
			</td>
		</tr>
	</c:forEach>
	<tr><td>
				<div id = "modifyReply">
				</div> 
	</td></tr>
	<!-- 페이지처리 -->
 	<tr>
		<td>
			<c:if test= "${replyPager.curBlock>1}">
				<a href = "javascript:listReply('1')">[처음]</a>
			</c:if>
			<c:if test= "${replyPager.curBlock>1}">
				<a href = "javascript:listReply('${replyPager.prevPage}')">[이전]</a>
			</c:if>
			<!-- 현재 선택한 위치 -->
			<c:forEach var = "num" begin = "${replyPager.blockBegin}" end = "${replyPager.blockEnd}">
				<c:choose>
					<c:when test="${num==replyPager.curPage}">
						${num} &nbsp;
					</c:when>
					<c:otherwise>
						<a href = "javascript:listReply('${num}')">${num}</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test= "${replyPager.curBlock<=replyPager.totBlock}">
				<a href = "javascript:listReply('${replyPager.nextPage}')">[다음]</a>
			</c:if>
			<c:if test= "${replyPager.curBlock<=replyPager.totBlock}">
				<a href = "javascript:listReply('${replyPager.totPage}')">[끝]</a>
			</c:if>
		</td>
	</tr>
</table>
</body>
</html>