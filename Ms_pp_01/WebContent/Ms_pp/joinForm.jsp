<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="../css/joinForm.css">	

<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<div class="contain">  
  <div class="conTitle"> 
  <a href="./webMainPage.jsp"><span>MM_PP</span></a>
  </div>
  <div class="conInput">
    <form action="./proc/joinProcess.jsp" method="post">
      Name<br><input type="text" name="uName"><br>
      
      ID<br><input type="text" name="uId" id="signUpId">
      <!-- 아이디 중복 체크 기능 추가 : 방법 아직 미정 . ? 방법 1 액션태그(include or forward 이용) ? <js> 이용 -->
    <input type="button" name ="deduplicatton" class="dBtn" value="중복 확인" > <br>
     
  
      Password<br><input type="password" name="uPwd"><br>
      
      checked-password<br>
      <input type="password" name="uPwd2"><br>
      <br><br>
      
      <input class = "joinBtn"type="submit" value="join">
      
    </form>
    
    <script>
    //(22.02.05 jms) v1.0 중복확인 기능 추가 : DB를 연동하여 id가 중복값인지 확인한다.  
    function Deduplication(){
    	
    	var user_id = document.getElementsById("signUpId").value;
    	
    	if(user_id){
    		
    	}
    	
    	
    }
    </script>
	
  </div>
</div>



</body>
</html>