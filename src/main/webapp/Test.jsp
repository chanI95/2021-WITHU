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
                        <h1>����� �ڰ�����</h1>
                        <p>���� �����ϰ� ����� ���¿� ���� �����Դϴ�.<br>�̿� ���� �ϵ��� �󸶳� ���� �Ͼ������ �������ּ���</p><br>

                    </td>
                </tr>

                <tr>
                    <th class="testHeader">�� ��</th>
                    <th class="testHeader">�����幰��<br>(�����ϵ���<br>1������)</th>
                    <th class="testHeader">�����־���<br>(�����ϵ���<br>1~2��)</th>
                    <th class="testHeader">�����־���<br>(�����ϵ���<br>3~4��)</th>
                    <th class="testHeader">��κб׷���<br>(�����ϵ���<br>5���̻�)</th>
                </tr>
                <tr>
                    <td class="question">1) �ƹ������� �ʴ� �ϵ��� ���Ӱ� ������ ��������.</td>
                    <td><input class="test_radio" type="radio" name="1st" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="1st" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="1st" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="1st" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">2) �԰� ���� �ʰ� �Ŀ��� ����.</td>
                    <td><input class="test_radio" type="radio" name="2nd" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="2nd" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="2nd" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="2nd" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">3) ��� ���� �����ش� �ϴ��� ���� ������ ����� ���� ���� �� ���� �� ����.</td>
                    <td><input class="test_radio" type="radio" name="3rd" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="3rd" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="3rd" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="3rd" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">4) ���� ���� �ϴ� ������ �����ϱⰡ �������.</td>
                    <td><input class="test_radio" type="radio" name="4th" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="4th" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="4th" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="4th" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">5) ���� �� ���´�.</td>
                    <td><input class="test_radio" type="radio" name="5th" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="5th" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="5th" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="5th" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">6) ����� ����ߴ�.</td>
                    <td><input class="test_radio" type="radio" name="6th" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="6th" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="6th" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="6th" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">7) ��� �ϵ��� ����� ��������.</td>
                    <td><input class="test_radio" type="radio" name="7th" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="7th" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="7th" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="7th" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">8) ������ �ϴ��ϰ� ��������.</td>
                    <td><input class="test_radio" type="radio" name="8th" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="8th" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="8th" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="8th" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">9) ���ݱ����� �� �λ��� �������̶�� ������ �����.</td>
                    <td><input class="test_radio" type="radio" name="9th" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="9th" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="9th" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="9th" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">10) ��� ���� ����鸸ŭ�� �ɷ��� �־��ٰ� �����Ѵ�.</td>
                    <td><input class="test_radio" type="radio" name="10th" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="10th" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="10th" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="10th" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">11) ���� ���ƴ�(���� �� �̷��� ���ߴ�).</td>
                    <td><input class="test_radio" type="radio" name="11st" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="11st" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="11st" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="11st" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">12) �η����� ������.</td>
                    <td><input class="test_radio" type="radio" name="12nd" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="12nd" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="12nd" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="12nd" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">13) ��ҿ� ���� ������ ������.</td>
                    <td><input class="test_radio" type="radio" name="13rd" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="13rd" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="13rd" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="13rd" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">14) ���� Ȧ�� �ִ� �� �� �ܷο��� ������.</td>
                    <td><input class="test_radio" type="radio" name="14th" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="14th" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="14th" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="14th" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">15) ū �Ҹ� ���� ��Ȱ�ߴ�.</td>
                    <td><input class="test_radio" type="radio" name="15th" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="15th" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="15th" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="15th" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">16) ������� ������ ������ ���ϴ� �� ���Ҵ�.</td>
                    <td><input class="test_radio" type="radio" name="16th" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="16th" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="16th" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="16th" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">17) ���ڱ� ������ ���Դ�.</td>
                    <td><input class="test_radio" type="radio" name="17th" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="17th" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="17th" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="17th" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">18) ������ �����.</td>
                    <td><input class="test_radio" type="radio" name="18th" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="18th" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="18th" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="18th" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">19) ������� ���� �Ⱦ��ϴ� �� ���Ҵ�.</td>
                    <td><input class="test_radio" type="radio" name="19th" value="0"/></td>
                    <td><input class="test_radio" type="radio" name="19th" value="1"/></td>
                    <td><input class="test_radio" type="radio" name="19th" value="3"/></td>
                    <td><input class="test_radio" type="radio" name="19th" value="5"/></td>
                </tr>
                <tr>
                    <td class="question">20) ������ �� �� ���� ���ΰ� ���� �ʾҴ�.</td>
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
                                <input class ="submitin" type="submit" value="�����ϱ�">
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