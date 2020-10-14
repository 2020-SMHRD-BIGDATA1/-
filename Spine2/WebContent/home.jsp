<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="com.model.MemDTO"%>
<!DOCTYPE html>
<html>
<head>
<title>"당신의 척추를 보호하세요"</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
	<style type="text/css">
		#backtest {
			position:absolute;
			width:100%;
		}
	</style>
</head>
<body class="landing is-preload">
	<%
		MemDTO info = (MemDTO) session.getAttribute("info");
	String loginfail = (String) session.getAttribute("loginfail");
	%>
	<!-- Page Wrapper -->
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header" class="alt">
			<h1>
				<a href="home.jsp">BONEKEEPER</a>
			</h1>
			<h1 id="title">
				<%
					if (info == null) {
				%>
				<%
					} else {
				%>
				<%=info.getId()%>님 환영합니다.
				<%
					}
				%>

			</h1>
			<nav id="nav">
				<ul>
					<li class="special"><a href="#menu" class="menuToggle"><span>Menu</span></a>
						<div id="menu">
							<ul>
								<li><a href="home.jsp">Home</a></li>
								<li><a href="null.jsp">Null</a></li>
								<li><a href="report.jsp">Report</a></li>
								<li><a href="#">Sign Up</a></li>
								<li><a href="#">Log In</a></li>
							</ul>
						</div></li>
				</ul>
			</nav>
		</header>

		<!-- Banner -->
		<section id="banner">
			
			<div id ="backtest">
				<video muted autoplay loop>
					<source src="videos/background_video.mp4" type="video/mp4">
					<strong>Your browser does not support the video tag.</strong>
				</video>
			</div>
			<div class="inner">
				<h2 style="color: tomato">BONEKEEPER</h2>
				<p>
					Do you want to have a healthy working life?<br /> Please protect
					your spine!<br />
				</p>
				<ul class="actions special">
					<li><a href="#" class="button primary" onclick="log()">START</a></li>
				</ul>
			</div>
			<a href="#one" class="more scrolly">PROGRAM GUIDE</a>
		
		</section>
		<!-- One -->
		<section id="one" class="wrapper style1 special">
			<div class="inner">
				<header class="major">
					<h2>
						Arcu aliquet vel lobortis ata nisl<br /> eget augue amet aliquet
						nisl cep donec
					</h2>
					<p>
						Aliquam ut ex ut augue consectetur interdum. Donec amet imperdiet
						eleifend<br /> fringilla tincidunt. Nullam dui leo Aenean mi
						ligula, rhoncus ullamcorper.
					</p>
				</header>
				<ul class="icons major">
					<li><span class="icon fa-gem major style1"><span
							class="label">Lorem</span></span></li>
					<li><span class="icon fa-heart major style2"><span
							class="label">Ipsum</span></span></li>
					<li><span class="icon solid fa-code major style3"><span
							class="label">Dolor</span></span></li>
				</ul>
			</div>
		</section>

		<!-- Footer -->
		<footer id="footer">
			<ul class="icons">
				<li><a href="#" class="icon brands fa-twitter"><span
						class="label">Twitter</span></a></li>
				<li><a href="#" class="icon brands fa-facebook-f"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon brands fa-instagram"><span
						class="label">Instagram</span></a></li>
				<li><a href="#" class="icon brands fa-dribbble"><span
						class="label">Dribbble</span></a></li>
				<li><a href="#" class="icon solid fa-envelope"><span
						class="label">Email</span></a></li>
			</ul>
			<ul class="copyright">
				<li>&copy; Untitled</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
			</ul>
		</footer>
	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<script>
		function log() {
			/* window.close("main.jsp") */
			window
					.open(
							"login.jsp",
							"로그인",
							"width=500px, height=400px,top=400px,left=700px,toolbar=no,status=no,menubar=no,resizable=yes, location=no,scrollbars=no")

		}
		function start() {
			window.close("login.jsp")
			window.open("joinService.jsp", "교정프로그램",
					"width=1440px, height=800px,top=120px,left=250px")
		}
	</script>
</body>
</html>