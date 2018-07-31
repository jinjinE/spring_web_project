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
		$("#btnWrite").click(function(){
			location.href = "${path}/board/write";
		});
	});


	//페이지 정보를 체크하여 이용하는 함수정의
	function list(page){
		location.href = "${path}/board/list?curPage="+page+"&searchOption=${map.searchOption}&keyword=${map.keyword}";
	}
</script>
</head>
<body>
<%@ include file = "../include/board_menu.jsp" %>
<h2>게시글 목록 보기</h2>
<form name = "form1" method = "post" action = "${path}/board/list">
	<select name = "searchOption">
		<option value = "all" <c:out value = "${map.searchOption=='all'?'selected':''}"/>>제목+내용+작성자</option>
		<option value = "writer" <c:out value = "${map.searchOption=='writer'?'selected':''}"/>>작성자</option>
		<option value = "content" <c:out value = "${map.searchOption=='content'?'selected':''}"/>>내용</option>
		<option value = "title" <c:out value = "${map.searchOption=='title'?'selected':''}"/>>제목</option>
	</select>
	<input type = "text" name = "keyword" value = "${map.keyword}">
	<input type = "submit" value = "검색">
	<c:if test = "${sessionScore.userId != null}">
		<input type = button value = "글쓰기" id = "idWrite">
	</c:if>
</form>

검색된 갯수는 : ${map.count} 입니다.
<%-- ${list} --%>

<table border = "1" width = "600px">
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>이름</th>
		<th>작성날짜</th>
		<th>조회수</th>
	</tr>
	
	<c:forEach var="row" items ="${map.list}">
		<tr>
			<td>${row.bno}</td>
			<td><a href="${path}/board/view?bno=${row.bno}&curPage=${map.boardPager.curPage}&searchOption=${map.searchOption}&keyword=${map.keyword}">
			${row.title}
			<!-- 댓글갯수 보이게 -->
			<%-- <c:if test="${row.recnt>0}">
				<span style ="color:red;">(${row.recnt})</span>
			</c:if> --%>
			</a></td>
			<td>${row.writer}</td>
			<td><fmt:formatDate value = "${row.regdate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
			<td>${row.viewcnt}</td>
		</tr>
	</c:forEach>
	<!-- 블럭 표시 및 페이지 번호 표시 -->
	 <tr>
		<td colspan = "5">
		<!-- 첫 페이지로 이동하는 링크 -->
		<c:if test = "${map.boardPager.curBlock>1}">
			<a href = "javascript:list('1')">[처음]</a>
		</c:if>
		<!-- 이전 블럭으로 이동 -->
		<c:if test = "${map.boardPager.curBlock>1}">
			<a href = "javascript:list('${map.boardPager.prevPage}')">[이전]</a>
		</c:if>
		<!-- 한 블럭안에서의 페이지 이동 -->
		<c:forEach var = "num" begin = "${map.boardPager.blockBegin}" end = "${map.boardPager.blockEnd}">
		
<%-- 	${num}<br/>
	${map.boardPager.blockBegin}<br/>
	${map.boardPager.blockEnd} --%>
			<c:choose>
				<c:when test="${num==map.boardPager.curPage}">
					<span style = "color:red">${num}</span>
				</c:when>
				<c:otherwise>
					<a href = "javascript:list('${num}')">${num}</a>&nbsp;
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<!-- 다음 블럭 페이지로 이동하는 링크 -->
		<c:if test = "${map.boardPager.curBlock>map.boardPager.totBlock}">
			<a href = "javascript:list('${map.boardPager.nextPage}')">[다음]</a>
		</c:if>
		<!-- 끝 페이지로 이동 -->
		<c:if test = "${map.boardPager.curPage <= map.boardPager.totBlock}">
			<a href = "javascript:list('${map.boardPager.totPage}')">[끝]</a>
		</c:if>
	</tr> 
</table>
<input type = "button" value = "글쓰기" id = "btnWrite">
</body>
</html>