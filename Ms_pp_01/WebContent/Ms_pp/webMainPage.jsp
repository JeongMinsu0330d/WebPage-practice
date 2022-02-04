<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
    	
     	
    	%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MM_pp</title>


<!--제이쿼리-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<!--폰트 어썸-->

<!--구글폰트-->


<!--외부 라이브러리 css / js-->
<!-- 풀페이지 -->

<!--로컬 라이브러리 css / js-->
<link rel="stylesheet" href="../css/ms_pp_mainCss.css">






</head>
<body>


<!--body-->
<div class="con">
<!-- 헤더정보 jsp:inclued로 정보 불러올 예정--> 
  <header class="header_topBar_box">
    <div class="titleWrap">
      <a href="#"><span class="title">MM_PP</span></a>
    </div>
 
    <div class="menuWrap">
      
      <div class="menu-dept1">
          <ul class="menu_value menuList">
            <li><a href="#">메뉴 1</a></li>
            <li><a href="#">메뉴 2</a></li>
            <li><a href="#">메뉴 3</a></li>
            <li><a href="#">메뉴 4</a></li>
          </ul>
      </div>
      
    </div>
    <div class="otherWrap">
     <%
     if( session.getAttribute("user_id") != null){
    	%>
    	 <div class = "loginBox"><a href="./logout.jsp"> 로그아웃 </a> </div>
    	
    	 <%
     }else{
    	%>
		<div class="loginBox"><a href="./loginForm.jsp">[로그인]</a> </div>
 		
    	<%  
     }
     %>
            <div class="searchBox"></div>
    
    </div>
  </header>
  <!-- 헤더정보 -->
  
  	<!--  메인 컨텐츠 <issuebox , newsBox , boardBox> -->
  <div class="mainSession con">
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  </div>
  
  
  
  
  
  
  
  
  
  
  
</div>


</body>
</html>