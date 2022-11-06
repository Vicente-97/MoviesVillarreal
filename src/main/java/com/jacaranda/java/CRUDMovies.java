package com.jacaranda.java;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.jacaranda.java.Movies;
import com.jacaranda.java.Conn;

public class CRUDMovies {

	public static Movies getMovie(String name ) {
		Session session = Conn.getSession();
		Movies movie = (Movies) session.get(Movies.class,name);
		return movie;
	}
	
	public static boolean saveMovie( Movies movie) {
		boolean resultado=false;
		Session session = Conn.getSession();
		
		try {
			session.getTransaction().begin();
			session.saveOrUpdate(movie);
			session.getTransaction().commit();
			resultado=true;			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultado;
	}
	
	
	public  static boolean  deleteMovie(Movies movie) {
		boolean resultado= false;
		Session session =Conn.getSession();
		
		try {
			
			session.getTransaction().begin();
			session.delete(movie);
			session.getTransaction().commit();;
			resultado=true;
			
		} catch (Exception e) {
			e.printStackTrace();	
		}
		
		return resultado;
	}
	
	public static ArrayList<Movies> getMovies(){
		Session session = Conn.getSession();
		
		Query<Movies> query = session.createQuery("SELECT p FROM com.jacaranda.java.Movies p");
		ArrayList<Movies> movie = (ArrayList<Movies>) query.getResultList();
		
		return movie;
	}
	
	
}
