<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@ page import ="beans.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Article list page</title>
</head>
<body>
<label>ユーザ名一覧</label><br><br>

	<%
		List<User> bList = (List<User>)( request.getAttribute("usernameList") );
	%>
	<%
		for(User b : bList){
	%>

		<!-- <label><%out.append( b.getId()  ); %></label> <br> -->
		<label>ユーザ名：<br><%out.append( b.getName() ); %></label> <br>
		<br>
	<%} %>
</body>
</html>