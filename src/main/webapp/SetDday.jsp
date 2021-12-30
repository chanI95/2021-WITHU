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
                <span class="nickName">�г���</span>
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
    <!-- --------------------------END SIDEBAR-------------------------------->
    
    
    <div class="main-container">
        <header id="my_header">
            <div class="headerimg">
                <img class="headimg" id="headerImg" src="images/titlelogo1.png"/>
            </div>
        </header>

        <table class="setday">
            <tr>
                <td colspan="3"><h1 class="setTitle">�ڰ��ݸ� �Ⱓ ����</h1></td>
            </tr>
            <tr>
                <td colspan="3"><p>
                    �ڰ��ݸ��� �����ϴ� ��¥�� �ڰ��ݸ� ���� �������� �Է��ϸ� <br>
                    ���� ���� �ڰ��ݸ� �Ⱓ�� Ȯ���� �� �־��.<br>
                    �������� �Է����� ������ �ڵ����� 14���� �����˴ϴ�.<br>
                </p></td>
            </tr>
            <tr class="hr">
                <td><p>�ڰ��ݸ� ���� ��</p></td>
                <td>></td>
                <td>�ڰ��ݸ� ���� ��</td>
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
                        <input class = "setbtn"  type="submit" value="����ϱ�"/>
                    </form>
                </td>
                <td></td>
                <td class="Sbtn">
                    <form action="">
                        <input class = "setbtn" type="submit" value="�����ϱ�"/>
                    </form>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>