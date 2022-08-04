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
<%
	// loginForm.jsp에 있는 데이터 수집
	String id=request.getParameter("id"); // request 요청
	String pw=request.getParameter("pw");
	
 	
	System.out.println(id);
	System.out.println(pw);

	//DB연결
	Connection conn=null;
	PreparedStatement pstmt=null;
    ResultSet rs=null;
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/mysql");
		conn = ds.getConnection();
		
		
		//System.out.println("DB연결 성공");
		//Login을 하기위한 sql문장
		//prepareStatement : java -> DB에 쿼리를 보내기 위해 사용하는 객체
		pstmt=conn.prepareStatement("select * from exmember where id=? and password=?"); 
		//첫번째 물음표에는 사용자가 입력한 id값(String id=request.getParameter("id"); )을 설정
		pstmt.setString(1,id);
		//두번쨰 물음표에는 사용자가 입력한 password값(String pw=request.getParameter("pw");)을 설정
		pstmt.setString(2,pw);
		
		
		//위 SQL문장을 실행(workdench : ctrl+enter)
		// executeQuery() :  select (select 된 결과를 ResultSet라는 공간에 저장해서 반환)
		// executeUpdate() :  insert,update,delete ()
		rs=pstmt.executeQuery();
        
		
		
		if(rs.next()){ 
			//resultSet 에 데이터가 있으면 Login을 해라.
			// session영역에 id값을 유지시킴으로 로그인 된채로 서비스를 이용
			session.setAttribute("id",id);
			
			out.println("<script>");
			out.println("location.href='ex_boardwrite.jsp'");
			out.println("</script>");
		}else{ 
			
			out.println("<script>");
			out.println("location.href='ex_createmember.jsp'");
			out.println("</script>");
		}
	
	
	
	}catch(Exception e){
		//System.out.println("DB연결 실패");
		e.printStackTrace();
	}finally{
		conn.close();   // 메모리 관리 사용을 끝내면 닫아주기.
		rs.close();
		pstmt.close();
	}
%>

</body>
</html>