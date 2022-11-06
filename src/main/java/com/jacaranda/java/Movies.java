package com.jacaranda.java;

import java.util.List;
import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity (name="movies")
public class Movies {
	@Id
	private Integer id;
	private String title;
	private String description_movie;
	private Double price;
	
	@ManyToMany
	List<Category> listCategory;
	
	
	
	
	public Movies() {
		super();
	}



	public Movies(Integer id, String title, String description_movie, Double price) {
		super();
		this.id = id;
		this.title = title;
		this.description_movie = description_movie;
		this.price = price;
	}



	public Integer getId() {
		return id;
	}



	public void setId(Integer id) {
		this.id = id;
	}



	public String getTitle() {
		return title;
	}



	public void setTitle(String title) {
		this.title = title;
	}



	public String getDescription_movie() {
		return description_movie;
	}



	public void setDescription_movie(String description_movie) {
		this.description_movie = description_movie;
	}



	public Double getPrice() {
		return price;
	}



	public void setPrice(Double price) {
		this.price = price;
	}



	@Override
	public int hashCode() {
		return Objects.hash(description_movie, id, listCategory, price, title);
	}



	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Movies other = (Movies) obj;
		return Objects.equals(description_movie, other.description_movie) && Objects.equals(id, other.id)
				&& Objects.equals(listCategory, other.listCategory) && Objects.equals(price, other.price)
				&& Objects.equals(title, other.title);
	}



	@Override
	public String toString() {
		return "Movies [id=" + id + ", title=" + title + ", description_movie=" + description_movie + ", price=" + price
				+ ", listCategory=" + listCategory + "]";
	}



	public List<Category> getListCategory() {
		return listCategory;
	}



	public void setListCategory(List<Category> listCategory) {
		this.listCategory = listCategory;
	}



	public boolean add(Category e) {
		return listCategory.add(e);
	}



	public boolean remove(Category o) {
		return listCategory.remove(o);
	}
	
	
	
}
