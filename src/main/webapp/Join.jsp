<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="EUC-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/Join.css"/>
</head>
<body>
    <div class="join">
    <form action="JoinCon" method="post">
        <table class="joinTable">
            <tr>
                <td>
                    <div class="joinTitle">
                        <p><h1>WITH U</h1></p>
                        <div class="joinSub">
                            <span>����� �̾߱⸦ �������� �����Ϸ��� <br> �����ϼ���.</span>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="inputForm">
                        <input type="text" class="id"  name="id" placeholder="���̵�">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="inputForm">
                        <input type="password" class="pw" name="pw" placeholder="��й�ȣ">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="inputForm">
                        <input type="text" class="nick" name="nick" placeholder="�г���">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="inputForm">
                        <input type="text" class="name" name="name" placeholder="����">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="inputForm">
                        <input type="tel" class="tel" name="tel" placeholder="��ȭ��ȣ">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" class="joinBtn" value="����">
                </td>
            </tr>
            <tr>
                <td>
                    <div class="joinLog">
                        <p class="joinQ">
                            ������ �����Ű���?
                            <a class = "joinHref2" href="Login.jsp" tabindex="0">
                                <span class="joinLogin" >�α���</span>
                            </a>
                        </p>
                    </div>
                </td>
            </tr>
        </table>
    </form>
    </div>
</body>
</html>