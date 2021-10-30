<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<title>Alpha by HTML5 UP</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body class="landing is-preload">
	<%
		MemberVO vo = (MemberVO)session.getAttribute("member");
		//�α����� ���� ��쿡�� vo = > null
	%>


	<div id="page-wrapper">

			<!-- Header -->
				<header id="header" class="alt">
					<h1><a href="Main.jsp">��������</a> by HTML5 UP</h1>
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

			<!-- Banner -->
				<section id="banner">
					<h2>��������</h2>
					<p>�������� ����� ��Ρ����縦 �Բ� �ϴ� ������ ź������ ���ø����̼� ������������</p>
					<ul class="actions special">												
						<li><a href="#" class="button">Learn More</a></li>
					</ul>
				</section>

			<!-- Main -->
				<section id="main" class="container">

					<section class="box special">
						<header class="major">
							<h2>�������� ��ȭ�� ����
							<br />
							������ ��ΰ� ��õ�ؾ��մϴ�.</h2>							
						</header>
						<span class="image featured"><img src="images/pic01.jpg" alt=""/></span>
					</section>

					<section class="box special features">
						<div class="features-row">
							<h2>���ø����̼� ���</h2>
							<section>
								<span><img src="images/image03.jpg" style=width:80px height:80px alt=""/></span>
								<h3>��������&Ÿ����</h3>
								<p>��ġ ���񽺸� �̿��Ͽ�</p>
							</section>
							<section>
								<span><img src="images/image02.jpg" style=width:80px height:80px alt=""/></span>
								<h3>��å����</h3>
								<p>���� �ֺ� ��å����Ʈ</p>
							</section>
						</div>
						<div class="features-row">
							<section>
								<span><img src="images/image04.jpg" style=width:80px height:80px alt=""/></span>
								<h3>�������</h3>
								<p>���� ����� ����� ��ȸ ���� ����� ���� ���</p>
							</section>
							<section>
								<span><img src="images/image05.jpg" style=width:80px height:80px alt=""/></span>
								<h3>��������</h3>
								<p>1365 �ڿ��������� ����� �ùε��� ���ټ� ��ȭ</p>
							</section>
						</div>
					</section>

					<div class="row">
						<div class="col-6 col-12-narrower">

							<section class="box special">
								<span class="image featured"><img src="images/walk.jpg" alt="" /></span>
								<ul>
									<h3>�������ٴ� �ȱ�</h3>
									<p>����</p>
								</ul>
								
								</section>

						</div>
						<div class="col-6 col-12-narrower">

							<section class="box special">
								<span class="image featured"><img src="images/bike.jpg" alt="" /></span>
								<ul>
									<h3>�ǰ��� ������ ����</h3>
									<p>������ �̿��� ��Ȱȭ�� ���� �ùΰǰ� ���� ����</p>
								</ul>																
							</section>

						</div>
						<div class="col-6 col-12-narrower">

							<section class="box special">
								<span class="image featured"><img src="images/co2.jpg" alt="" /></span>
								<ul>
									<h3>������ �������� ����</h3>
									<p>������ ������� �д���� ������ CO2 �߻� ���ҽ���</p>
								</ul>																	
							</section>

						</div>
						<div class="col-6 col-12-narrower">

							<section class="box special">
								<span class="image featured"><img src="images/green.jpg" alt="" /></span>
								<ul>
									<h3>��� ���� ���� ����</h3>
									<p>���� ������ ����ź�� ������塱 ���� ������������ ����</p>
								</ul>									
							</section>

						</div>
					</div>

				</section>

			<!-- CTA -->
				<section id="cta">

					<h2>CONTACT US</h2>
					<p><img src="images/image01.jpg" style=width:35px height:35px alt="" />010 1234 5678</p>

					

				</section>

			<!-- Footer -->
			
				
				
				
			
			

		</div>
		
		<div class="sc-jrsJWt dJdFwe" align="center">
			<img class="logo" src="images/mark1.jpg" style=width:140px height:40px alt=""/>
			<div>
				<div class="sc-kEqXSa bAVzgZ">��ȣ��</div>
				<div class="sc-iqAclL jibPFy">��������</div>
			</div>
			<div class="sc-iqAclL jibPFy">���ֱ����� ���� �۾Ϸ� 60</div>
			<div>
				<div class="sc-kEqXSa bAVzgZ">��ǥ�ڸ�</div>
				<div class="sc-iqAclL jibPFy">������</div>
			</div>
			<div>
				<div class="sc-kEqXSa bAVzgZ">����ڵ�Ϲ�ȣ</div>
				<div class="sc-iqAclL jibPFy">123-45-67890</div>
			</div>
			<div>
				<div class="sc-kEqXSa bAVzgZ">Email</div>
				<div class="sc-iqAclL jibPFy">000000@naver.com</div>
			</div>
			<div>
				<div class="sc-kEqXSa bAVzgZ">Ư�������ȣ</div>
				<div class="sc-iqAclL jibPFy">10-2021-1028</div>
			</div>
			<div>
				<a class="category" href="https://www.naver.com" target="_blank">�������� �̿���</a>
				<a class="category" href="https://www.naver.com" target="_blank">��������ó����ħ</a>
				<a class="category" href="https://www.naver.com" target="_blank">��ġ��ݼ���</a>
				<a class="category" href="https://www.naver.com" target="_blank">�̿���</a>
			</div>		
			<div class="icons">
				<a href="https://www.instagram.com/" target="_blank">
				<img class="insta" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACMAAAAiCAYAAADVhWD8AAAAAXNSR0IArs4c6QAAADhlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAAqACAAQAAAABAAAAI6ADAAQAAAABAAAAIgAAAACmFEgtAAAEoklEQVRYCb1YTUiUQRieXddEJZVaQRRUQiG9GCXVSaOkkizKv1N3i6A6JAjRuW5BEHWoTh3KPzJDLbDEiwVGCaWQEthBArXcg7a6/vQ8k+8y+zXf7rdiDXw7M++87zvPPPPO3/pUEqm3tzcYDodPw6QO3x6fzxfc2NjYjTwd+S/k88jn0PbV7/f3rq2tPW9ubv7htQufF8WOjo4j6KgNuie86Js6APcK9ZtNTU1DptxWjgums7PzEIxu4TtiM05SNgT9tsbGxndudq5gurq6zq2vrz8BIzvcjLcgX4a/8w0NDZ02W79NCEYugd6ubQbCrtLgtx3+r9j6/YsZxMdVgLhtU95m2UVM2X3TZwwYTE0NpuYlwMQwVlRUpEpKSlROTo5pm7A8MzOjpqam1Ozs7F+6YCiSkpJypr6+fkAao2Da29tLAOI9vixpTE1NVVVVVUmDEHvJp6en1ejoqFSjOQCFAOggAH2hMCAtAPHABEJ5dXW1ys7OVpFIRI2NjamFhQUVCoXEJG6em5ur+JWVlSkyKz5MI/SXjZm4A9lJyvV0YHoOo6HaVKQDAdLf3684Oq9A6GdlZUVNTk6q4eFh7ZbTnJGRYXYh5eOYlQOsaDBAxw0tJpWWluo6GeGokkkcSE1Njf4YLxwIk/h0+AIPvhuUBXp6enZiFLUOBc0KZQxCW+Io2akEtXRK4Iw1Jsnpw9S1+Kvt6+vLCgDIKSBz3dhsrFRUVOjVZTrNz89X5eXlOra4gmgnq8jmw7Rl/0tLS0cDKJw1GxKVKysr9SipR/rZIRkoKChQwWBQsV3adMHjD1bWSa6mvR719eog3UwMTBk562SDzHD1kDlOTSJGaCcJpOzzA1GeCBLlAsRtIxsfH9crjkxx2pJMeX4g8rytZmZmav8ctVuSNtF107PI88hM2NLw30XEwX3mu9eeFxcXtWq8KZA20fXqmziSAiObF3dTbvXOxACWXVumy6kTp/6dS/sjFGKOAjcD2dgYyDxAzaVNRgTgVnZt4gjg4jyA48B62bGB4unLJUt2CEpWGHUpJxBh0GbvJiOOwOrq6msUlqGUZlPkMnXuF+yQh2BxcXF0WniiE4RTlz7lWLD5pwzBGyosLBz04ymxgvoQhWaSE1oC0mxjGdu34r4yMjKi7ypyBDj1WBcfBOyShrBzR/SpDWauOZU4cibupi5Hv9PEWmccyVSKT1MRrKwhXq5TpsHgpvUJ5aemEinniiDFvA7QIVeK1yQXKwY6E6eWbDoTgDzGXfgz5dGbHti5jEA+DNmfwwcFBiuZIRA5AGmUbJqYmNBnl9MOrHzD1yry6B2YAtz49gPQW6D9cyHZ1BKqeXfxys7c3Jy+pnJqbIwARAT9HAIrH6xgKMSb5gKye6LwD/P4TxXpGG+nFpTvAnmKyLYrZ8AiJFrwqnzo9BkzTWYjAB1DvRuAok8Xs32L5Xn4awKQNzZ7vZpsDfjXYBBvmlKM5AG+dZuOV9mm/SPEY5kbEPpyZcbsqLu7uwL/tdzCqPT7xmxLVAaQAQyqdXP7iKvuCYx4wPtmF5+kGCH/MIr7ZxHaX6Snpz+rq6v7KfaJ8t+mPxfEixOdLQAAAABJRU5ErkJggg==" alt="">
				</a>
				<a href="http://pf.kakao.com/" target="_blank">
				<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACMAAAAiCAYAAADVhWD8AAAAAXNSR0IArs4c6QAAADhlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAAqACAAQAAAABAAAAI6ADAAQAAAABAAAAIgAAAACmFEgtAAAE20lEQVRYCbVYTUyURxie/RD5F2i3/ISEn6KgF2gMZb1ATTXRpNS0/J3gbJomtgdNTBrPeiFNGkw8rF7wUPmLQA9Wom5PrSTahrSXHiRwAZK1sECA3eXH55kw29l15tsPxEm+nZl33p9n3ved95tvfWIfbWJiwr+5ufklRNrwfOzz+fy7u7sfos9Bv4H+Nfow1l45jjOxvb093t3d/Z9XEz4vjENDQ2dh6Dp4L3jh13kA7jHmN7u6ukI63TR2BTM8PByA0C08Z03C+6SFwH+9s7PzuU3OCmZkZOTrnZ2dn+GRozbhA9Cj0NfT0dExbJJ1TER45Fu4d+SQgdBUFvQOQv93JrtveQb58T1A/GhiPmTaNwjZHV1nEhiE5jxC8yvAGD2mC77rGB6KZ2RkXGpvb3+kdCXADA4OHgeIF3iOqcX33QNQBICaAehf2jqiDAJE0CuQ9fV1sbq6KqLRqOBYNdQWkZ2dLXJzc0VhYaHIzMxUS8Ye9goRiZ+weJEM0jMIzxmg/N0ooRFpeHFxUYLQyNZhfn6+KC0tTQdqF4A+RXF8IXMDExY010YQc3NznoFQ2drampiZmRGRSMRNNxzku0EG39jYWEEsFguDYK0n8/Pz6RS6GZNrFRUVoqCgwMiHqMTy8vI+cgDkCzcg3FWanRkNpBK5oXg8nkqWc9pHCnx+BIOvjBx7xHA4LLKysmTsFR8TFy9MmawMH9eZuAq0PtfH1FVeXq7UJPXwzkWeppNJVG3ChOVuGhoaRGNjowS0vLws84ZGeGL6+vpEIBAQVVVVYmBgQEqrOcqF6O3tFdPT02JqakqeQBsYOOUTB4jKNPtJQ3VsqYyGCGByclKMj48nPFFXV5cko09wQuTpIxA2HBSBa4XOoo/LGKYineJl3NzcLGZnZ6Wh+vr6RHh02crKSulB8umNgFDodJIal9Ezm2qW2rN4mRoBMCwMHz1jUs5cwntOtLS0JOWbrRASB+vMgskgaQwLq6pqTNzi4mIZov7+fhEMBuXuCbqkpET09PTIB8c04RWGqLW1VapgEXRpCz6gDyFUn9mYeAL4sLGabmxsiJycHBki0pjE2JUEyTnb0tKSgE4ZPm6oqKhI8jN0Nm9Dx2/Mmb8gbwVDT6j3EF3PtrKyInv+qOOs0xKLGNCblKMeGxDyEwei4CRe4boSNWY+cEfc4UEbvUevujXicLa2tp6CKerGSEA1NTXC7/e7sb21xnzja8BWW5QAQhTBhp84qAUxEENqwa0nGC8eYjgIoLa21vo+SrETampqisv7DHZwFec/7WcIqzFzQDWCS82D1LnitfXwyjby5Qeuy3OLm9bfGD+wCSi6qsj0TnV1tQwbjeuP4vXaA8h93IX/IX/ipgfvXIF3zoBWZVNEMPTGfnPHpg9emcNzTa0n7sAk4MZ3GoD+AFr3+6KSfoceIOKwE4BX/lRq/i+voODj6iUYrqjF99nTjg6EtpI8o4yjKl/G+DYEjG80xXeQngmLlLiMjd9NlTeCIRMAnUM3CkCH+enyGvq6AORZKhDOk8KkM+BfgycodiewkyCeHX1tv+M9+XvIx1M2INRp9YxucHR0tBGXolvYlfy+0dfSjQHkETZ1ba98uLJ7AqM04Br5ARRfwg75h5Hrn0VY/wVv94dtbW1LSj5d/wZX/QpotXa9PAAAAABJRU5ErkJggg==" alt="">
				</a>
			</div>
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