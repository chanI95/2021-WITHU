<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="model.ProfileDTO"%>

<%
   ProfileDTO profile = (ProfileDTO)session.getAttribute("login_profile");
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="css/Update.css" />
<link rel="stylesheet" href="css/sidebar.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<!-- 사이드바 -->
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
					<img class="profileImg" src="images/Profile_set.jpg"
						alt="profileimg">
				</p>
			</div>
		</div>

		<!-- 닉네임 -->
		<div class="sideNick">
			<div class="nick">
				<span class="nickName"><%=profile.getNick() %></span>
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
	<!-- 사이드바 끝 -->

	<!-- 회원정보 수정 시작! -->
	<div class="main-container">
		
			<div class="topblank">
				<br>
			</div>
			<div class="editmember">
				<span class="titlecenter">회원정보 수정</span>
			</div>
			<!-- Title 끝 -->

			<div class="divphoto">
				<div id="image_container">
					<p class="imgcenter">
						<img class="imgsize" src="images/Profile_set.jpg" id="img_section">
					</p>
					<br>
					<button class="browse_btn">
						<i class="far fa-image" id="imgicon"></i> <span class="photo">프로필
							사진 바꾸기</span>
					</button>
					<input class="image_file" type="file" accept="image/*"
						id="real-input" onchange="setThumbnail(event);">
				</div>
				<!-- 프로필 이미지 변경 끝-->
			<form action="UpdateCon" method="post">
				<div class="editform">
					<table class="editTable">
						<tr>
							<td>
								<div class="editNick">
									<div class="inputForm">
										<input type="text" class="nick" name="nick" placeholder="닉네임">
									</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="inputForm">
									<input type="password" class="pw" name="pw" placeholder="비밀번호">
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="inputForm">
									<input type="password" class="pw" placeholder="비밀번호 확인">
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="inputForm">
									<input type="text" class="name" name="name" placeholder="성명">
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="inputForm">
									<input type="tel" class="tel" name="tel" placeholder="전화번호">
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="inputForm">
									<h2>
										<br>추가 정보 입력하기
									</h2>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="inputForm">
									생년월일 <input type="date" name="bir" value="date"
										style="margin-left: 30px;">
								</div>
							</td>
						</tr>

						<tr>
							<td>
								<div class="inputForm">
									<input type="radio" name="gender" value="female">여성 <input
										type="radio" name="gender" value="male"
										style="margin-left: 100px;">남성
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="inputForm">
									<input type="text" class="addr" name="addr" placeholder="주소">
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<input type="submit" class="saveBtn" value = "저장하기">
								<button class="closeBtn">
									<a class="editHref1" href="MyPage.jsp"> 취소하기 </a>
								</button>
							</td>
						</tr>
					</table>
				</div>
			</form>
		</div>
	</div>

	<script src="js/image.js"></script>
</body>
</html>