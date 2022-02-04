<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 데이터베이스 연결 함  --%>
<%
	Class.forName("com.cj.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/MustHave?severTimezone=UTC";
	String user = "root";
	String password = "";

	String sql = "select * from `member`";
	Connection conn = DriverManager.getConnection(url, user,password);
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	
	while(rs != null){
		
		
	}
	
	
%>




</body>
</html>