<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 연습 (CL은 아는데, EL은 누구냐?)</title>
</head>
<body>

	${10+10}<br>
	${99.9}<br>
	${"Hello World!"}<br>
	${1>2}<br>
	${(1>2) || (3>1)}<br>
	${(1>2) ? 1:2}<br> <!-- 이렇게 쓰는 조건문 기억나냐? 참이면 : 앞의 놈, 거짓이면 : 뒤의 놈 -->
	
	<hr>	
	<%= 1>2 %>


</body>
</html>

























