<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Article</title>
</head>
<body>
	<div align="center">
<form action="" method="post" id="addUser">			
		
			<h3>Rellene los siguientes datos:</h3>
			
					Título: <input type="text" name="title" id="title" required><br>
					
					Descripción de la Película: <input type="text" name="description"  id="description" required><br>
					
					Precio:<input type="number" step="any" name="precio" id="precio" required>
					
					
					Last_name:<input type="text" name="last_name" id="last_name" required>
					
					
					
					 <input type="hidden" name="admin" value="0">
					<br>
					<button type="submit" id="loginButton" class="login_button">Enviar</button>
					<button type="reset" id="resetButton" class="login_button">Borrar</button>
					<button onclick="location.href='Index.jsp'" value="Volver al Inicio" />Inicio</button>
		
		
					</form>
</div>
	
	

</body>
</html>