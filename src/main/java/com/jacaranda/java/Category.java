package com.jacaranda.java;

import java.util.List;
import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity (name="category")
public class Category {
	@Id
	private Integer id;
	private String genres;
	private String description_category;
	
	@ManyToMany
	List<Movies> listMovies;

	public Category() {
		super();
	}

	public Category(Integer id, String genres, String description_category) {
		super();
		this.id = id;
		this.genres = genres;
		this.description_category = description_category;
	}

	public boolean add(Movies e) {
		return listMovies.add(e);
	}

	public boolean remove(Movies o) {
		return listMovies.remove(o);
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getGenres() {
		return genres;
	}

	public void setGenres(String genres) {
		this.genres = genres;
	}

	public String getDescription_category() {
		return description_category;
	}

	public void setDescription_category(String description_category) {
		this.description_category = description_category;
	}

	public List<Movies> getListMovies() {
		return listMovies;
	}

	public void setListMovies(List<Movies> listMovies) {
		this.listMovies = listMovies;
	}

	@Override
	public int hashCode() {
		return Objects.hash(description_category, genres, id, listMovies);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Category other = (Category) obj;
		return Objects.equals(description_category, other.description_category) && Objects.equals(genres, other.genres)
				&& Objects.equals(id, other.id) && Objects.equals(listMovies, other.listMovies);
	}

	@Override
	public String toString() {
		return "Category [id=" + id + ", genres=" + genres + ", description_category=" + description_category
				+ ", listMovies=" + listMovies + "]";
	}
	
	
	
	
	
	
}
