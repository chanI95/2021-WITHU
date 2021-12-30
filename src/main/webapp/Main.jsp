<%@page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@page import="model.*"%>
<%@page import="java.util.*"%>


<%
	ProfileDTO profile = (ProfileDTO)session.getAttribute("login_profile");
	
	QuestionDAO q_dao = new QuestionDAO();
	ArrayList<QuestionDTO> q_list = new ArrayList<>();
	q_list = q_dao.Q_list();	
	
	QnADAO qna_dao = new QnADAO();
	ArrayList<QnAJoinDTO> qna_list = new ArrayList<>();
	qna_list = qna_dao.QnAJoin_list();
	
	QRepleDAO qreple_dao = new QRepleDAO();
	ArrayList<QrepleJoinDTO> qreple_list = new ArrayList<>();
	qreple_list = qreple_dao.QrepleJoin_list();
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="css/Main.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<!-- ---------------------------BEGIN HEADER--------------------------------->
	<%@ include file = "header.jsp" %>
	<!-- ---------------------------END HEADER----------------------------------->

	<!-- ---------------------------BEGIN CONTENT--------------------------------->
	<div class="container">
		<div class="qcontainer">
			<form action="QtitleCon" method="post">
				<div class="question">
					<%
					if (!q_list.isEmpty()) {

						Random r = new Random();
						int randNum = r.nextInt(70) + 1;
						String q_title = "";

						for (int i = 0; i < q_list.size(); i++) {

							if (randNum == q_list.get(i).getQ_no()) {

						q_title = q_list.get(i).getQuestion();
					%>
					<p class="qulist"><%=q_title%></p>
					<input class="randomlist" type="hidden" name="Q_Title"
						value="<%=q_title %>">

					<%
							}
						}
					}
					%>
				</div>
				<div class="btn">
					<table class="btntable">
						<tr>
							<td class="leftblank"></td>
							<td>
								<input type="submit" class="ansbtn" value="질문에 답하기">
							</td>

							<td>
								<button class="wrbtn">
									<a class="href" href="Diary.jsp">다이어리 쓰기</a>
								</button>
							</td>
							<td class="rightblank"></td>
						</tr>
					</table>
				</div>
			</form>
		</div>
			<% if (!qna_list.isEmpty()) { 
				for(int i = 0; i < qna_list.size(); i++) {
			%>
			
		<div class="postcontainer">
			<div class="hr">
				<div class="member">
					<img class="memberImg" src="<%=qna_list.get(i).getpImg() %>" onerror="this.src='images/Profile_set.jpg'">
					<strong class="nick"><%=qna_list.get(i).getNick()%></strong> 
					<strong class="date"><%=qna_list.get(i).getQ_date() %></strong>
				</div>
			</div>
			<div class="boardTitle">
				<span class="btitle"><%=qna_list.get(i).getQ_title() %></span>
			</div>
			<div class="board">
				<p class="write"><%=qna_list.get(i).getQ_content() %></p>
			</div>
			<div class="re">
				<form action = "QnARepleCon" method ="post">
					<div class="rewrite">
						<input class="rewriter" type="text" name = "recontent" placeholder="댓글을 입력하세요">
						<input type = "hidden" name = "B_NO" value="<%=qna_list.get(i).getB_no() %>">
						<input type="submit" class="confirm"  value="등록">
					</div>
				</form>
				
				<% if (!qreple_list.isEmpty()) { 
					for(int j = 0; j < qreple_list.size(); j++) {
						if(qna_list.get(i).getB_no() == qreple_list.get(j).getB_no()) {  %>
					<div class="seere">
						<strong class="renick"><%=qreple_list.get(j).getNick() %></strong> 
						<strong class="review"><%=qreple_list.get(j).getQ_re() %></strong>
					</div>
				<%				}
							}
						}
				%>
			</div>
		</div>
			<%
					}	
				}
			%>
		<div class="postcontainer">
			<div class="member">
				<img class="memberImg" src="images/profile.jpg"> <strong
					class="nick">닉네임</strong> <strong class="date">21.08.04
					Wen 16:50</strong>
			</div>
			<div class="boardTitle">
				<span class="btitle"> 오늘은 소나기가 엄청 내린날</span>
				</dir>
				<div class="boardimg">
					<p class="imgs">
						<img class="bimg" src="images/diary_img.jpg">
					</p>
				</div>
				<div class="board">
					<p class="write">게시글 적은 내용이 나옵니다</p>
				</div>
				<div class="re">
					<div class="rewrite">
						<input class="rewriter" type="text" placeholder="댓글을 입력하세요">
						<button type="submit" class="confirm">
							<a class="href" href="">등록</a>
						</button>
					</div>
					<div class="seere">
						<strong class="renick">닉네임</strong> <strong class="review">이거
							되는거 맞죠?</strong>
					</div>
				</div>
			</div>
		</div>
		<div class="footblank"></div>
	</div>
	<!-- ---------------------------END CONTENT----------------------------------->

	<!-- ---------------------------BEGIN FOOTER--------------------------------->
	<%@ include file = "footer.jsp" %>
	<!-- ---------------------------END FOOTER----------------------------------->

</body>
</html>