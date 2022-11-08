<%-- <%@page import="com.jacaranda.java.Md5encript"%>
<%@page import="com.jacaranda.java.UtilsUsers"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%  
/* Recogemos los parametros user y password del formulario de login.jsp */

	String usuario = request.getParameter("username");
   	String password = request.getParameter("password");
            	
    /*Comprobamos que el login es correcto y lo redireccionamos a la lista de marcas "indexBrand.jsp"
    sino, volvemos a la pantalla de loggin pasandole un msg_error  */
    
    if(usuario !=null && password !=null){
    	if(UtilsUsers.userIsValid(usuario, password)){
            			
         	HttpSession userSession = request.getSession();
         	session.setAttribute("login", "True");
         	session.setAttribute("usuario", usuario);
         	
    		response.sendRedirect(request.getContextPath()+"/ListMovies");
            		
       	} else { 
       		response.sendRedirect("error.jsp?msg_error=true");
  	 	}
	 } 
%> --%>