<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/main.css" />
<style>
	#idpw {
		margin-left:20%;
		margin-top:13%
	}

	#c {
		width: 300px;
	}
	#loginjoin {
		margin-left:20%;
	}
</style>
</head>

<body>
	<form action="loginservice" method="post">
		<div id="idpw">
			ID<input id="c" type="text" name="ID"><br> 
			PW<input id="c" type="password" name="PW"><br> 
		</div>
		<div id="loginjoin">
			<span><input type="submit" value="로그인"></span>
			<span style="position:relative; margin-right: 0px"><a href="join.jsp" class="button special">회원 가입</a></span>
		</div>
	</form>

</body>
</html>