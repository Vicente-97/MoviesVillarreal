package com.jacaranda.java;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class Conn {

	/**
	 * Clase con la que realizaremos la conexión a base de datos.
	 */

		
		private static StandardServiceRegistry sr = new StandardServiceRegistryBuilder().configure().build();
		private static SessionFactory sf = new MetadataSources(sr).buildMetadata().buildSessionFactory();
		private static Session session = sf.openSession();
		
		public static Session getSession() {	
			
			return session;
		}
}
