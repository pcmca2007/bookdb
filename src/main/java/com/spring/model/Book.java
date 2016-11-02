package com.spring.model;

import java.beans.Transient;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Min;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.ManyToOne;
import javax.persistence.JoinColumn;


@Entity
@Table(name="bookapp")
public class Book implements Serializable {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int isbn;
	@NotEmpty(message="Title Is Mendatory")
	private String title;
	
	@NotEmpty(message="Publication Is Mendatory")
	@Column(name="publisher")
	private String publication;
	private String author;
	
	@Min(value=100,message="Minimum Value Should Not Be Less Than 100")
	private double price;
		
	@ManyToOne
	@JoinColumn(name="cid")
	@JsonManagedReference
	private Category category;
	
	private transient MultipartFile bookImage;
			
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	
	
	public int getIsbn() {
		return isbn;
	}
	public void setIsbn(int isbn) {
		this.isbn = isbn;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
			
		
	public String getPublication() {
		return publication;
	}
	public void setPublication(String publication) {
		this.publication = publication;
	}
	
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	public MultipartFile getBookImage() {
		return bookImage;
	}
	public void setBookImage(MultipartFile bookImage) {
		this.bookImage = bookImage;
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
