package com.spring.services;

import java.lang.management.GarbageCollectorMXBean;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.CustomerOrderDao;
import com.spring.model.Cart;
import com.spring.model.CartItem;
import com.spring.model.CustomerOrder;

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {
	
	@Autowired
	CustomerOrderDao customerOrderDao;
	
	@Autowired
	private CartService cartService;

	public CartService getCartService() {
		return cartService;
	}

	public void setCartService(CartService cartService) {
		this.cartService = cartService;
	}

	public void customerOrder(CustomerOrder customerOrder) {
		// TODO Auto-generated method stub
		customerOrderDao.addCustomerOrder(customerOrder);
	}

	public double getCustomerOrderGrandTotal(int cartId) {
		double grandTotal = 0;
        Cart cart = cartService.getCartByCartId(cartId);
        List<CartItem> cartItems=cart.getCartItems();
        
        for (CartItem cartItem : cartItems) {
        	
        	grandTotal=grandTotal+cartItem.getTotalPrice();
			
		}
		 
		return grandTotal;
	}

}
