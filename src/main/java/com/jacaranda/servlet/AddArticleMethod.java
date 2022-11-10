package com.jacaranda.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jacaranda.java.CRUDCategory;
import com.jacaranda.java.CRUDMovies;
import com.jacaranda.java.CRUDUser;
import com.jacaranda.java.Category;
import com.jacaranda.java.Md5encript;
import com.jacaranda.java.Movies;
import com.jacaranda.java.User;

/**
 * Servlet implementation class AddArticleMethod
 */
@WebServlet("/AddArticleMethod")
public class AddArticleMethod extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddArticleMethod() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		Double price = Double.valueOf(request.getParameter("price"));
		Integer category_id = Integer.valueOf(request.getParameter("category_name"));
		
		Category category=CRUDCategory.getCategory(category_id);
		
		if(CRUDMovies.getMovie(title)==null){
		Movies movie = new Movies(title, description, price, category);
		CRUDMovies.saveMovie(movie);
		response.sendRedirect(request.getContextPath()+"/ListMovies");
			
		}else{
			response.setContentType("text/html;charset=UTF-8");
       		PrintWriter out = response.getWriter();
       		
       	try {
       		out.println("<!DOCTYPE html>"
       				+ "<html>"
       				+ "<head>"
       				+ "<meta charset=\"UTF-8\">"
       				+ "<title>Error 404</title>"
       				+ "		<link rel=\"stylesheet\" type=\"text/css\" href=\"css/styleError.css\">"
       				+ " "
       				+ "</head>"
       				+ "<body background=\"images/fondo_movie.jpg\">"
       				+ "      <a href=\"Index.jsp\"><img src=\"images/logo_movie-removebg.png\" width=\"110px\" height=\"100px\" id=\"logo\"></a>"
       				+ "            <hr>"
       				+ "            <div id=\"izq\">"
       				+ "                "
       				+ "                <img src=\"images/error_movie.jpg\" id=\"iconoError\">"
       				+ "            </div>"
       				+ "            <div id=\"der\">"
       				+ "                <h1 id=\"TextoGrande\"><FONT color=\"black\">¡Vaya!</FONT></h1>"
       				+ "                <h3 id=\"TextoChico\"><FONT color=\"black\">No hemos podido encontrar<br> la página que buscas.<br><br>Pulsa el icono arriba a la izquierda para volver.</FONT></h3>"
       				+ "                <h7 id=\"codError\">Codigo de error: 404</h7>"
       				+ "            </div>"
       				+ "</body>"
       				+ "</html>");
       		
       		
       	}finally {
			out.close();
		}
       		
  	 	
		}
	}

		
		
		
		
}
