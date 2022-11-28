<%@page import="com.jacaranda.java.Movies"%>
<%@page import="com.jacaranda.java.CRUDMovies"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="net.bytebuddy.asm.Advice.Local"%>
<%@page import="com.jacaranda.java.User"%>
<%@page import="com.jacaranda.java.UtilsUsers"%>
<%@page import="com.jacaranda.java.CRUDPurchase"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.jacaranda.java.MovieCarrito"%>
<%@page import="com.jacaranda.java.Purchase"%>
<%@page import="com.jacaranda.java.Carrito"%>
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

	Carrito carrito; 
	carrito= (Carrito) session.getAttribute("carrito");
	String usuario = (String) session.getAttribute("usuario");
	
	
	List<MovieCarrito> listMoviesCarrito = carrito.getListPurchase();
	Iterator<MovieCarrito> iterator = listMoviesCarrito.iterator();  
	MovieCarrito item = new MovieCarrito();
	User user=UtilsUsers.getUser(usuario);
	
	
	while(iterator.hasNext()) { //Itera cada linea de nuestro carrito
		 item = iterator.next();
	
	
	
	Purchase purchase = new Purchase(item.getPrecioTotal(),user, LocalDateTime.now(), item.getCantidad(),item.getMovie());
	CRUDPurchase.restarCantidad(purchase);
	CRUDPurchase.savePurchase(purchase);

	}
	carrito.getListPurchase().clear();
	%>
	
	<jsp:forward page="/ListMovies" ></jsp:forward>

</body>
</html>