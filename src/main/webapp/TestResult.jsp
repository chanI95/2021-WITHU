<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<link rel="stylesheet" href="css/TestResult.css"/>
<link rel="stylesheet" href="css/sidebar.css"/>
</head>
<body>
	<!-- --------------------------BEGIN SIDEBAR--------------------------------->
	<div class="sideBar">

		<!-- 사이드 타이틀 -->
		<div class="sideTitle">
			<span><p class="title">
					<a class="href" href="Main.jsp">WITH U</a>
				</p></span>
		</div>

		<!-- D-DAY -->
		<div class="sideDay">
			<h1 class="day">D - 14</h1>
		</div>

		<!-- 프로필 이미지 -->
		<div class="sideImg">
			<div class="img">
				<p class="imgs">
					<img class="profileImg " src="images/Profile_set.jpg" alt="profileimg">
				</p>
			</div>
		</div>

		<!-- 닉네임 -->
		<div class="sideNick">
			<div class="nick">
				<span class="nickName">닉네임</span>
			</div>
		</div>

		<!-- 버튼 모임-->
		<div class="sideBtn1">
			<button type="submit" class="logout">
				<a class="href" href="Logout.jsp">로그아웃</a>
			</button>
		</div>
		<div class="sideBtn2">
			<button type="submit" class="member">
				<a class="href" href="Update.jsp">회원정보수정</a>
			</button>
		</div>
		<div class="sideBtn3">
			<button type="submit" class="dday">
				<a class="href" href="SetDday.jsp">D-Day 수정</a>
			</button>
		</div>
	</div>
	<!-- --------------------------END SIDEBAR--------------------------------->

	<div class="main-container">
		<!-- --------------------------BEGIN HEADER-------------------------------->
		<header id="my_header">
			<div class="headerimg">
				<img class="headimg" id="headerImg" src="images/logo2.jpg" />
			</div>
			<nav id="header-menu">
				<ul>
					<li class="nav-item"><a href="MyPage.jsp" data-toggle="tab"
						id="nonsee">글 보기</a></li>
					<li class="nav-item"><a href="#" data-toggle="tab" id="see">자가진단
							결과</a></li>
					<li class="nav-item"><a href="Like.jsp" data-toggle="tab" id="nonsee">필수템
							찜 목록</a></li>
				</ul>
			</nav>
		</header>
		<!-- ---------------------------END HEADER--------------------------------->

		<!-- ---------------------------BEGIN CONTENT------------------------------->
		<div class="testResult">
			<table frame=void>
				<tr>
					<td colspan="3"><h2>
							<br>
							<br>닉네임 님의 우울증 자가진단 검사 결과는 ?
						</h2></td>
				</tr>
				<tr>
					<td rowspan="3" align="center">
						<div class="chart" style="width: 450px; height: 300px;">
							<!--차트가 그려질 부분-->
							<canvas id="myChart"></canvas>
						</div>
					</td>
					<td class="number">1회차</td>
					<td class="score"><strong>점수</strong></td>
				</tr>
				<tr>
					<td class="number">2회차</td>
					<td class="score"><strong>점수</strong></td>
				</tr>
				<tr>
					<td class="number">3회차</td>
					<td class="score"><strong>점수</strong></td>
				</tr>

				<tr>
					<td colspan="3"><span id="comment"> 우울증 자가진단 검사의 결과 점수가 높을수록
					<br>우울증을 느끼는 정도가 심하다는 의미예요.
					<br> 우울감이 지속되고, 나아지지 않는다면 지역 상담사를 통해 상담을 받아보는 것도 좋은 방법이랍니다.
					</td>
				</tr>
			</table>
		</div>
		<!-- ---------------------------END CONTENT--------------------------------->
	</div>


	<script type="text/javascript">
		var context = document.getElementById('myChart').getContext('2d');
		var myChart = new Chart(context, {
			type : 'bar', // 차트의 형태
			data : { // 차트에 들어갈 데이터
				labels : [
				//x 축
				'1회차', '2회차', '3회차' ],
				datasets : [ { //데이터
					data : [ 80, 50, 10 //x축 label에 대응되는 데이터 값
					],
					backgroundColor : [
					//색상
					'rgba(255, 99, 132, 0.2)', 'rgba(54, 162, 235, 0.2)',
							'rgba(255, 206, 86, 0.2)' ],
					borderColor : [
					//경계선 색상
					'rgba(255, 99, 132, 1)', 'rgba(54, 162, 235, 1)',
							'rgba(255, 206, 86, 1)' ],
					borderWidth : 1
				//경계선 굵기
				} ]
			},
			options : {
				legend : {
					display : false
				},
				scales : {
					yAxes : [ {
						ticks : {
							beginAtZero : true
						}
					} ]
				}
			}
		});
	</script>
</body>
</html>