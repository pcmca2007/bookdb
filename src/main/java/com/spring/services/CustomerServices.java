package com.spring.services;

import java.util.List;

import com.spring.model.Customer;

public interface CustomerServices {
	
	public void addCustomer(Customer customer);
	public List<Customer> getAllCustomers();
	Customer getCustomerByUsername(String userName);

}
