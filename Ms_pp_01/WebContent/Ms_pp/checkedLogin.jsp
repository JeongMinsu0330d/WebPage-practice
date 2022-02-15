<%@ page import= "utils.JSFunction" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <%
    	if(session.getAttribute("user_id") == null){
    		
    		JSFunction.alertLocation("로그인해주세요","loginForm.jsp",out);
    		return;
    	}
    
    %>