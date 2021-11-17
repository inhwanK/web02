<%@page import="java.util.List"%>
<%@page import="guestbook.dao.MessageDao"%>
<%@page import="guestbook.model.Message"%>
<%@page import="jdbc.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Connection conn = ConnectionProvider.getConnection();
	MessageDao mdao = MessageDao.getInstance();
	List<Message> li = mdao.selectList(conn, 1, 3);
	for(Message m : li){
		out.print(m.getId()+"<br>");
		out.print(m.getGuestName()+"<br>");
		out.print(m.getPassword()+"<br>");
		out.print(m.getMessage()+"<br>");
		out.print("=============== <br>");
	}
	
	/*
	int count = mdao.selectCount(conn);
	out.println("===> " + count);*/
	
	
	/*
	Message message = new Message();
	message.setGuestName("홍길동");
	message.setPassword("1234");
	message.setMessage("방명록 첫번째 글 남깁니다.");
	int r = mdao.insert(conn, message);
	out.println("===> " + r);
	*/
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