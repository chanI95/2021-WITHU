<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="EUC-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/Test.css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body>
	<!-- ---------------------------BEGIN HEADER--------------------------------->
	<%@ include file = "header.jsp" %>
	<!-- ---------------------------END HEADER----------------------------------->
	
	<!-- ---------------------------BEGIN CONTENT----------------------------------->
    <div class="container">
        <div class="testTable">
            <table class="test" border=1 frame=void>
                <tr>
                    <td colspan="5" class="testComment">
                        <img class="testImg" src="images/selfTest.png"/>
                        <h1>우울증 자가진단</h1>
                        <p>지난 일주일간 당신의 상태에 관한 질문입니다.<br>이와 같은 일들이 얼마나 자주 일어났었는지 응답해주세요</p><br>

                    </td>
                </tr>

                <tr>
                    <th class="testHeader">문 항</th>
                    <th class="testHeader">극히드물다<br>(일주일동안<br>1일이하)</th>
                    <th class="testHeader">가끔있었다<br>(일주일동안<br>1~2일)</th>
                    <th class="testHeader">종종있었다<br>(일주일동안<br>3~4일)</th>
                    <th class="testHeader">대부분그랬다<br>(일주일동안<br>5일이상)</th>
                </tr>
                <tr>
                    <td class="question">1) 아무렇지도 않던 일들이 괴롭고 귀찮게 느껴졌다.</td>
                    <td><input class="test_radio" type="radio" name="1st" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="1st" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="1st" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="1st" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">2) 먹고 싶지 않고 식욕이 없다.</td>
                    <td><input class="test_radio" type="radio" name="2nd" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="2nd" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="2nd" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="2nd" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">3) 어느 누가 도와준다 하더라도 나의 울적한 기분을 떨쳐 버릴 수 없을 것 같다.</td>
                    <td><input class="test_radio" type="radio" name="3rd" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="3rd" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="3rd" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="3rd" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">4) 무슨 일을 하던 정신을 집중하기가 힘들었다.</td>
                    <td><input class="test_radio" type="radio" name="4th" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="4th" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="4th" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="4th" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">5) 비교적 잘 지냈다.</td>
                    <td><input class="test_radio" type="radio" name="5th" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="5th" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="5th" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="5th" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">6) 상당히 우울했다.</td>
                    <td><input class="test_radio" type="radio" name="6th" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="6th" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="6th" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="6th" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">7) 모든 일들이 힘들게 느껴졌다.</td>
                    <td><input class="test_radio" type="radio" name="7th" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="7th" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="7th" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="7th" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">8) 앞일이 암담하게 느껴졌다.</td>
                    <td><input class="test_radio" type="radio" name="8th" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="8th" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="8th" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="8th" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">9) 지금까지의 내 인생은 실패작이라는 생각이 들었다.</td>
                    <td><input class="test_radio" type="radio" name="9th" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="9th" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="9th" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="9th" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">10) 적어도 보통 사람들만큼의 능력은 있었다고 생각한다.</td>
                    <td><input class="test_radio" type="radio" name="10th" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="10th" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="10th" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="10th" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">11) 잠을 설쳤다(잠을 잘 이루지 못했다).</td>
                    <td><input class="test_radio" type="radio" name="11st" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="11st" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="11st" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="11st" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">12) 두려움을 느꼈다.</td>
                    <td><input class="test_radio" type="radio" name="12nd" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="12nd" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="12nd" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="12nd" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">13) 평소에 비해 말수가 적었다.</td>
                    <td><input class="test_radio" type="radio" name="13rd" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="13rd" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="13rd" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="13rd" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">14) 세상에 홀로 있는 듯 한 외로움을 느꼈다.</td>
                    <td><input class="test_radio" type="radio" name="14th" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="14th" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="14th" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="14th" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">15) 큰 불만 없이 생활했다.</td>
                    <td><input class="test_radio" type="radio" name="15th" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="15th" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="15th" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="15th" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">16) 사람들이 나에게 차갑게 대하는 것 같았다.</td>
                    <td><input class="test_radio" type="radio" name="16th" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="16th" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="16th" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="16th" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">17) 갑자기 울음이 나왔다.</td>
                    <td><input class="test_radio" type="radio" name="17th" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="17th" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="17th" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="17th" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">18) 마음이 슬펐다.</td>
                    <td><input class="test_radio" type="radio" name="18th" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="18th" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="18th" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="18th" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">19) 사람들이 나를 싫어하는 것 같았다.</td>
                    <td><input class="test_radio" type="radio" name="19th" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="19th" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="19th" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="19th" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">20) 도무지 뭘 해 나갈 엄두가 나지 않았다.</td>
                    <td><input class="test_radio" type="radio" name="20th" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="20th" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="20th" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="20th" value="5"/></td>
                </tr>
                <tr class="testSubmit">
                    <td colspan="5">
                        <div class="submit">
                            <form action="TestCon" method="post">
                                <input class ="suminput" type="hidden" name="sum">
                                <input class ="submitin" type="submit" value="제출하기">
                            </form>
                        </div>
                    </td>
                </tr>
            </table>                
        </div>
    </div>
	<!-- ---------------------------END CONTENT----------------------------------->
	
	
	<!-- ---------------------------BEGIN FOOTER--------------------------------->
	<%@ include file = "footer.jsp" %>
	<!-- ---------------------------END FOOTER----------------------------------->
	<script>
        function calcscore() {
            var score = 0;
            var ele = document.getElementsByClassName("test_radio");
            for (i = 0; i < ele.length; i++) {
                if (ele[i].checked) {
                score += parseInt(ele[i].value);
                }
            }
            $("input[name=sum]").val(score);
        }
        
        $(".test_radio").change(calcscore);
        
    </script>
</body>
</html>