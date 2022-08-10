<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>게시판 목록 리스트</h1>
 	<table border=1>
 		<tr>
 			<td>게시판 번호</td><td>제목</td><td>내용</td>
 		</tr>
 		<!-- for문 시작 -->
 		<c:forEach items="${list}" var="boardlist">
		<tr>
 			<td>${boardlist.bno}</td>
 			<td><a href="/board/boarddetail?bno=${boardlist.bno}">${boardlist.title}</a></td>
 			<td>${boardlist.content}</td>
 		</tr>
 		</c:forEach>
 		<!-- for문 끝 --> 			
 	</table>
</body>
</html>