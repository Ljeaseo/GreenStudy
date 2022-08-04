<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>게시판 이용하기</h1>
<table>

    <tr>
        <td colspan=2>
            <input type="text" name="id">
        </td>
    </tr>
    <tr>
        <td colspan=2>
            <input type="password" name="pw">
        </td>    
    </tr>
    <tr>
        <td>
            <a href="ex_boardLoginServer.jsp">로그인</a>
        </td>
        <td>
            <a href="ex_createmember.jsp">회원가입</a>
        </td>
    </tr>   
</table>
</body>
</html>