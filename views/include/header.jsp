<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>mobilia</title>
<link rel="stylesheet" type="text/css" href="./css/main.css">
<link rel="stylesheet" type="text/css" href="./css/member/myshop.css">
<link rel="stylesheet" type="text/css" href="./css/list.css">
<script src="./js/jquery.js"></script>
<script src="./js/header.js"></script>
</head>
<body>
	<div id="wrap">
	<%-------------------------------------- 헤더 영역 --------------------------------------%>
		<header class="header"> 
	<%-------------------------------------- 로그인쪽 메뉴 ------------------------------------%>
			<div id="login"> 
				<a href="#">Login</a> <a href="join.net">Join</a> <a href="#">Cart</a> <a
					href="myshop.net">Myshop</a> <a href="#">Community</a>
			</div>
			<%-------------------------------------- 로고 ------------------------------------%>
			<div id="logo">
				<a href="main.net"><img src="./images/main/main_logo.png" alt="main_logo"></a>
			</div>
			<%-------------------------------------- sns쪽 메뉴 -------------------------------%>
			<div id="sns"> 
				<a href="#" id="face">
					<img src="./images/main/facebook_off.png" width="30" height="30"
					onmouseover="this.src='./images/main/facebook_on.png'"
					onmouseout="this.src='./images/main/facebook_off.png'"></a> 
				<a href="https://instagram.com/mobilia2023_03?igshid=YmMyMTA2M2Y=" id="instar">
					<img src="./images/main/instargram_off.png" width="31" height="31"
					onmouseover="this.src='./images/main/instargram_on.png'"
					onmouseout="this.src='./images/main/instargram_off.png'"></a> 
				<a href="https://blog.naver.com/mobilia2023" id="naver">
					<img src="./images/main/naver_off.png" width="30" height="30"
					onmouseover="this.src='./images/main/naver_on.png'"
					onmouseout="this.src='./images/main/naver_off.png'"></a>
				<a href="#" id="kakao">
					<img src="./images/main/kakao_off.png" width="30" height="30" 
					onmouseover="this.src='./images/main/kakao_on.png'"
					onmouseout="this.src='./images/main/kakao_off.png'"></a>
				<input type="text" id="search_text">
				<input type="button" id="search_btn">
			</div>
			<div class="clear"></div>
			<%-------------------------------------- 메인 메뉴 --------------------------------%>
			<nav>	
				<ul class="menu">
					<%------------------------- 전체 메뉴 ---------------------------%>
					<li>
						<button class="all_menu">〓</button>
						<div id="all_menu_div">
							<ul id="info_ul">

								<li ><p id="info">All Category</p></li>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
							</ul>
							<ul>
								<li><a href="list_bed.net?c=bed&state=single">Single</a></li>
								<li><a href="list_bed.net?c=bed&state=super single">Super Single</a></li>
								<li><a href="list_bed.net?c=bed&state=double">Double</a></li>
								<li><a href="list_bed.net?c=bed&state=queen">Queen</a></li>
								<li><a href="list_bed.net?c=bed&state=king">King</a></li>
							</ul>
							<ul>
								<li><a href="list_sofa.net?c=sofa&state=1인용 소파">1인용 소파</a></li>
								<li><a href="list_sofa.net?c=sofa&state=2~3인용 소파">2~3인용 소파</a></li>
								<li><a href="list_sofa.net?c=sofa&state=카우치형 소파">카우치형 소파</a></li>
								<li><a href="list_sofa.net?c=sofa&state=리클라이너 소파">리클라이너 소파</a></li>
							</ul>
							<ul>
								<li><a href="list_table.net?c=table&state=주방용 테이블">주방용 테이블</a></li>
								<li><a href="list_table.net?c=table&state=사무용 테이블">사무용 테이블</a></li>
								<li><a href="list_table.net?c=table&state=거실용 테이블">거실용 테이블</a></li>
								<li><a href="list_table.net?c=table&state=H형 책상">H형 책상</a></li>
								<li><a href="list_table.net?c=table&state=좌식 책상">좌식 책상</a></li>
							</ul>
							<ul>
								<li><a href="list_chair.net?c=chair&state=식탁 의자">식탁 의자</a></li>
								<li><a href="list_chair.net?c=chair&state=책상 의자">책상 의자</a></li>
								<li><a href="list_chair.net?c=chair&state=서재/사무용 의자">서재/사무용 의자</a></li>
								<li><a href="list_chair.net?c=chair&state=침대형 의자">침대형 의자</a></li>
								<li><a href="list_chair.net?c=chair&state=게이밍 체어">게이밍 체어</a></li>
							</ul>
							<ul>
								<li><a href="list_cabinet.net?c=cabinet&state=옷장">옷장</a></li>
								<li><a href="list_cabinet.net?c=cabinet&state=드레스룸">드레스룸</a></li>
								<li><a href="list_cabinet.net?c=cabinet&state=수납장">수납장</a></li>
								<li><a href="list_cabinet.net?c=cabinet&state=붙박이장">붙박이장</a></li>
								<li><a href="list_cabinet.net?c=cabinet&state=신발장">신발장</a></li>
							</ul>
							<ul>
								<li><a href="#">menu 01</a></li>
								<li><a href="#">menu 02</a></li>
								<li><a href="#">menu 03</a></li>
								<li><a href="#">menu 04</a></li>
								<li><a href="#">menu 05</a></li>
							</ul>
							<button type="button" id="all_menu_close">X</button>
						</div>
					</li>
					<%-------------------------- 상단 메뉴--------------------------%>
					<li><a href="list_bed.net?c=bed&state=all">Bed</a>
						<ul class="sub_menu">
							<li><a href="list_bed.net?c=bed&state=single">Single</a></li>
							<li><a href="list_bed.net?c=bed&state=super single">Super Single</a></li>
							<li><a href="list_bed.net?c=bed&state=double">Double</a></li>
							<li><a href="list_bed.net?c=bed&state=queen">Queen</a></li>
							<li><a href="list_bed.net?c=bed&state=king">King</a></li>
						</ul>
					</li>
					<li><a href="list_sofa.net?c=sofa&state=all">Sofa</a>
						<ul class="sub_menu">
							<li><a href="list_sofa.net?c=sofa&state=1인용 소파">1인용 소파</a></li>
							<li><a href="list_sofa.net?c=sofa&state=2~3인용 소파">2~3인용 소파</a></li>
							<li><a href="list_sofa.net?c=sofa&state=카우치형 소파">카우치형 소파</a></li>
							<li><a href="list_sofa.net?c=sofa&state=리클라이너 소파">리클라이너 소파</a></li>
						</ul>
					</li>
					<li><a href="list_table.net?c=table&state=all">Table</a>
						<ul class="sub_menu">
							<li><a href="list_table.net?c=table&state=주방용 테이블">주방용 테이블</a></li>
							<li><a href="list_table.net?c=table&state=사무용 테이블">사무용 테이블</a></li>
							<li><a href="list_table.net?c=table&state=거실용 테이블">거실용 테이블</a></li>
							<li><a href="list_table.net?c=table&state=H형 책상">H형 책상</a></li>
							<li><a href="list_table.net?c=table&state=좌식 책상">좌식 책상</a></li>
						</ul>
					</li>
					<li><a href="list_chair.net?c=chair&state=all">Chair</a>
						<ul class="sub_menu">
							<li><a href="list_chair.net?c=chair&state=식탁 의자">식탁 의자</a></li>
							<li><a href="list_chair.net?c=chair&state=책상 의자">책상 의자</a></li>
							<li><a href="list_chair.net?c=chair&state=서재/사무용 의자">서재/사무용 의자</a></li>
							<li><a href="list_chair.net?c=chair&state=침대형 의자">침대형 의자</a></li>
							<li><a href="list_chair.net?c=chair&state=게이밍 체어">게이밍 체어</a></li>
						</ul>
					</li>
					<li><a href="list_cabinet.net?c=cabinet&state=all">Cabinet</a>
						<ul class="sub_menu">
							<li><a href="list_cabinet.net?c=cabinet&state=옷장">옷장</a></li>
							<li><a href="list_cabinet.net?c=cabinet&state=드레스룸">드레스룸</a></li>
							<li><a href="list_cabinet.net?c=cabinet&state=수납장">수납장</a></li>
							<li><a href="list_cabinet.net?c=cabinet&state=붙박이장">붙박이장</a></li>
							<li><a href="list_cabinet.net?c=cabinet&state=신발장">신발장</a></li>
						</ul>
					</li>
					<li><a href="#">About us</a>
						<ul class="sub_menu">
							<li><a href="#">menu 01</a>
							<li><a href="#">menu 02</a>
							<li><a href="#">menu 03</a>
							<li><a href="#">menu 04</a>
							<li><a href="#">menu 05</a>
						</ul>
					</li>
				</ul>
			</nav>
			<div class="clear"></div>
		</header>
	</div>