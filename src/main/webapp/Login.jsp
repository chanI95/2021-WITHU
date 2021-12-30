<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@page import="model.*"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="EUC-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/Login.css"/>
</head>
<body>
    <div class="login">   <form action="LoginCon" method="post">
        <table class="loginTable">
            <tr>
                <td>
                    <div class="loginTitle">
                        <h1>WITH U</h1>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="inputForm">
                        <input type="text" class="id" name="id" placeholder="아이디를 입력해주세요">
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
                    <button type="submit" class="loginBtn"><a class= "loginHref1" href="Main.jsp">로그인</a></button>
                </td>
            </tr>
            <tr>
                <td>
                    <a class= "loginHref2" href="" tabindex="0">비밀번호를 잊으셨나요?</a>
                </td>
            </tr>
            
            <tr>
                <td>
                    <div class="loginJo">
                        <p class="loginQ">
                            계정이 없으신가요?
                            <a class = "loginHref3" href="Join.jsp" tabindex="0">
                                <span class="loginjoin" >가입하기</span>
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