package com.spring.services;

import com.spring.model.CustomerOrder;

public interface CustomerOrderService {

	void customerOrder(CustomerOrder customerOrder);

	double getCustomerOrderGrandTotal(int cartId);

}
