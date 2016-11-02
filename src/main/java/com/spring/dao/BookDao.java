package com.spring.dao;

import java.util.List;
import com.spring.model.Book;

public interface BookDao {
	
	public List<Book> getAllBooks();
	public Book getBookByIsbn(int isbn);
	public void removeBook(int isbn);
	public void addBook(Book book);
	public void editBook(Book book);
}
