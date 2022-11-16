package com.jacaranda.java;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.jacaranda.java.Movies;
import com.jacaranda.java.Conn;

public class CRUDMovies {

	public static Movies getMovie(Integer id ) {
		Session session = Conn.getSession();
		Movies movie = (Movies) session.get(Movies.class,id);
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
			session.getTransaction().rollback();
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
			session.getTransaction().rollback();
		}
		
		return resultado;
	}
	
	public static ArrayList<Movies> getMovies(){
		Session session = Conn.getSession();
		
		Query<Movies> query = session.createQuery("SELECT p FROM com.jacaranda.java.Movies p");
		ArrayList<Movies> movie = (ArrayList<Movies>) query.getResultList();
		
		return movie;
	}
	
	public static List<Integer> MoviesMaxId() {
		
	    boolean valid = false;
		Session session = Conn.getSession();
		Query<Integer> query = session.createQuery("SELECT MAX(id) FROM com.jacaranda.java.Movies");
		List<Integer> Movies_maxID=query.getResultList();
		    
	
		return Movies_maxID;
	}
	
	public static Movies getMovieTitle(String title){
		
		Session session = Conn.getSession();
	
		Movies movies=null;
		try {
			Query<Movies> query = session.createQuery("SELECT p FROM com.jacaranda.java.Movies p WHERE title='"+ title +"'",Movies.class);
			movies = query.getSingleResult();
			return movies;
		}catch (Exception e) {
			return movies;
		}
		
	}
	

	
}
