<%@page import="java.sql.Connection"%>
<%@page import="org.apache.tomcat.dbcp.dbcp2.DriverManagerConnectionFactory"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String salary = request.getParameter("salary");
%>
<%
//String name = request.getParameter("name");
//String age = request.getParameter("age");
//String money = request.getParameter("salary");
try{
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:orcl";
	Class.forName(driver);
	Connection con = DriverManager.getConnection(url,"jsp","jsp");
	Statement stmt = con.createStatement();
	String sql= "insert into join values('"+name+"',"+age+","+salary+")";
	stmt.executeUpdate(sql);
	con.close();
	stmt.close();
// 	ResultSet rs = stmt.executeQuery(sql);
// 	while(rs.next()){
// 		String name = rs.getString("name");
// 		String age = rs.getString(2);
// 		String money = rs.getString("money");
		
// 		out.write(name+":"+age+":"+money);
// 	}
}catch(Exception e){
	System.out.println(e.getMessage());
}
%>
</body>
</html>