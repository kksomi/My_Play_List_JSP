<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DetailView</title>
<style>
.button { <%-- 버튼 정의 --%>
	background-color: rgba(234,234,234,1);
	width: 80px;
	height: 30px;
	float: right;
	margin-right: 20px;
	border-radius: 5px;
	border: 1px solid silver;
	cursor: pointer;
}
</style>
</head>
<body style="font-family: 맑은 고딕, 돋움, dotum, 굴림, gulim, arial; padding: 20px; margin: 20px;">

	<%@ include file="declaration.jsp"%>
	<%-- (directive tag)declaration.jsp 정적으로 포함 --%>
	<%
	String name = request.getParameter("name");
	Music m = song.get(name);
	%>
	
	<jsp:include page="header.jsp" />
	<%-- (action tag)header.jsp 동적으로 포함 --%>
	<h1><%=name%> - <%=m.getSinger()%></h1>
	
	<hr color="black" size="3px">
	<%-- 구분선 색상:black, 굵기:3px --%>
	
	<div style="float:left; padding:15px;">
	<img src="album/<%=name%>.png" alt=<%=name%>
			style="padding: 10%; width: 180px; vertical-align: middle;">
	</div>
	<div style="float:left; width:50%; position:relative; left:50px; top:10px;">
	
		<table>
		<caption style="text-align:left; font-weight: 800; font-size: 20px; margin-top: 30px;
	margin-bottom: 20px;">곡 정보</caption>
		<tr
			style="text-align: left; float: left; display: block; font-weight: bold; width:80px;">
			<%-- 텍스트 왼쪽 정렬, 블록(줄바꿈), 글씨:굵게, 너비:150px --%>
			<th style="display: block;">가수</th>
			<th style="display: block;">제목</th>
			<th style="display: block;">앨범</th>
			<th style="display: block;">장르</th>
			<th style="display: block;">유형</th>
		</tr>
		<tr style="display: block; float: left; width:300px;">
			<%-- 블록(줄바꿈), 왼쪽 정렬 --%>
			<td style="display: block;"><%=m.getSinger()%></td>
			<td style="display: block;"><%=m.getName()%></td>
			<td style="display: block;"><%=m.getAlbum()%></td>
			<td style="display: block;"><%=m.getGenre()%></td>
			<td style="display: block;"><%=m.getType()%></td>
		</tr>
	</table>
	</div>
	<div style="clear: both;"></div>
	<hr color="black" size="3px">
	<%-- 구분선 색상:black, 굵기:3px --%>
	<h3 style="color: black; font-weight: 800; font-size: 20px;">가사</h3>
	<div style="text-align:center; padding:30px; line-height:40px;">
	<% 
	String dirPath = application.getRealPath("/text");
	File dir = new File(dirPath);
	String fileNames[] = dir.list();
	%>
	
	<%
	BufferedReader reader = null;
	try{
		String filePath = application.getRealPath("/text/"+name);
		reader = new BufferedReader(new FileReader(filePath));
		while(true){
			String str = reader.readLine();
			if(str ==null)
				break;
			out.println(str+"<br>");
		}
	}
	catch(FileNotFoundException e){
		out.println("파일이 존재하지 않습니다.");
	}
	catch(IOException e){
		out.println("파일을 읽을 수 없습니다.");
	}
	finally{
		try{
			reader.close();
		}
		catch(Exception e){
			
		}
	}
	%>
	
	</div>
	<div style="clear: both;"></div>
	
	<button class="button" onclick="location.href = 'index.jsp'">목록</button>
	<%-- 버튼 클릭시 "index.jsp"로 이동 --%>
	<div style="clear: both;"></div>
	<div style="text-align:center;">
	<% if(m.getNo()!=1){
		int no = m.getNo();
		m = song.get(no-1);
	%>
	<a href="detailView.jsp?name=<%=m.getName()%>" style="text-decoration:none; color:black;"> < 이전 </a>
	<%
		m = song.get(name);
	} %>
	<% if(m.getNo()!=20){
		int no = m.getNo();
		m = song.get(no+1);
	%>
	&emsp;&emsp;&emsp;&emsp;
	<a href="detailView.jsp?name=<%=m.getName()%>" style="text-decoration:none; color:black;"> 다음 > </a>
	<%
	} %>
	</div>
	<div style="clear: both;"></div>
	<jsp:include page="footer.jsp" />
	<%-- (action tag)footer.jsp 동적으로 포함 --%>
	

</body>
</html>