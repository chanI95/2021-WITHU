<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

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
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/MyPage.css"/>
    <link rel="stylesheet" href="css/sidebar.css"/>


</head>
<body>
    <!-- --------------------------BEGIN SIDEBAR--------------------------------->     
    <div class="sideBar">

        <!-- ���̵� Ÿ��Ʋ -->
        <div class="sideTitle">
            <span><p class="title"><a class = "href" href="Main.jsp">WITH U</a></p></span>    
        </div>

        <!-- D-DAY -->
        <div class="sideDay">
            <h1 class="day">D - 14</h1>
        </div>

        <!-- ������ �̹��� -->
        <div class="sideImg">
            <div class="img">
                <p class="imgs"><img class = "profileImg "src="images/Profile_set.jpg" alt="profileimg"></p>
            </div>
        </div>

        <!-- �г��� -->
        <div class = "sideNick">
            <div class="nick">
                <span class="nickName">Chan</span>
            </div>
        </div>

        <!-- ��ư ����-->
        <div class="sideBtn1">
            <button type="submit" class="logout"><a class = "href" href="Logout.jsp">�α׾ƿ�</a></button>
        </div>
        <div class="sideBtn2">
            <button type="submit" class="member"><a class = "href" href="Update.jsp">ȸ����������</a></button>
        </div>
        <div class="sideBtn3">
            <button type="submit" class="dday"><a class = "href" href="SetDday.jsp">D-Day ����</a></button>
        </div>
    </div>
    <!-- --------------------------END SIDEBAR--------------------------------->

    <!-- --------------------------BEGIN HEADER-------------------------------->
    <div class="main-container">
        <header id="my_header">
            <div class="headerimg">
                <img class="headimg" id="headerImg" src="images/logo1.jpg"/>
            </div>
            <nav id="header-menu">
                <ul >
                    <li class="nav-item"><a href="#" data-toggle="tab" id="see">�� ����</a></li>
                    <li class="nav-item"><a href="TestResult.jsp" data-toggle="tab" id="nonsee">�ڰ����� ���</a></li>
                    <li class="nav-item"><a href="Like.jsp" data-toggle="tab" id="nonsee">�ʼ��� �� ���</a></li>
                </ul>
            </nav>
        </header>
        <!-- ---------------------------END HEADER--------------------------------->

        <!-- --------------------------BEGIN CONTENT-------------------------------->
        <div id="my_content">
            
            <!-- BEGIN TIMELINE -->
            <ul class="timeline">

                <!--ù��° ��-->
                <li>
                <!-- begin timeline-time -->
                <div class="timeline-time">
                    <span class="date">today</span>
                    <span class="time">04:20</span>
                </div>
                <!-- end timeline-time -->

                <!-- begin timeline-icon -->
                <div class="timeline-icon">
                    <a href="javascript:;">&nbsp;</a>
                </div>
                <!-- end timeline-icon -->

                <!-- begin timeline-body -->
                <div class="timeline-body">
                    <div class="timeline-content">
                        <h1>�׳��� �̾߱⸦ ���� ����� ������?</h1>
                        <p><br> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc faucibus turpis quis tincidunt luctus.
                            Nam sagittis dui in nunc consequat, in imperdiet nunc sagittis.
                        </p>
                    </div>
                </div>
                <!-- end timeline-body -->
                </li>

                <!--�ι�° ��-->
                <li>
                    <!-- begin timeline-time -->
                    <div class="timeline-time">
                        <span class="date">today</span>
                        <span class="time">04:20</span>
                    </div>
                    <!-- end timeline-time -->
        
                    <!-- begin timeline-icon -->
                    <div class="timeline-icon">
                        <a href="javascript:;">&nbsp;</a>
                    </div>
                    <!-- end timeline-icon -->
        
                    <!-- begin timeline-body -->
                    <div class="timeline-body">
                        <div class="timeline-content">
                            <h1>������ �ҳ��Ⱑ ��â ���� �� !</h1>
                            <p class="pcenter">
                                <img class="diaryImg" src="images/rock.png">
                            </p>
                            <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc faucibus turpis quis tincidunt luctus.
                                Nam sagittis dui in nunc consequat, in imperdiet nunc sagittis.
                            </p>
                        </div>
                    </div>
                    <!-- end timeline-body -->
                </li>
            </ul>
        </div>
    <!-- ---------------------------END CONTENT--------------------------------->
    </div>
</body>
</html>