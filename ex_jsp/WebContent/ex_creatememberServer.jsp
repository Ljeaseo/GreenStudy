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
<%
    // 사용자가 회원가임폼에서 입력한 값을 각각의 id,pw,addr 변수에 저장
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String name = request.getParameter("name");
    
    //DB연결
    Connection conn=null;
	PreparedStatement pstmt=null;
  
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/mysql");
		conn = ds.getConnection();
		
		
	
		//회원가입을 하기위한 sql문장
		//prepareStatement : java -> DB에 쿼리를 보내기 위해 사용하는 객체
		pstmt=conn.prepareStatement("insert into exmember (id, password, name) values (?,?,?)");
		//첫번째 물음표에는 사용자가 입력한 id값(String id=request.getParameter("id"); )을 설정
		pstmt.setString(1,id);
		//두번쨰 물음표에는 사용자가 입력한 password값(String pw=request.getParameter("pw");)을 설정
		pstmt.setString(2,pw);
		//세번째 물음표에는 사용자가 입력한 address값(String addr=request.getParameter("addr");)을 설정
		pstmt.setString(3,name);
		//위 SQL문장을 실행(workdench : ctrl+enter)
		// insert가 되었으면 1의 값을 result변수에 저장되고, insert가 되지 않았으면 0의 값을 result변수에 저장.
		int result=pstmt.executeUpdate();
		// executeQuery() :  select (select 된 결과를 ResultSet라는 공간에 저장해서 반환)
		// executeUpdate() :  insert,update,delete ()
		
		
	    if(result!=0){
	    //insert가 되었으면 (회원가입이 되었으면) 로그인 화면으로 이동
	    	out.println("<script>");
			out.println("location.href='ex_boardLogin.jsp'");
			out.println("</script>");
	    }else{
	    // 그렇지 않으면 회원가입회원으로 이동
	    	out.println("<script>");
			out.println("location.href='ex_createmember.jsp'");
			out.println("</script>");
	    }
	
	}catch(Exception e){
		//System.out.println("DB연결 실패");
		e.printStackTrace();
	}finally{
		conn.close();   // 메모리 관리 사용을 끝내면 닫아주기.
		pstmt.close();
	}
	%>
</head>
<body>

</body>
</html>