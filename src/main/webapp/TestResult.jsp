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
					<img class="profileImg " src="images/Profile_set.jpg" alt="profileimg">
				</p>
			</div>
		</div>

		<!-- �г��� -->
		<div class="sideNick">
			<div class="nick">
				<span class="nickName">�г���</span>
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
						id="nonsee">�� ����</a></li>
					<li class="nav-item"><a href="#" data-toggle="tab" id="see">�ڰ�����
							���</a></li>
					<li class="nav-item"><a href="Like.jsp" data-toggle="tab" id="nonsee">�ʼ���
							�� ���</a></li>
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
							<br>�г��� ���� ����� �ڰ����� �˻� ����� ?
						</h2></td>
				</tr>
				<tr>
					<td rowspan="3" align="center">
						<div class="chart" style="width: 450px; height: 300px;">
							<!--��Ʈ�� �׷��� �κ�-->
							<canvas id="myChart"></canvas>
						</div>
					</td>
					<td class="number">1ȸ��</td>
					<td class="score"><strong>����</strong></td>
				</tr>
				<tr>
					<td class="number">2ȸ��</td>
					<td class="score"><strong>����</strong></td>
				</tr>
				<tr>
					<td class="number">3ȸ��</td>
					<td class="score"><strong>����</strong></td>
				</tr>

				<tr>
					<td colspan="3"><span id="comment"> ����� �ڰ����� �˻��� ��� ������ ��������
					<br>������� ������ ������ ���ϴٴ� �ǹ̿���.
					<br> ��ﰨ�� ���ӵǰ�, �������� �ʴ´ٸ� ���� ���縦 ���� ����� �޾ƺ��� �͵� ���� ����̶��ϴ�.
					</td>
				</tr>
			</table>
		</div>
		<!-- ---------------------------END CONTENT--------------------------------->
	</div>


	<script type="text/javascript">
		var context = document.getElementById('myChart').getContext('2d');
		var myChart = new Chart(context, {
			type : 'bar', // ��Ʈ�� ����
			data : { // ��Ʈ�� �� ������
				labels : [
				//x ��
				'1ȸ��', '2ȸ��', '3ȸ��' ],
				datasets : [ { //������
					data : [ 80, 50, 10 //x�� label�� �����Ǵ� ������ ��
					],
					backgroundColor : [
					//����
					'rgba(255, 99, 132, 0.2)', 'rgba(54, 162, 235, 0.2)',
							'rgba(255, 206, 86, 0.2)' ],
					borderColor : [
					//��輱 ����
					'rgba(255, 99, 132, 1)', 'rgba(54, 162, 235, 1)',
							'rgba(255, 206, 86, 1)' ],
					borderWidth : 1
				//��輱 ����
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