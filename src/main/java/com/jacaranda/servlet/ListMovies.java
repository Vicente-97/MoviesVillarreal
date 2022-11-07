package com.jacaranda.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jacaranda.java.CRUDMovies;
import com.jacaranda.java.Movies;
import com.jacaranda.java.UtilsUsers;



/**
 * Servlet implementation class Login
 */
@WebServlet("/ListMovies")
public class ListMovies extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListMovies() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//declaro que el texto va a ser html/ codificacion UTF-8
		response.setContentType("text/html;charset=UTF-8");
		// decimos que en la salida de datos se va a escribir lo siguiente
		PrintWriter out = response.getWriter();
		
		try {
			out.println("<!DOCTYPE html>"
					+ "<html>"
					+ "<head>"
					+ "<meta charset=\"UTF-8\">"
					+ "<title>Peliculas</title>"
					+ "<link rel=\"stylesheet\" type=\"text/css\" href=\"css/styleTablePage.css\">"
					+ "</head>"
					+ "<body background=\"images/fondo2.jpg\">");
			
			List<Movies> listMovie =null;
			try {
				listMovie=CRUDMovies.getMovies();
			
			} catch (Exception e) {
				String message = e.getMessage();
				response.sendRedirect("error.jsp?msg=" + message);
			}
			out.println("<div>"
					+ "<table>"
					+ "<tr>"
					+ "<th>Id</th>"
					+ "<th>title</th>"
					+ "<th>Description</th>"
					+ "<th>Price</th>"
					+ "<th>Category_id</th>"
					+ "</tr>");
			
			Iterator<Movies> iterator = listMovie.iterator();
			while(iterator.hasNext()) { 
				//Itera cada linea de nuestra base datos y nos la muestra en la tabla correspondiente.
				
					Movies movie = new Movies();
					movie=iterator.next();
					Integer id = movie.getId();
					
					out.println("<tr>"
							+ "<td>"+movie.getId()+"</td>"
							+ "<td>"+movie.getTitle()+"</td>"
							+ "<td>"+movie.getDescription_movie()+"</td>"
							+ "<td>"+movie.getPrice()+"</td>"
							+ "<td>"+movie.getCategory().getGenres()+"</td>");
							
					
			}
			out.println("</table>"
					+ "</div>"
					+ "</body>"
					+ "</html>");
			
			
			
			
		} finally {
			//cerramos la salida de datos
			out.close();
		}
		
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
