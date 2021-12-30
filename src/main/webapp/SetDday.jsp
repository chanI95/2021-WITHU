<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="EUC-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/SetDday.css"/>
    <link rel="stylesheet" href="css/sidebar.css"/>
</head>
<body>
    <!-- --------------------------BEGIN SIDEBAR-------------------------------->    
    <div class="sideBar">

        <!-- 사이드 타이틀 -->
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
                <p class="imgs"><img class = "profileImg "src="images/Profile_set.jpg" alt="profileimg"></p>
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
    </div>
    <!-- --------------------------END SIDEBAR-------------------------------->
    
    
    <div class="main-container">
        <header id="my_header">
            <div class="headerimg">
                <img class="headimg" id="headerImg" src="images/titlelogo1.png"/>
            </div>
        </header>

        <table class="setday">
            <tr>
                <td colspan="3"><h1 class="setTitle">자가격리 기간 설정</h1></td>
            </tr>
            <tr>
                <td colspan="3"><p>
                    자가격리를 시작하는 날짜와 자가격리 종료 예정일을 입력하면 <br>
                    매일 남은 자가격리 기간을 확인할 수 있어요.<br>
                    종료일을 입력하지 않으면 자동으로 14일이 지정됩니다.<br>
                </p></td>
            </tr>
            <tr class="hr">
                <td><p>자가격리 시작 일</p></td>
                <td>></td>
                <td>자가격리 종료 일</td>
            </tr>
            <tr>
                <td>
                    <form action="">
                        <input type="date" name="start"/>
                    </form>
                </td>
                <td></td>
                <td>
                    <form action="">
                        <input type="date" name="end"/>
                    </form>
                </td>
            </tr>
            <tr class="btn">
                <td class="Cbtn">
                    <br>
                    <form action="">
                        <input class = "setbtn"  type="submit" value="취소하기"/>
                    </form>
                </td>
                <td></td>
                <td class="Sbtn">
                    <form action="">
                        <input class = "setbtn" type="submit" value="저장하기"/>
                    </form>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>