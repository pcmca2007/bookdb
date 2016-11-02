package com.spring.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.CustomerDao;
import com.spring.dao.CustomerDaoImpl;
import com.spring.model.Customer;

@Service
public class CustomerServiceImpl implements CustomerServices {

	@Autowired
	public CustomerDao customerDao;
	
	
	
	public CustomerDao getCustomerDao() {
		return customerDao;
	}



	public void setCustomerDao(CustomerDao customerDao) {
		this.customerDao = customerDao;
	}



	public void addCustomer(Customer customer) {
		// TODO Auto-generated method stub
		customerDao.addCustomer(customer);
	}



	public List<Customer> getAllCustomers() {
		// TODO Auto-generated method stub
		List<Customer> customerList=customerDao.getAllCustomers();
		return customerList;
	}



	public Customer getCustomerByUsername(String userName) {
		// TODO Auto-generated method stub
		return customerDao.getCustomerByUsername(userName);
	}

}
