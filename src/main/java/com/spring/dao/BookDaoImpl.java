package com.spring.dao;

import java.util.List;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.spring.model.Book;

@Repository
public class BookDaoImpl implements BookDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public List<Book> getAllBooks(){
		
		Session session=sessionFactory.openSession();
		return session.createQuery("from Book").list();
	}
	
	public Book getBookByIsbn(int isbn){
		Session session=sessionFactory.openSession();
		Book b=(Book) session.get(Book.class, isbn);
				session.close();
		return b;
	}
	
	public void removeBook(int isbn){
		
		Session session= sessionFactory.openSession();
		Book book=(Book)session.get(Book.class, isbn);
		session.delete(book);
		session.flush();
		session.close();
	}
	public void  addBook(Book book){
		
		Session session=sessionFactory.openSession();
		session.save(book);
		session.close();
		
	}

	public void editBook(Book book) {
		Session session=sessionFactory.openSession();
		session.update(book);
		session.flush();
		session.close();
		
	}

}
