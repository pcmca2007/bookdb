package com.spring.mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.spring.model.Book;
import com.spring.model.Cart;
import com.spring.model.CartItem;
import com.spring.model.Customer;
import com.spring.model.CustomerOrder;
import com.spring.model.Users;
import com.spring.services.BookService;
import com.spring.services.CartItemService;
import com.spring.services.CartItemServiceImpl;
import com.spring.services.CartService;
import com.spring.services.CustomerServices;

import java.util.List;

@Controller
public class CartItemController {

	@Autowired
	CartItemService cartItemService;

	@Autowired
	CustomerServices customerServices;

	@Autowired
	private BookService bookService;

	@Autowired
	CartService cartService;

	public CartService getCartService() {
		return cartService;
	}

	public void setCartService(CartService cartService) {
		this.cartService = cartService;
	}

	public BookService getBookService() {
		return bookService;
	}

	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}

	public CustomerServices getCustomerServices() {
		return customerServices;
	}

	public void setCustomerServices(CustomerServices customerServices) {
		this.customerServices = customerServices;
	}

	public CartItemService getCartItemService() {
		return cartItemService;
	}

	public void setCartItemService(CartItemService cartItemService) {
		this.cartItemService = cartItemService;
	}

	@RequestMapping("/cart/add/{isbn}")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void addCartItem(@PathVariable(value = "isbn") int isbn) {

		// Is to get the username of the customer
		// User object contains details about the user -username , password,
		// activeuser or not

		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String userName = user.getUsername();
		Customer customer = customerServices.getCustomerByUsername(userName);
		System.out.println("USER EMAIL=" + customer.getCustomerEmail());
		Cart cart = customer.getCart();
		System.out.println("CARTCARTCARTCART" + cart.getCartId());

		List<CartItem> cartItems = cart.getCartItems();
		System.out.println("SIZE OF LIST===" + cartItems.size());
		Book book = bookService.getBookByIsbn(isbn);

		for (CartItem cartItem : cartItems) {

			if (cartItem.getBook().getIsbn() == book.getIsbn()) {

				cartItem.setQuantity(cartItem.getQuantity() + 1);
				cartItem.setTotalPrice(cartItem.getQuantity() * cartItem.getBook().getPrice());
				cartItemService.addCartItem(cartItem);
				return;
			}

		} // End For

		CartItem cartitem = new CartItem();
		cartitem.setQuantity(1);
		cartitem.setBook(book);
		cartitem.setTotalPrice(book.getPrice() * 1);
		cartitem.setCart(cart);
		cartItemService.addCartItem(cartitem);

	}

	@RequestMapping("cart/removecartitem/{cartItemId}")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void removeCartItem(@PathVariable(value = "cartItemId") int cartItemId) {

		cartItemService.removeCartItem(cartItemId);
	}

	@RequestMapping("cart/removeAllItems/{cartid}")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void removeAllCart(@PathVariable(value = "cartid") int cartid) {

		Cart cart = cartService.getCartByCartId(cartid);

		cartItemService.removeAllCartItems(cart);
	}

}
