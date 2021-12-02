<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page contentType="text/html; charset=iso-8859-1" %>
<%@ page import="java.util.Date" %>
<%
	Date now = new Data();
%>
<html>
<head>
<meta charset="UTF-8">
<title>현재 시간</title>
</head>
<body>
현재시각:
<%=now %>
</body>
</html>