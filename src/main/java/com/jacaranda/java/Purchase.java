package com.jacaranda.java;

import java.time.LocalDate;
import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="purchase")
public class Purchase {
	@Id
	private int cod;
	private Double price;
	@ManyToOne
	@JoinColumn(name="user")
	private User user;
	private LocalDate date;
	private Integer quantity;
	
	@ManyToOne
	@JoinColumn(name="id_movie")
	private Movies id_movie;

	public Purchase() {
		super();
	}

	public Purchase(int cod, Double price, User user, LocalDate date, Integer quantity, Movies id_movie) {
		super();
		this.cod = cod;
		this.price = price;
		this.user = user;
		this.date = date;
		this.quantity = quantity;
		this.id_movie = id_movie;
	}

	public int getCod() {
		return cod;
	}

	public void setCod(int cod) {
		this.cod = cod;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Movies getId_movie() {
		return id_movie;
	}

	public void setId_movie(Movies id_movie) {
		this.id_movie = id_movie;
	}

	@Override
	public int hashCode() {
		return Objects.hash(cod, date, id_movie, price, quantity, user);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Purchase other = (Purchase) obj;
		return cod == other.cod && Objects.equals(date, other.date) && Objects.equals(id_movie, other.id_movie)
				&& Objects.equals(price, other.price) && Objects.equals(quantity, other.quantity)
				&& Objects.equals(user, other.user);
	}

	@Override
	public String toString() {
		return "Purchase [cod=" + cod + ", price=" + price + ", user=" + user + ", date=" + date + ", quantity="
				+ quantity + ", id_movie=" + id_movie + "]";
	}
	
	

	
	
	
}
