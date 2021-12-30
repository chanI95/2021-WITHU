<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="model.*"%>
<%@page import="java.util.*"%>
<%
	ProfileDTO profile = (ProfileDTO)session.getAttribute("login_profile");
	
	QnADAO qna_dao = new QnADAO();	
	QnADTO qna =  new QnADTO();
	
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/QnA.css"/>
</head>
<body>
	<!-- ---------------------------BEGIN HEADER--------------------------------->
	<%@ include file = "header.jsp" %>
	<!-- ---------------------------END HEADER----------------------------------->
	
	<!-- ---------------------------BEGIN CONTENT--------------------------------->
	<div class="container">
		<div class="qcontainer">
			<div class="question">
				<strong><span class="qulist"><%= qna_dao.Qtitle_select(qna).getQ_title()%></span></strong>
			</div>
			<form action="QnACon" method="post">
				<div class="text">
					<p class="textp">
						<textarea class="textbox" name="content" cols="90" rows="20"
							placeholder="질문에 답해주세요!"></textarea>
					</p>
				</div>
				<div class="btn">
					<input class="radio" type="radio" name="private" value="공개"><label>공개</label>
					<input class="radio" type="radio" name="private" value="비공개"><label>비공개</label>
					<input type="submit" class="button" id = "save" value ="저장하기">
					<button class="back">
						<a class="btnhref" href="Main.jsp">돌아가기</a>
					</button>
				</div>
			</form>
		</div>
	</div>
	<!-- contaier end -->
	<!-- ---------------------------END CONTENT--------------------------------->
    
    <!-- ---------------------------BEGIN FOOTER--------------------------------->
    	<%@ include file = "footer.jsp" %>
	<!-- ---------------------------END FOOTER----------------------------------->
</body>
</html>