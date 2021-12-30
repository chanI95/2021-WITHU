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
	<!-- ���̵�� -->
	<div class="sideBar">

		<!-- ���̵� Ÿ��Ʋ -->
		<div class="sideTitle">
			<span><p class="title">
					<a class="href" href="Main.jsp">WITH U</a>
				</p></span>
		</div>

		<!-- D-DAY -->
		<div class="sideDay">
			<h1 class="day">D - 14</h1>
		</div>

		<!-- ������ �̹��� -->
		<div class="sideImg">
			<div class="img">
				<p class="imgs">
					<img class="profileImg" src="images/Profile_set.jpg"
						alt="profileimg">
				</p>
			</div>
		</div>

		<!-- �г��� -->
		<div class="sideNick">
			<div class="nick">
				<span class="nickName"><%=profile.getNick() %></span>
			</div>
		</div>

		<!-- ��ư ����-->
		<div class="sideBtn1">
			<button type="submit" class="logout">
				<a class="href" href="Logout.jsp">�α׾ƿ�</a>
			</button>
		</div>
		<div class="sideBtn2">
			<button type="submit" class="member">
				<a class="href" href="Update.jsp">ȸ����������</a>
			</button>
		</div>
		<div class="sideBtn3">
			<button type="submit" class="dday">
				<a class="href" href="SetDday.jsp">D-Day ����</a>
			</button>
		</div>
	</div>
	<!-- ���̵�� �� -->

	<!-- ȸ������ ���� ����! -->
	<div class="main-container">
		
			<div class="topblank">
				<br>
			</div>
			<div class="editmember">
				<span class="titlecenter">ȸ������ ����</span>
			</div>
			<!-- Title �� -->

			<div class="divphoto">
				<div id="image_container">
					<p class="imgcenter">
						<img class="imgsize" src="images/Profile_set.jpg" id="img_section">
					</p>
					<br>
					<button class="browse_btn">
						<i class="far fa-image" id="imgicon"></i> <span class="photo">������
							���� �ٲٱ�</span>
					</button>
					<input class="image_file" type="file" accept="image/*"
						id="real-input" onchange="setThumbnail(event);">
				</div>
				<!-- ������ �̹��� ���� ��-->
			<form action="UpdateCon" method="post">
				<div class="editform">
					<table class="editTable">
						<tr>
							<td>
								<div class="editNick">
									<div class="inputForm">
										<input type="text" class="nick" name="nick" placeholder="�г���">
									</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="inputForm">
									<input type="password" class="pw" name="pw" placeholder="��й�ȣ">
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="inputForm">
									<input type="password" class="pw" placeholder="��й�ȣ Ȯ��">
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="inputForm">
									<input type="text" class="name" name="name" placeholder="����">
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="inputForm">
									<input type="tel" class="tel" name="tel" placeholder="��ȭ��ȣ">
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="inputForm">
									<h2>
										<br>�߰� ���� �Է��ϱ�
									</h2>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="inputForm">
									������� <input type="date" name="bir" value="date"
										style="margin-left: 30px;">
								</div>
							</td>
						</tr>

						<tr>
							<td>
								<div class="inputForm">
									<input type="radio" name="gender" value="female">���� <input
										type="radio" name="gender" value="male"
										style="margin-left: 100px;">����
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="inputForm">
									<input type="text" class="addr" name="addr" placeholder="�ּ�">
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<input type="submit" class="saveBtn" value = "�����ϱ�">
								<button class="closeBtn">
									<a class="editHref1" href="MyPage.jsp"> ����ϱ� </a>
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