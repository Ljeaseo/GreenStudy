<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/upload.js"></script>
</head>
<body>
<h1>게시판 글쓰기 화면</h1>
<form action="/board/write" method="post">
제목<input type="text" name="title">
내용<input type="text" name="content">
<input type="button" id="uploadBtn" value="글쓰기">
<input type="file" name="uploadFile" multiple><br>

<input type="text" name="fileName" value="${}"><br>
<input type="text" name="uuid" value="${}"><br>
<input type="text" name="uploadPath" value="${}"><br>
<input type="text" name="imageType" value="${}"><br>

	<div id="uploadResult">
		<ul>
			
		</ul>
	</div>
</form>
</body>
</html>