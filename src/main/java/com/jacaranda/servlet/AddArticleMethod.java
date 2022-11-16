package com.jacaranda.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jacaranda.java.CRUDCategory;
import com.jacaranda.java.CRUDMovies;
import com.jacaranda.java.Category;
import com.jacaranda.java.Movies;

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
		process(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		List<Integer> listCategory=CRUDMovies.MoviesMaxId();
		
		Integer id = listCategory.get(0);
		
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		Double price = Double.valueOf(request.getParameter("precio"));
		Integer category_id = Integer.parseInt(request.getParameter("categorias"));
		
		Category category=CRUDCategory.getCategory(category_id);
		
			
			if(CRUDMovies.getMovie(id+1)==null&&CRUDMovies.getMovieTitle(title)==null&& title!=null && description!=null && price !=null && category_id!=null) {
				Movies movie = new Movies(id+1,title.trim(), description.trim(), price, category);
				CRUDMovies.saveMovie(movie);
//		response.sendRedirect(request.getContextPath()+"/ListMovies");
				
				
				ServletContext context = this.getServletContext(); 
				RequestDispatcher dispatcher = context.getRequestDispatcher("/ListMovies"); 
				
				
				dispatcher.forward(request, response);
				
		
		}else{
			
       		process(request, response);
		}
       		
       	
       		
	}
	
	protected void process (HttpServletRequest request, HttpServletResponse response) throws IOException {
		
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
   				+ "<form action=\"ListMovies\" method=\"post\">"
   				+ "<p><button type=\"submit\"><img src=\"images/logo_movie-removebg.png\" width=\"110px\" height=\"100px\" id=\"logo\" ></button></p>"
   				+ "</form>"
   				+ "            <hr>"
   				+ "            <div id=\"izq\">"
   				+ "                "
   				+ "                <img src=\"images/error_movie.jpg\" id=\"iconoError\">"
   				+ "            </div>"
   				+ "            <div id=\"der\">"
   				+ "                <h1 id=\"TextoGrande\"><FONT color=\"black\">¡Vaya!</FONT></h1>"
   				+ "                <h3 id=\"TextoChico\"><FONT color=\"black\">Error al añadir una película<br>Prueba<br><br>Pulsa el icono arriba a la izquierda para volver.</FONT></h3>"
   				+ "                <h7 id=\"codError\">Codigo de error: 404</h7>"
   				+ "            </div>"
   				+ "</body>"
   				+ "</html>");
   		
	}finally {
		out.close();
	}
   		
	}

}
