package com.jacaranda.java;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.query.Query;

public class CRUDUser {

	
	public static User getUser(String name ) {
		Session session = Conn.getSession();
		User user = (User) session.get(User.class,name);
		return user;
	}
	
	public static boolean saveUser( User user) {
		boolean resultado=false;
		Session session = Conn.getSession();
		
		try {
			session.getTransaction().begin();
			session.saveOrUpdate(user);
			session.getTransaction().commit();
			resultado=true;			
			
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return resultado;
	}
	
	
	public  static boolean  deleteUser(User user) {
		boolean resultado= false;
		Session session =Conn.getSession();
		
		try {
			
			session.getTransaction().begin();
			session.delete(user);
			session.getTransaction().commit();;
			resultado=true;
			
		} catch (Exception e) {
			e.printStackTrace();	
			session.getTransaction().rollback();
		}
		
		return resultado;
	}
	
	public static ArrayList<User> getUsers(){
		Session session = Conn.getSession();
		
		Query<User> query = session.createQuery("SELECT p FROM com.jacaranda.java.User p");
		ArrayList<User> user = (ArrayList<User>) query.getResultList();
		
		return user;
	}
	
}
