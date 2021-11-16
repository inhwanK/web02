<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	//Class.forName("org.mariadb.jdbc.Driver");
	out.println("드라이버 로딩 성공");
	String url = "jdbc:mariadb://localhost:3306/javadb";
	String user = "lee";
	String pass = "1234";
	Connection conn = DriverManager.getConnection(url, user, pass);
	out.println("====> "+ conn);
	
	String sql = "select * from member";
	Statement stmt = conn.createStatement();
	
	ResultSet rs = stmt.executeQuery(sql);
	
	while(rs.next()){
		String memberid=rs.getString(1);
		String password=rs.getString(2);
		String name=rs.getString(3);
		String email = rs.getString(4);
		out.print("<br><br>" + memberid + " : " + password + " : " + name + " : " + email+ "<br>");
	}
	
	rs.close();
	stmt.close();
	conn.close();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>