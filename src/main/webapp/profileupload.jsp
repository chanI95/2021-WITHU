<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.io.File" %>
<%@ page import = "com.oreilly.servlet.MultipartRequest" %>
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String filename = "";
		String filepath = "";
		int sizeLimit = 300*1920*1080;
		
		String realPath = request.getServletContext().getRealPath("upload");
		
		File dir = new File(realPath);
		if(!dir.exists()) dir.mkdirs();
		
		MultipartRequest multipartRequest = null;
		multipartRequest = new MultipartRequest(request, realPath, sizeLimit, "euc-kr", new DefaultFileRenamePolicy());
		
		filename = multipartRequest.getFilesystemName("photo");
 		filepath = realPath+"/upload/"+filename;			
	%>
	<img src = "${pageContext.request.contextPath}/upload/<%=filename%>">
</body>
</html>