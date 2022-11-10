package com.jacaranda.java;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.query.Query;

public class CRUDCategory {
	
	public static Category getCategory(Integer id ) {
		Session session = Conn.getSession();
		Category category = (Category) session.get(Category.class,id);
		return category;
	}


	public static ArrayList<Category> getCategory(){
		Session session = Conn.getSession();
		
		Query<Category> query = session.createQuery("SELECT p FROM com.jacaranda.java.Category p");
		ArrayList<Category> category = (ArrayList<Category>) query.getResultList();
		
		return category;
	}
	


		
		
	
}