package com.spring.mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.model.Cart;
import com.spring.model.Customer;
import com.spring.model.CustomerOrder;
import com.spring.services.CartService;
import com.spring.services.CustomerOrderService;

@Controller
public class OrderController {
	
	@Autowired
	CustomerOrderService customerOrderService;
	
	public CartService getCartService() {
		return cartService;
	}

	public void setCartService(CartService cartService) {
		this.cartService = cartService;
	}

	public CustomerOrderService getCustomerOrderService() {
		return customerOrderService;
	}

	public void setCustomerOrderService(CustomerOrderService customerOrderService) {
		this.customerOrderService = customerOrderService;
	}

	@Autowired
	CartService cartService;
	
	
	@RequestMapping(value="/order/{cartId}")
	public String createOrder(@PathVariable(value="cartId") int cartId){
		
		System.out.println("ORDER CART ID="+cartId);
		
		CustomerOrder customerOrder=new CustomerOrder();
		Cart cart=cartService.getCartByCartId(cartId);
		customerOrder.setCart(cart);
		Customer customer=cart.getCustomer();
		customerOrder.setCustomer(customer);
		
		customerOrder.setBillingAddress(customer.getBillingAddress());
		customerOrder.setShippingAddress(customer.getShippingAddress());
		
		customerOrderService.customerOrder(customerOrder);
		
		return "redirect:/checkout?cartId="+cartId;
	}

}
