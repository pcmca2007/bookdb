package com.spring.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity
@Table(name="cart")
public class Cart implements Serializable {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int cartId;
	private double totalPrice;
	
	@OneToOne
	@JoinColumn(name="customerId")
	@JsonIgnore
	private Customer customer;
	
	@OneToOne(mappedBy="cart")
	CustomerOrder customerorder;
	
	@OneToMany(mappedBy="cart",cascade=CascadeType.ALL , fetch=FetchType.LAZY)
	private List<CartItem> cartitems;

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	
	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public List<CartItem> getCartitems() {
		return cartitems;
	}

	public void setCartitems(List<CartItem> cartitems) {
		this.cartitems = cartitems;
	}

	public List<CartItem> getCartItems() {
		// TODO Auto-generated method stub
		return cartitems;
	}

	
	public CustomerOrder getCustomerorder() {
		return customerorder;
	}

	public void setCustomerorder(CustomerOrder customerorder) {
		this.customerorder = customerorder;
	}
	
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return ToStringBuilder.reflectionToString(this);
	}
	
	@Override
	public boolean equals(Object obj) {
		// TODO Auto-generated method stub
		return EqualsBuilder.reflectionEquals(this, obj);
	}
	
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return HashCodeBuilder.reflectionHashCode(this);
	}
	

}
