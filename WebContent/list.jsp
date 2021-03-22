<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
<style>
.div {
	border: 3px solid black;
	border-radius: 10px;
	box-shadow: inset 0 0 8px silver;
	width: 50%;
	line-height: 20px;
	margin: 5% 25%;
	height: 500px;
	overflow-y: scroll;
}

.table { <%--table class selector 정의--%>
	border-collapse:collapse;
	text-align: center;
	width: 100%;
	margin: auto;
}

.table th { <%--헤더 셀 정의--%>
	background:lightgrey;
	text-align: center;
}

.table th, .table td { <%--전체 셀 정의--%>
	padding:10px;
	border: 1px solid #ddd;
}

.table th:first-child, .table td:first-child { <%--첫번째 열 테두리 제거--%>
	border-left:0;
	
}

.table th:last-child, .table td:last-child { <%--마지막 열 테두리 제거--%>
	border-right:0;
	
}

.table caption { <%--table caption 정의--%>
	caption-side:bottom;
	font-size: 14px;
	color: silver;
	position: relative;
	top: 10px;
	text-align: right;
}
</style>
</head>
<body
	style="font-family: 맑은 고딕, 돋움, dotum, 굴림, gulim, arial; padding: 20px; margin: 20px;">
	<%@ include file="declaration.jsp"%>

	<div class="div">
		<table class="table">
			<tr>
				<th>No</th>
				<th>가수</th>
				<th>제목</th>

			</tr>
			<%
			for (Music m : song.mList) {
			%>
			<tr>
				<td><%=m.getNo()%></td>
				<td><%=m.getSinger()%></td>
				<td><a href="detailView.jsp?name=<%=m.getName()%>"
					style="text-decoration: none; color: black;"><%=m.getName()%></a></td>
				<%
				}
				%>
			
		</table>
	</div>
	<div style="clear: both;"></div>
</body>
</html>