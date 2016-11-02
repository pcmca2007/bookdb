package com.spring.mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.model.Cart;
import com.spring.model.Customer;
import com.spring.services.CustomerServices;

@Controller
public class CartController {
	
	@Autowired
	CustomerServices customerServices;
	
	public CustomerServices getCustomerServices() {
		return customerServices;
	}

	public void setCustomerServices(CustomerServices customerServices) {
		this.customerServices = customerServices;
	}

	@Autowired
	private CartServiceImpl cartService;

	public CartServiceImpl getCartService() {
		return cartService;
	}

	public void setCartService(CartServiceImpl cartService) {
		this.cartService = cartService;
	}
	
	
	@RequestMapping("/cart/getCartId")
	public String gatCartId(Model model){
		
		User user=(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username=user.getUsername();
		Customer customer=customerServices.getCustomerByUsername(username);
		System.out.println("CART ID IN GET=="+customer.getCart().getCartId());
		model.addAttribute("cartId",customer.getCart().getCartId());
		return "cart";
	}
	
	@RequestMapping("/cart/getCart/{cartid}")
	public @ResponseBody Cart getCartItems(@PathVariable(value="cartid") int cartid){
		
		return cartService.getCartByCartId(cartid);
	}
	
	
	
	

}
