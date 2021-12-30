<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@page import="model.ProfileDTO"%>
<%@page import="model.ItemDAO" %>
<%@page import="model.ItemDTO" %>
<%@page import="java.util.ArrayList"%>

<%
	ProfileDTO profile = (ProfileDTO) session.getAttribute("login_profile");

	ItemDAO i_dao = new ItemDAO();
	ArrayList<ItemDTO> i_list = new ArrayList<>();
	i_list = i_dao.item_view();	
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="EUC-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="stylesheet" href="css/Item.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
    	<%
			if (!i_list.isEmpty()) {
				for (int i = 0; i < i_list.size(); i++) {
		%>
					input[id="like<%=i %>"] {
						display: none;
					}
					
					input[id="like<%=i %>"] + label {
						display: inline-block;
					    background-color: #fff;
					    border: 2px solid #2f4f4f;
					    padding: 10px 20px;
					    border-radius: 2px;
					    color: #2f4f4f;
					    cursor: pointer;
					}
					
					input[id="like<%=i %>"] + label:hover {
					    background-color: #2f4f4f;
					    color: #fff;
					}
					
					input[id = "like<%=i %>"]:checked + label{
						background-color: #2f4f4f;
					    color: #fff;
					}
		<%
				}
			}
		%>
    </style>
</head>
<body>
	<!-- header include -->
	<%@ include file = "header.jsp" %>

	<div class="wrap">
		<form action="" method="post">
			<div class="container">
				<div class="favorite-container">
					<div class="favorite-title">
						<strong class="selflike">자가격리, 함께하면 좋아요!</strong><br> <br>
						<span class="sublike">자가격리에 필요한 물품 부터, 긴 기간을 심심하지 않게 해줄
							물품들을 소개합니다.<br>
						</span> <span class="sublike">즐겨찾기를 통해 마이페이지에서도 확인할 수 있어요.</span>
					</div>
				</div>
				<!--------------------------------- Begin Item_list --------------------------------->

				<%
					if (!i_list.isEmpty()) {
						for (int i = 0; i < i_list.size(); i++) {
				%>

				<div class="favorite-item">


					<div class="item-img">
						<p class="pcenter">
							<img class="i-img" src="<%=i_list.get(i).getI_img()%>">
						</p>
					</div>
					<div class="item-name">
						<strong class="i-name"><%=i_list.get(i).getI_name()%></strong> <br>
						<br> <span class="i-review"><%=i_list.get(i).getI_content()%></span>
					</div>
					<form action = "" method="post">
						<div class="favorite-set">
							<div class="check-container like-container">
								<input type="checkbox" id="like<%=i %>" name ="like" value ="">
								<label for ="like<%=i %>"><i class="fas fa-star"> Like</i></label>
								
							</div>
						</div>
					</form>
				</div>
				<%
						}
					}
				%>
				<!--------------------------------- End Item_list --------------------------------->
				
				<!-- 밑줄 여백 공간-->
				<div class="footblank"></div>
			</div>
		</form>
	</div>
	<!-- ---------------------------BEGIN FOOTER--------------------------------->
	<%@ include file="footer.jsp"%>
	<!-- ---------------------------END FOOTER----------------------------------->	
</body>
</html>