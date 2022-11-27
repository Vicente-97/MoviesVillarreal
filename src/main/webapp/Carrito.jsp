<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.jacaranda.java.MovieCarrito"%>
<%@page import="com.jacaranda.java.Carrito"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
 	String isSession = (String) session.getAttribute("login");
	String userSession = (String) session.getAttribute("usuario");
	 Carrito carrito= (Carrito) session.getAttribute("carrito");
	
	if(isSession == null && userSession == null){
		response.sendRedirect("error.jsp?msg=No tienes permisos, haz login.");
		
	}  
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Carrito</title>
	<link rel="stylesheet" type="text/css" href="css/styleTablePage.css">
</head>
<body background="images/fondo2.jpg">
	<div id="header">
		 <a href = "indexBrand.jsp"><img src="images/icono2.png" width="110px" height="100px" id="logo"></a>
		 
		 <span id="welcome"><h4>Sesion: <%=userSession %></h4><a href="CloseSession.jsp" ><button name="CloseSession" id="CloseSession" value="CloseSession">Log Out</button></a></span>
		 
		
		 <hr>

	</div>

	<br>
	
	<div>
		<table>
		
		
			<tr>
				
				<th>Pelicula</th>
				<th>Cantidad</th>
				<th>Precio</th>
				
				
			</tr>
			
		
		<%
		List<MovieCarrito> listMoviesCarrito = carrito.getListPurchase();
		Iterator<MovieCarrito> iterator = listMoviesCarrito.iterator();  
		MovieCarrito item = new MovieCarrito();
		Double price=0.0;
		while(iterator.hasNext()) { //Itera cada linea de nuestra base datos y nos la muestra en la tabla correspondiente.
			
			 item = iterator.next();
			
		%>
			<tr>
				<td><%=item.getMovie().getTitle()%></td>
				<td><%=item.getCantidad() %>
				<form action="ModificarCantidad.jsp" method="post">
				<input type="number" name="cantidad_Modificar" min="">
				<input type="hidden" value=<%=item.getMovie().getId()%> name="id_objeto">
				<input type="hidden" value=<%=item.getCantidad()%> name="cantidad">
				<button type="submit" name="modificarCantidad" id="CarritoCompra">Modificar Cantidad</button></form>
				</td>
				<td><%=item.getPrecioTotal()%></td>
				<%price=price+item.getPrecioTotal();%>
			</tr>
			
			 
		<%
		}
		%>
		<tr>
			<td><b>Precio Total: </b></td>
			<td colspan="2"><b><%=price %></b></td>
		</tr>
		
		</table>
		<div id="botonadd" align="right">
		<a href="Buy.jsp" ><button name="precio" id="addButton"value=<%=price%>>Comprar</button></a> 
			</div>
	</div>

</body>
</html>