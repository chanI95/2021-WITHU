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
                            <span>당신의 이야기를 누군가와 공유하려면 <br> 가입하세요.</span>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="inputForm">
                        <input type="text" class="id"  name="id" placeholder="아이디">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="inputForm">
                        <input type="password" class="pw" name="pw" placeholder="비밀번호">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="inputForm">
                        <input type="text" class="nick" name="nick" placeholder="닉네임">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="inputForm">
                        <input type="text" class="name" name="name" placeholder="성명">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="inputForm">
                        <input type="tel" class="tel" name="tel" placeholder="전화번호">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" class="joinBtn" value="가입">
                </td>
            </tr>
            <tr>
                <td>
                    <div class="joinLog">
                        <p class="joinQ">
                            계정이 있으신가요?
                            <a class = "joinHref2" href="Login.jsp" tabindex="0">
                                <span class="joinLogin" >로그인</span>
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