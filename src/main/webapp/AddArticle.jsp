<%@page import="com.jacaranda.java.CRUDCategory"%>
<%@page import="com.jacaranda.java.Category"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Article</title>
<link rel="stylesheet" type="text/css" href="css/mvp.css">
</head>
<body>
	<div align="center">
<form action="AddArticleMethod" method="post" id="addUser">			
		
			<h3>Rellene los siguientes datos:</h3>
			
					Título: <input type="text" name="title" id="title" required><br>
					
					Descripción de la Película: <input type="text" name="description"  id="description" required><br>
					
					Precio:<input type="number" step="any" name="precio" id="precio" required>
					
					
					Categoría:
					<br>
					<select>
					
					<%
						ArrayList<Category> listCategory = CRUDCategory.getCategory();
						for(Category c: listCategory){
							%>
							<option id="category_name" value=<%c.getId();%>><%=c.getGenres() %></option>
							
						<%} %>
					
					
			
					
						
					</select>
					
					<br>
					<button type="submit" id="AddArticleButton" class="AddArticleButton">Enviar</button>
					<button type="reset" id="resetButton" class="AddArticleButton">Borrar</button>
					<!-- <button onclick="location.href=''"Volver al Inicio" />Inicio</button> -->
	
		
					</form>
					<form action="ListMovies" method="post">
						<button>Back</button>
					</form>
</div>
	
	

</body>
</html>