<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
<style>
.navbar { <%-- 메뉴 바 정의 --%>
	background:black;
	margin: 0;
	padding: 0;
	list-style: none;
	position: fixed;
	z-index: 99999;
	top: 0;
	left: 0;
	width: 100%;
}

.navbar>li { <%-- 메뉴 리스트 정의 --%>
	display:inline-block;
	letter-spacing:3px;
	font-style:italic;
	font-size: 20px;
	font-weight: bold;
	font-family: arial;
	float: left;
	
}

.navbar>li>a { <%--리스트 링크 정의--%>
	display:block;
	text-decoration: none;
	padding: 10px 20px;
	color: white;
}
</style>

</head>
<body>

	<nav>
		<ul class="navbar">
			<%-- 메뉴바 클래스 = "navbar" --%>
			<li><a
				href="index.jsp">My Play List</a></li>
		</ul>
	</nav>

</body>
</html>