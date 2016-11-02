package com.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.Cart;
import com.spring.model.CartItem;
import com.spring.model.CustomerOrder;

@Repository
@Transactional
public class CartItemDaoImpl implements CartItemDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void addCartItem(CartItem cartItem) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		//CustomerOrder customerorder=new CustomerOrder();
		//customerorder.setBillingAddress(cartItem.getCart().getCustomer().getBillingAddress());
		//customerorder.setShippingAddress(cartItem.getCart().getCustomer().getShippingAddress());
		//customerorder.setCart(cartItem.getCart());
		//customerorder.setCustomer(cartItem.getCart().getCustomer());
		session.saveOrUpdate(cartItem);
		//session.saveOrUpdate(customerorder);
		session.flush();
		session.close();
	}

	

	public void removeCartItem(int cartItemId) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		CartItem cartitem=(CartItem) session.get(CartItem.class, cartItemId);
		session.delete(cartitem);
		session.flush();
		session.close();
	}

	public void removeAllCartItems(Cart cart) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		List<CartItem> cartitems=cart.getCartitems();
		
		for (CartItem cartItem : cartitems) {
			
			removeCartItem(cartItem.getCartItemId());
		}
		
	}

}
