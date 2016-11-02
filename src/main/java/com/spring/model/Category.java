package com.spring.model;

import javax.persistence.Id;
import javax.persistence.Table;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.Entity;
import javax.persistence.Column;
import javax.persistence.OneToMany;

import java.io.Serializable;
import java.util.List;

@Entity
@Table(name="bookcategories")
public class Category implements Serializable {
	
	@Id
	private int cid;
	@Column(name="category")
	private String categoryName;
	
	@OneToMany(mappedBy="category")
	@JsonBackReference
	private List<Book> books;
	
	public List<Book> getBooks() {
		return books;
	}

	public void setBooks(List<Book> books) {
		this.books = books;
	}

	public int getCid() {
		return cid;
	}
	
	public void setCid(int cid) {
		this.cid = cid;
	}
	
	public String getCategoryName() {
		return categoryName;
	}
	
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	
	
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return ToStringBuilder.reflectionToString(this);
	}
	
	@Override
	public boolean equals(Object obj) {
		// TODO Auto-generated method stub
		return EqualsBuilder.reflectionEquals(this, obj);
	}
	
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return HashCodeBuilder.reflectionHashCode(this);
	}
	
	
}
