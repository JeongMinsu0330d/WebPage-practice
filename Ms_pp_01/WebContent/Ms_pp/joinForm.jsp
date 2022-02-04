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
    <form action="./joinProcess.jsp" method="post">
      Name<br><input type="text" name="uName"><br>
      
      ID<br><input type="text" name="uId">
      <input type="button" name ="deduplicatton" class="dBtn" value="중복 확인" onclick="Deduplication(uId)"> <br>
     
      Password<br><input type="password" name="uPwd"><br>
      
      checked-password<br>
      <input type="password" name="uPwd2"><br>
      <br><br>
      
      <input class = "joinBtn"type="submit" value="join">
      
    </form>
    
    <script>
    // 중복확인 기능 추가 
    function(Deduplication(id){
    	
    	
    });
    </script>
	
  </div>
</div>



</body>
</html>