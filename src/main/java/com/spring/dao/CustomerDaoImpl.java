package com.spring.dao;



import java.util.List;



import org.hibernate.Session;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.model.Authorities;
import com.spring.model.Cart;
import com.spring.model.Customer;
import com.spring.model.Users;

@Repository
public class CustomerDaoImpl implements CustomerDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}



	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}



	public void addCustomer(Customer customer) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Authorities authorities=new Authorities();
				authorities.setUsername(customer.getUsers().getUsername());
				authorities.setAuthorities("ROLE_USER");
				Users users=customer.getUsers();
				users.setEnabled(true);
				
				Cart cart=new Cart();
				customer.setCart(cart);
				cart.setCustomer(customer);
				
				session.save(customer);
				session.save(authorities);
				session.flush();
				session.close();
	}



	public List<Customer> getAllCustomers() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		List<Customer> customerList=session.createQuery("from Customer").list();
		return customerList;
	}



	public Customer getCustomerByUsername(String userName) {
		
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Users where userName=?");
			query.setString(0,userName);
			Users user=(Users)query.uniqueResult();
			Customer customer=user.getCustomer();
		return customer;
	}

}
