package com.jacaranda.java;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Clase usuario.
 * @author vicente
 *
 */


@Entity (name = "users")
public class User {
	@Id
	private String username;
	private String password;

	public User() {
		
	}

	public User(String usurname, String password) {

		this.username = usurname;
		this.password = password;
	}

}
