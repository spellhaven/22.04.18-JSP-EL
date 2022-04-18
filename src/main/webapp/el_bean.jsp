<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member1" class = "com.github.spellhaven.MemberInfo"/> 

<jsp:setProperty property = "name" name = "member1" value = "홍길동"/>
<jsp:setProperty property = "id" name = "member1" value = "hong"/>    
<jsp:setProperty property = "pw" name = "member1" value = "12345"/>    
    
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>EL Bean 사용 연습 (src/main/java의 MemberInfo.java와 연결됨. (L3에도 써 있다.)</title>
</head>
<body>

	<!-- 0412 자바빈즈(Ch8) 예제 비슷한 놈을 EL로 만들어 보자. -->


	이름: <jsp:getProperty property="name" name="member1"/>
	아이디: <jsp:getProperty property="id" name="member1"/>
	비밀번호: <jsp:getProperty property="pw" name="member1"/>
	<hr>
	
	<!-- 와 정말 EL은 가독성도 좋고 데단헤~ 이렇게 달러 중괄호만 써도 된다니 ㅋ~-->
	이름: ${member1.name}<br>
	아이디: ${member1.id}<br>
	비밀번호: ${member1.pw}<br>




</body>
</html>