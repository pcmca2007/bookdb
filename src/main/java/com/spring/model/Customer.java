package com.spring.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.hibernate.annotations.Cascade;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="customer")
public class Customer implements Serializable {

@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int customerId;

@NotEmpty
private String customerName;
@NotEmpty
private String customerEmail;
@NotEmpty
private String customerPhone;

@OneToOne(cascade=CascadeType.ALL)
@JoinColumn(name="usersid")
private Users users;

@OneToOne(cascade=CascadeType.ALL)
@JoinColumn(name="billingaddressid")
private BillingAddress billingAddress;

@OneToOne(cascade=CascadeType.ALL)
@JoinColumn(name="shippingaddressid")
private ShippingAddress shippingAddress;

@OneToOne(cascade=CascadeType.ALL)
@JoinColumn(name="cartId")
@JsonIgnore
private Cart cart;

@OneToOne(mappedBy="customer")
CustomerOrder customerorder;



public CustomerOrder getCustomerorder() {
	return customerorder;
}

public void setCustomerorder(CustomerOrder customerorder) {
	this.customerorder = customerorder;
}

public Cart getCart() {
	return cart;
}

public void setCart(Cart cart) {
	this.cart = cart;
}

public int getCustomerId() {
	return customerId;
}

public void setCustomerId(int customerId) {
	this.customerId = customerId;
}

public String getCustomerName() {
	return customerName;
}

public void setCustomerName(String customerName) {
	this.customerName = customerName;
}

public String getCustomerEmail() {
	return customerEmail;
}

public void setCustomerEmail(String customerEmail) {
	this.customerEmail = customerEmail;
}

public String getCustomerPhone() {
	return customerPhone;
}

public void setCustomerPhone(String customerPhone) {
	this.customerPhone = customerPhone;
}

public Users getUsers() {
	return users;
}

public void setUsers(Users users) {
	this.users = users;
}

public BillingAddress getBillingAddress() {
	return billingAddress;
}

public void setBillingAddress(BillingAddress billingAddress) {
	this.billingAddress = billingAddress;
}

public ShippingAddress getShippingAddress() {
	return shippingAddress;
}

public void setShippingAddress(ShippingAddress shippingAddress) {
	this.shippingAddress = shippingAddress;
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
