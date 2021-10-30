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
		//로그인을 안한 경우에는 vo = > null
	%>


	<div id="page-wrapper">

			<!-- Header -->
				<header id="header" class="alt">
					<h1><a href="Main.jsp">걸으랑께</a> by HTML5 UP</h1>
					<nav id="nav">
						<ul>
							<li><a href="Main.jsp">Home</a></li>
							<li>
								<a href="#" class="icon solid fa-angle-down">목차</a>
								<ul>
									<li><a href="Join.jsp">회원가입</a></li>
									<li><a href="Walkride.jsp">걸으랑께&타랑께</a></li>									
									<li><a href="Stroll.jsp">산책혀요</a></li>
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
							<li><a href="Login.html" class="button">로그인</a></li>
							<%}else{ %>
							<li><a href="update.jsp">개인정보수정</a></li>
							<li><a href="Logout.jsp">로그아웃</a></li>
							<%} %>							
							
														
						</ul>
					</nav>
				</header>

			<!-- Banner -->
				<section id="banner">
					<h2>걸으랑께</h2>
					<p>광주지역 상생과 기부·봉사를 함께 하는 광주형 탄소절감 어플리케이션 ‘걸으랑께‘</p>
					<ul class="actions special">												
						<li><a href="#" class="button">Learn More</a></li>
					</ul>
				</section>

			<!-- Main -->
				<section id="main" class="container">

					<section class="box special">
						<header class="major">
							<h2>기후위기 완화를 위해
							<br />
							이제는 모두가 실천해야합니다.</h2>							
						</header>
						<span class="image featured"><img src="images/pic01.jpg" alt=""/></span>
					</section>

					<section class="box special features">
						<div class="features-row">
							<h2>애플리케이션 기능</h2>
							<section>
								<span><img src="images/image03.jpg" style=width:80px height:80px alt=""/></span>
								<h3>걸으랑께&타랑께</h3>
								<p>위치 서비스를 이용하여</p>
							</section>
							<section>
								<span><img src="images/image02.jpg" style=width:80px height:80px alt=""/></span>
								<h3>산책혀요</h3>
								<p>동네 주변 산책메이트</p>
							</section>
						</div>
						<div class="features-row">
							<section>
								<span><img src="images/image04.jpg" style=width:80px height:80px alt=""/></span>
								<h3>기부혀요</h3>
								<p>광주 기업과 재단의 사회 공헌 사업을 위한 기부</p>
							</section>
							<section>
								<span><img src="images/image05.jpg" style=width:80px height:80px alt=""/></span>
								<h3>봉사혀요</h3>
								<p>1365 자원봉사포털 연계로 시민들의 접근성 강화</p>
							</section>
						</div>
					</section>

					<div class="row">
						<div class="col-6 col-12-narrower">

							<section class="box special">
								<span class="image featured"><img src="images/walk.jpg" alt="" /></span>
								<ul>
									<h3>차량보다는 걷기</h3>
									<p>걷자</p>
								</ul>
								
								</section>

						</div>
						<div class="col-6 col-12-narrower">

							<section class="box special">
								<span class="image featured"><img src="images/bike.jpg" alt="" /></span>
								<ul>
									<h3>건강한 자전거 도시</h3>
									<p>자전거 이용의 생활화를 통한 시민건강 증진 실현</p>
								</ul>																
							</section>

						</div>
						<div class="col-6 col-12-narrower">

							<section class="box special">
								<span class="image featured"><img src="images/co2.jpg" alt="" /></span>
								<ul>
									<h3>깨끗한 자전거의 도시</h3>
									<p>자전거 교통수단 분담률을 향상시켜 CO2 발생 감소실현</p>
								</ul>																	
							</section>

						</div>
						<div class="col-6 col-12-narrower">

							<section class="box special">
								<span class="image featured"><img src="images/green.jpg" alt="" /></span>
								<ul>
									<h3>녹색 성장 선도 도시</h3>
									<p>국가 비전인 “저탄소 녹색성장” 실현 실현실현실현 실현</p>
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
				<div class="sc-kEqXSa bAVzgZ">상호명</div>
				<div class="sc-iqAclL jibPFy">걸으랑께</div>
			</div>
			<div class="sc-iqAclL jibPFy">광주광역시 남구 송암로 60</div>
			<div>
				<div class="sc-kEqXSa bAVzgZ">대표자명</div>
				<div class="sc-iqAclL jibPFy">유가영</div>
			</div>
			<div>
				<div class="sc-kEqXSa bAVzgZ">사업자등록번호</div>
				<div class="sc-iqAclL jibPFy">123-45-67890</div>
			</div>
			<div>
				<div class="sc-kEqXSa bAVzgZ">Email</div>
				<div class="sc-iqAclL jibPFy">000000@naver.com</div>
			</div>
			<div>
				<div class="sc-kEqXSa bAVzgZ">특허출원번호</div>
				<div class="sc-iqAclL jibPFy">10-2021-1028</div>
			</div>
			<div>
				<a class="category" href="https://www.naver.com" target="_blank">걸으랑께 이용약관</a>
				<a class="category" href="https://www.naver.com" target="_blank">개인정보처리방침</a>
				<a class="category" href="https://www.naver.com" target="_blank">위치기반서비스</a>
				<a class="category" href="https://www.naver.com" target="_blank">이용약관</a>
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