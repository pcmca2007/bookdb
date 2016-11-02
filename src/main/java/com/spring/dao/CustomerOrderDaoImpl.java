package com.spring.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.CustomerOrder;

@Repository
@Transactional
public class CustomerOrderDaoImpl implements CustomerOrderDao {
	
	@Autowired
	SessionFactory sessionFactory;

	public void addCustomerOrder(CustomerOrder customerOrder) {
		// TODO Auto-generated method stub
		System.out.println("Inside CostomerOrderDAO");
		Session session=sessionFactory.openSession();
		session.saveOrUpdate(customerOrder);
		session.flush();
		session.close();
		
	}

}
