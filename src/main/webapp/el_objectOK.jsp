<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오천 원도 안 받았는데 el_object.jsp 받아 주는 놈</title>
</head>
<body>

	<!-- 간단한 EL 문법 연습! 기본적으로 ${value}라고만 치면 됩니다!
	(꼭 $와 { 사이를 한 칸 띄우지 말고 잘 붙여 쓰자. 그것이 '규칙'이니까.) -->

		
	<% 
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
	%>
	
	<!-- 원래 jsp에선 이 방법으로 했었지. 스크립틀릿에서 request.getParameter(Values) -> Expression으로 찍어내기 -->
	아이디: <%= id %> <br>
	비밀번호: <%= pw %> <br>

	<hr>
	
	<!-- EL 방식으로 써 보자 크킄~ (이렇게 넘어온 파라미터를 받을 땐 내장객체 param이 필요하다 ㅋ.)
	놀랍게도, L11~18을 다 지워도 이 밑의 두 줄만 있어도 된다. 한 번 해 보세요 param이 알아서 받아 줍니다~~~ 헐~~~ 너무 편헤~~~-->	
	아이디: ${param.id } <br>
	비밀번호: ${param.pw } <br>
	
	<hr>
	
	<!-- session 객체를 참조(reference)하는 내장객체는 sessionScope다 -->
	세션값: ${sessionScope.name }<br>
	
	<hr>
	
	context 초기화 파라미터 web.xml <br>
	${initParam.first_name} <br>
	${initParam.first_id} <br>
	
	
	
	
	
	
	
	


</body>
</html>