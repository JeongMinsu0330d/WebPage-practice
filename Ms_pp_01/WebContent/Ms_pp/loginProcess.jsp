<%@page import="membership.memberDTO"%>
<%@page import="membership.memberDAO"%>
<%@page import="utils.databaseUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int falseCount = 0; // 로그인 실패횟수
	String user_id = request.getParameter("user_id");
	String user_pwd = request.getParameter("user_pwd");
	// 이게 loginForm에서 받아온 데이터 값
	
	String drv = application.getInitParameter("sqlDrive");
	String url = application.getInitParameter("sqlURL");
	String user = application.getInitParameter("sqlId");
	String pass = application.getInitParameter("sqlPwd");
	// data : webXML에서 가져온 데이터베이스 
	
	memberDAO mdao = new memberDAO(drv,url,user,pass);
	memberDTO mdto = mdao.doLogin(user_id, user_pwd);
	mdao.close();
	//
	
	if(mdto.getUser_id().equals(user_id)){
		
		session.setAttribute("user_id", (String)mdto.getUser_id());
		session.setAttribute("user_pwd", (String)mdto.getUser_pwd());
		session.setAttribute("user_name", mdto.getUser_name());
		
		response.sendRedirect("webMainPage.jsp");
	
	}else{
		%>
		<script>
			alert("로그인 실패");
		</script>		
		<%
		request.setAttribute("LoginErrMsg","로그인 오류입니다."+falseCount);
		request.getRequestDispatcher("loginForm.jsp").forward(request, response);
	}
	
	
	
%>
<!-- err 해결 일지  -->
<!-- err : 500 일 경우 코드 오류 확인 그리고 import 선언 확인 잘못된 선언은 오류가 되기도 함.<import 에러 해켤 >-->
<!-- 에러 없는 기능 장애는 쿼리문에서 발생할 수 있다 쿼리문의 오류는 에러없이 기능 장애를 가져온다!!<로그인 기능 오류 해걀> -->