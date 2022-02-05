<%@page import="membership.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <%
    	String uId = request.getParameter("uId");
    	String uPwd = request.getParameter("uPwd");
    	String uName = request.getParameter("uName");
    
    	String drv = application.getInitParameter("sqlDrive");
    	String url = application.getInitParameter("sqlURL");
    	String user = application.getInitParameter("sqlId");
    	String pass = application.getInitParameter("sqlPwd");
    	// data : webXML에서 가져온 데이터베이스 
    	
    	memberDAO mdao = new memberDAO(drv,url,user,pass);
    	boolean s = mdao.join(uId,uPwd,uName);
    	
    	if(s){
    		%>
    		<script>
    		alert("회원가입 성공");
    		</script>
    <%
    	response.sendRedirect("webMainPage.jsp");
    	}else{
    		%>
    		<script>
    		alert("회원정보 실패")
    		</script>
    		
    		<%
    		
    		    	}
    	
    %>