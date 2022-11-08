package com.jacaranda.servlet;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jacaranda.java.CRUDUser;
import com.jacaranda.java.Md5encript;
import com.jacaranda.java.User;

/**
 * Servlet implementation class RegistrerUser
 */
@WebServlet("/RegistrerUser")
public class RegistrerUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrerUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		response.sendRedirect(request.getContextPath()+"/Index.jsp");
			
		}else{
			response.sendRedirect("error.jsp?msg_error=true");
		}
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
