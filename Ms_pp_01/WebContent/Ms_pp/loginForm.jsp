<%@ page import="membership.memberDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   <span style = "color:red; font-size: 1.2em;">
		<%=request.getAttribute("LoginErrMsg") == null ? "" : request.getAttribute("LoginErrMsg")%>
	</span>

    
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="../css/loginForm.css">
<meta charset="UTF-8">
<title>MM_로그인_page</title>

</head>
<body>

<div class="titleWrap"> <a href="./webMainPage.jsp" class="title"><span class="title">MM_PP</span></a>
  
</div>

<div class="loginFormWrap">
  <form action="./loginProcess.jsp" method="post" >
    아이디 <br>
    <input type="text" name="user_id"><p>
    비밀번호<br>
    <input type="password" name="user_pwd">
    <br><input class="loginBtn" type="submit" value="로그인">
    <a href="./joinForm.jsp">[회원가입]</a>
   </form>
</div>


</body>
</html>