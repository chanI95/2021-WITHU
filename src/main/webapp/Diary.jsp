<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@page import="model.ProfileDTO"%>

<%
   ProfileDTO profile = (ProfileDTO)session.getAttribute("login_profile");
   System.out.println(profile);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="EUC-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/Diary.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
   <!-- header include -->
   <%@ include file = "header.jsp" %>
   
   <!-- ---------------------------BEGIN CONTENT----------------------------------->
   <div class="container">
        <div class="diary">
            <div class="title">
                <input class = "titleIn" type="text" name="title" placeholder="제목을 입력해주세요">
            </div>
            <div class="divphoto">
                <input class="image_file" type="file" accept="image/*" id="real-input"  onchange="setThumbnail(event);">
                <button class="browse_btn">
                    <i class="far fa-image" id="imgicon"></i>
                    <span class="photo">사진을 추가하세요</span>
                </button>
                <div id="image_container">
                    <p class="imgcenter"><img class="imgsize" name="img" src="images/preview.png" id="img_section"></p>
                </div>
            </div>
            <div class="textbox">
                <div class="text">
                    <p class="textp"><textarea class = "textbox" name="content" cols="90" rows="20" placeholder="글을 작성하는 공간입니다."></textarea></p>
                </div>
            <div class="btn">
                <input class ="radio" type="radio" name="private" value="0"><label>공개</label>
                <input class ="radio" type="radio" name="private" value="1"><label>비공개</label>
                <button type="submit" class="save"><a class= "btnhref" href="Main.jsp">저장하기</a></button>
                <button class="back"><a class= "btnhref" href="Main.jsp">돌아가기</a></button>
            </div>
            </div>
        </div>
    </div>
    <!-- ---------------------------END CONTENT----------------------------------->
   
   <!-- footer include -->
   <%@ include file = "footer.jsp" %>
   
   <script src="js/image.js"></script>
</body>
</html>