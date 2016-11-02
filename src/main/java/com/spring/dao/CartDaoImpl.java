package com.spring.dao;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.model.Cart;
import com.spring.services.CustomerOrderService;

@Repository
public class CartDaoImpl implements CartDao {
	
	@Autowired
	private SessionFactory sessionFactort;
	
	@Autowired
	private CustomerOrderService customerOrderService; 

	public CustomerOrderService getCustomerOrderService() {
		return customerOrderService;
	}

	public void setCustomerOrderService(CustomerOrderService customerOrderService) {
		this.customerOrderService = customerOrderService;
	}

	public SessionFactory getSessionFactort() {
		return sessionFactort;
	}

	public void setSessionFactort(SessionFactory sessionFactort) {
		this.sessionFactort = sessionFactort;
	}

	public Cart getCartByCartId(int cartid) {
		Session session=sessionFactort.openSession();
		Cart cart=(Cart)session.get(Cart.class, cartid);
		System.out.println("CART ID IN DAO="+cart.getCartId());
		return cart;
	}

	public Cart validate(int cartId) throws IOException {
		// TODO Auto-generated method stub
		Cart cart=getCartByCartId(cartId);
		if(cart==null || cart.getCartitems().size()==0){
			throw new IOException(cartId+"");
		}
		update(cart);
		return cart;
	}

	public void update(Cart cart) {
		// TODO Auto-generated method stub
		int cartId=cart.getCartId();
		double grandTotal =customerOrderService.getCustomerOrderGrandTotal(cartId);
		cart.setTotalPrice(grandTotal);
		
		Session session=sessionFactort.openSession();
		session.merge(cart);
		session.flush();
		session.close();
	}

}
