<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<title>Contact - Alpha by HTML5 UP</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
	<meta charset="EUC-KR">

</head>
<body class="is-preload">
	<%
		MemberVO vo = (MemberVO)session.getAttribute("member");
		//�α����� ���� ��쿡�� vo = > null
	%>

	<div id="page-wrapper">

			<!-- Header -->
				<header id="header">
					<h1><a href="Main.jsp">ȸ������</a> by HTML5 UP</h1>
					<nav id="nav">
						<ul>
							<li><a href="Main.jsp">Home</a></li>
							<li>
								<a href="#" class="icon solid fa-angle-down">����</a>
								<ul>
									<li><a href="Join.jsp">ȸ������</a></li>
									<li><a href="Walkride.jsp">��������&Ÿ����</a></li>									
									<li><a href="Stroll.jsp">��å����</a></li>
									<li>
										<a href="#">Submenu</a>
										<ul>
											<li><a href="#">Option One</a></li>
											<li><a href="#">Option Two</a></li>
											<li><a href="#">Option Three</a></li>
											<li><a href="#">Option Four</a></li>
										</ul>
									</li>
								</ul>
							</li>
							<%if(vo==null){ %>						
							<li><a href="Login.html" class="button">�α���</a></li>
							<%}else{ %>
							<li><a href="update.jsp">������������</a></li>
							<li><a href="Logout.jsp">�α׾ƿ�</a></li>
							<%} %>							
							
						</ul>
					</nav>
				</header>

			<!-- Main -->
				<section id="main" class="container medium">
					<header>
						<h2>ȸ������</h2>
						<p>�ش� ���� �Է����ּ���.</p>
					</header>
					<div class="box">
						<form method="post" action="JoinService">
							<div class="row gtr-50 gtr-uniform">
								<div class="col-8">
									<input type="text" name="id" id="name" value="" placeholder="ID���Է����ּ���" />
								</div>
								<div class="col-8">
									<input type="password" name="pw" id="pw" value="" placeholder="PW���Է����ּ���" />
								</div>
								<div class="col-8">
									<input type="text" name="nick" id="nick" value="" placeholder="Nick���Է����ּ���" />
								</div>
								<div class="col-12">
									��</label><input type ='checkbox' name="sex" id="man" value="man"  style="display:block"/><label for="man"/>��<input type ='checkbox' name="sex" value="woman" id="woman" style="display:block"/><label for="woman"></label>
								</div>
								<div class="col-8">
									<input type ='text' name="age" list='age' placeholder="Age���������ּ���">
							        <datalist id='age'>
							            <option value="10��"></option>
							            <option value="20��"></option>
							            <option value="30��"></option>
							            <option value="40��"></option>
							            <option value="50��"></option>
							        </datalist>
								</div>																											
								<div class="col-12">
									<ul class="actions special">
										<li><input type="submit" value="ȸ�����ԿϷ�" /></li>
									</ul>
								</div>
							</div>
						</form>
					</div>
				</section>

			<!-- Footer -->
				<footer id="footer">
					<ul class="icons">
						<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
						<li><a href="#" class="icon brands fa-github"><span class="label">Github</span></a></li>
						<li><a href="#" class="icon brands fa-dribbble"><span class="label">Dribbble</span></a></li>
						<li><a href="#" class="icon brands fa-google-plus"><span class="label">Google+</span></a></li>
					</ul>
					<ul class="copyright">
						<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>
				</footer>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

</body>
</html>