<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
<style>
.h1{letter-spacing:3px;
	font-style:italic;
	font-size: 50px;
	font-weight: 850;
	font-family: arial;
	text-align:center;
	padding-top:50px;
	}
</style>
</head>
<body style="font-family: 맑은 고딕, 돋움, dotum, 굴림, gulim, arial; padding: 20px; margin: 20px;">
<div>
<h1 class="h1"><a href="index.jsp" style="text-decoration:none; color:black;">My Play List</a>
<img src="image/mp3.png" alt="mp3" style="width:60px; position:relative; top:15px;"></h1>
</div>
<div style="clear: both;"></div>
	<jsp:include page="header.jsp" />
	<%-- (action tag)header.jsp 동적으로 포함 --%>
		<jsp:include page="list.jsp" />
	<%-- (action tag)list.jsp 동적으로 포함 --%>
	<jsp:include page="footer.jsp" />
	<%-- (action tag)footer.jsp 동적으로 포함 --%>

</body>
</html>