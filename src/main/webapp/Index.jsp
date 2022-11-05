<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<title>Login</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body background="images/fondo_movie.jpg">
	<div id="container">
    	<img src="images/logo_movie-removebg.png" width="110px" height="100px" id="logo">
                     
        <div id="centroLogin">
     
        	<form action="CheckLogin.jsp"  method="post">
            	<h1 id="titulo">Bienvenido Cinéfilo</h1>
				<%
				//Se comprueba si existe la variable error que vendría true del checkLogin si algun campo fuese incorrecto
				String messageLog = request.getParameter("msg_error");
				if(messageLog!=null){
				%>
					<div>
						<span>El usuario o la contraseña son incorrectos</span>
					</div>
				<%}%>
			
				<!--Formulario de login que enviará la información a CheckLogin.java y hará las comprobaciones-->
		
	            <p id="textoUser">Usuario:
	            <br>
	            <center><input type="text" required name="username" id="username" ></p></center>
	            
	            <p id="textoContrasena">Contraseña: 
	             <br>
	            <center><input type="password" required name="password" id="password"></p></center>
	            
                <p><input type="submit" id="Enviar" value="Enviar"></p>
          	</form>
       	</div>
   	</div>

</body>
</html>