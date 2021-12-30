<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/Like.css"/>
    <link rel="stylesheet" href="css/sidebar.css">
</head>
<body>
    <!-- 사이드바 -->     
    <div class="sideBar">

        <!-- 사이드 타잍틀 -->
        <div class="sideTitle">
            <span><p class="title"><a class = "href" href="Main.jsp">WITH U</a></p></span>
            
        </div>

        <!-- D-DAY -->
        <div class="sideDay">
            <h1 class="day">D - 14</h1>
        </div>

        <!-- 프로필 이미지 -->
        <div class="sideImg">
            <div class="img">
                <p class="imgs"><img class = "profileImg "src="images/Profile_set.jpg"></p>
            </div>
        </div>

        <!-- 닉네임 -->
        <div class = "sideNick">
            <div class="nick">
                <span class="nickName">닉네임</span>
            </div>
        </div>

        <!-- 버튼 모임-->
        <div class="sideBtn1">
            <button type="submit" class="logout"><a class = "href" href="Logout.jsp">로그아웃</a></button>
        </div>
        <div class="sideBtn2">
            <button type="submit" class="member"><a class = "href" href="Update.jsp">회원정보수정</a></button>
        </div>
        <div class="sideBtn3">
            <button type="submit" class="dday"><a class = "href" href="SetDday.jsp">D-Day 수정</a></button>
        </div>
    </div><!-- 사이드바 끝 -->

    <div class="main-container">

        <header id="my_header">
            <div class="headerimg">
                <img class="headimg" id="headerImg" src="images/logo3.jpg"/>
            </div>
            <nav id="header-menu">
                <ul >
                    <li class="nav-item"><a href="MyPage.jsp" data-toggle="tab" id="nonsee">글 보기</a></li>
                    <li class="nav-item"><a href="TestResult.jsp" data-toggle="tab" id="nonsee">자가진단 결과</a></li>
                    <li class="nav-item"><a href="#" data-toggle="tab" id="see">필수템 찜 목록</a></li>
                </ul>
            </nav>
        </header>

        <table>
            <tr>
                <td>
                    <div class="imgcontainer">
                        <img src="images/diary_img.jpg">
                    </div>
                </td>
                <td>
                    <div class="imgcontainer">
                        <img src="images/img1.png">
                    </div>
                </td>
                <td>
                    <div class="imgcontainer">
                        <img src="images/profile1.jpg">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="imgcontainer">
                        <img src="images/item1.jpg">
                    </div>
                </td>
                <td>
                    <div class="imgcontainer">
                        <img src="images/item2.jpg">
                    </div>
                </td>
                <td>
                    <div class="imgcontainer">
                        <img src="images/item3.jpg">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="imgcontainer">
                        <img src="images/item4.jpg">
                    </div>
                </td>
                <td>
                    <div class="imgcontainer">
                        <img src="">
                    </div>
                </td>
                <td>
                    <div class="imgcontainer">
                        <img src="">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="imgcontainer">
                        <img src="">
                    </div>
                </td>
                <td>
                    <div class="imgcontainer">
                        <img src="">
                    </div>
                </td>
                <td>
                    <div class="imgcontainer">
                        <img src="">
                    </div>
                </td>
            </tr>
            </table>
    </div>
</body>
</html>