<%@page import="com.jacaranda.java.CRUDUser"%>
<%@page import="com.jacaranda.java.Md5encript"%>
<%@page import="com.jacaranda.java.User"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String first_name = request.getParameter("first_name");
	String last_name = request.getParameter("last_name");
	LocalDate date = LocalDate.parse(request.getParameter("date"));
	Integer admin = Integer.valueOf(request.getParameter("admin"));
	String gender = request.getParameter("gender");
	
	if(CRUDUser.getUser(username)==null){
	User u  = new User(username,Md5encript.getMD5(password),first_name,last_name,
			date,gender,admin);
	CRUDUser.saveUser(u);
	response.sendRedirect("Index.jsp");
		
	}else{
		response.sendRedirect("error.jsp?msg_error=true");
	}



%>


</body>
</html>