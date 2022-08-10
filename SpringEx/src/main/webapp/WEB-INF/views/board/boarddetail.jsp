<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post">
	<table border=1>
		<tr>
			<td>제목</td>
			<td>
			<input type="text" name="title" value="${detail.title}">
			<input type="hidden" name="bno" value="${detail.bno}">
			</td>
			
			
		</tr>
		<tr>
			<td>내용</td><td><textarea name="content">${detail.content}</textarea></td>
		</tr>
		<tr>
		<td>
		<input type="submit" value="수정" formaction="/board/modify">
		<input type="submit" value="삭제" formaction="/board/remove">
	    </td>
	    </tr>
	    <tr>
	    <td>
	    <input type="text" name="commentwrite" value="${comment.comment}">
	    </td>
	    </tr>
	</table>
	<table>
		<tr>
			<td><input type="text" name="comment" placeholder="댓글 달기"></td>
		    <td><input type="submit" value="댓글쓰기" formaction="/commemt/commentwrite">
		</tr>
	</table>
</form>
</body>
</html>