<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%@page import="model.ProfileDTO"%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="EUC-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/head.css">
</head>
<body>

	<%
	ProfileDTO dto = (ProfileDTO) session.getAttribute("login_profile");
	%>

	<div class="header">
        <div class="wrapper">
            <a class = "logoA" href="Main.jsp"><h1 class="logo">WITH U</h1></a>
            <div class="menu">
                <ul class="nav">
                    <li class="navli"><a href="MyPage.jsp"><img class="profile" src="" onerror="this.src='images/Profile_set.jpg'"></a></li>
                </ul>
            </div>
        </div>
    </div>
    
    <script src="js/imagePreview.js"></script>
    
</body>
</html>