<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ page isELIgnored="false" %>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width , initial-scale-1">
<title>Dev Darshan</title>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Registration Form</title>
<link rel="stylsheet" type="text/css" href="<c:url value="/resources/css/style.css"></c:url>">
</head>
<body>


									<%-- Adding Couresel Start --%>


					<div id="content" class="container">
			<div class="row carousel-holder">
				<div class="col-md-12">
	
				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
	
  							<!-- Indicators -->
  							
 			 	<ol class="carousel-indicators">
    				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
    				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
  				</ol>

  							<!-- Wrapper for slides -->
  							
  					<div class="carousel-inner" id="slide1">
  				
    					<div class="item active">
     					 	<img class="slide-image" src="<c:url value='/resources/images/book1.jpg' />" alt="" />
     					 	
      					<div class="carousel-caption">
      				
      						<h4>Electronics Product</h4>
							<p>A Large variety of electronics goods arrived</p>
        
     				 	</div><!-- End carousel Caption -->
     				 
   			 			</div><!-- End Item -->
   			 
    
    		 			<div class="item" id="slide2">
		
							<img class="slide-image" src="<c:url value='/resources/images/book2.png' />"  alt="OOH" />
							
						<div class="carousel-caption">
				
							<h4>Ladies Apperals</h4>
							<p>A Large variety of Ladies Apperal arrived</p>
				
						</div><!-- End carousel Caption -->
						
						</div><!-- End Item -->    
		
		
		
						<div class="item" id="slide3">
							<img class="slide-image" src="<c:url value='/resources/images/book3.jpg' />"  alt="" />
		
						<div class="carousel-caption">
				
							<h4>Sports Items</h4>
							<p>A Large variety of Sports Items arrived</p>
				
						</div><!-- End carousel Caption -->
						
						</div><!-- End Item -->
		
    
    
    
  				</div><!-- End Inner --> 
  				

 						 <!-- Controls -->
  			<a class="left carousel-control" href="#carousel-example-generic"  data-slide="prev">
  				<span class="glyphicon glyphicon-chevron-left" ></span>
    			<span class="sr-only">Previous</span>
    		</a>
    		
  			<a class="right carousel-control" href="#carousel-example-generic"  data-slide="next">
    			<span class="glyphicon glyphicon-chevron-right" ></span>
    			<span class="sr-only">Next</span>
  			</a>
  			
 </div><!-- End Carousel -->  
 </div>	<!-- End col -->
 </div><!-- End Carousel Holder -->	
 </div>

				<%--Adding Couresel Ends --%>
									



			<div class="container">
			<c:url value="/customer/registration"  var="url"></c:url>
            <form:form action="${url}" class="form-horizontal" method="post" commandName="customer">
            
                <h2>Registration Form</h2>
                
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">Full Name</label>
                    <font color = "red"><form:errors path="customerName" cssclass="error" ></form:errors></font>
                    <div class="col-sm-9">
                        <form:input path="customerName" class="form-control"></form:input>
                        <span class="help-block">Last Name, First Name, eg.: Smith, Harry</span>
                    </div>
                </div>
               
                
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email</label>
                   <font color="red"><form:errors path="customerEmail" cssClass="error"></form:errors></font>
                    <div class="col-sm-9">
                        <form:input path="customerEmail" class="form-control"></form:input>
                    </div>
                </div>
                
                <div class="form-group">
						<c:if test="${DuplicateEmail !=null}">
							<label for="message" style="color:green">${DuplicateEmail }</label>
						</c:if>
								
								
				</div>
                
                <div class="form-group">
                    <label for="phone" class="col-sm-3 control-label">Phone</label>
                   <font color="red"><form:errors path="customerPhone" cssClass="error" ></form:errors></font> 
                    <div class="col-sm-9">
                        <form:input path="customerPhone"  class="form-control"></form:input>
                    </div>
                </div>
                <div class="form-group">
                    <label for="username" class="col-sm-3 control-label">UserName</label>
                    <form:errors path="users.username" cssClass="error"></form:errors>
                    <div class="col-sm-9">
                        <form:input path="users.username" class="form-control"></form:input>
                    </div>
                </div>
                
                <div class="form-group">
						<c:if test="${DuplicateUName !=null}">
							<label for="message" style="color:green">${DuplicateUName }</label>
						</c:if>
								
								
				</div>
                
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Password</label>
                    <form:errors path="users.password" cssClass="error"></form:errors>
                    <div class="col-sm-9">
                       	<form:input path="users.password" type="password" class="form-control" /> 
                    </div>
                </div> <!-- /.form-group -->
                
                <br/>
                <h2>Billing Address</h2>
                
                  <div class="form-group">
                    <label for="billingStreet" class="col-sm-3 control-label">StreetName</label>
                    <div class="col-sm-9">
                       	<form:input path="billingAddress.streetName" class="form-control" /> 
                    </div>
                </div> <!-- /.form-group -->
                
                <div class="form-group">
                    <label for="billingApartmentNumber" class="col-sm-3 control-label">ApartmentNumber</label>
                    <div class="col-sm-9">
                       	<form:input path="billingAddress.apartmentNumber" class="form-control" /> 
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="billingCity" class="col-sm-3 control-label">City</label>
                    <div class="col-sm-9">
                       	<form:input path="billingAddress.city" class="form-control" /> 
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="billingState" class="col-sm-3 control-label">State</label>
                    <div class="col-sm-9">
                       	<form:input path="billingAddress.state" class="form-control" /> 
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="billingCountry" class="col-sm-3 control-label">Country</label>
                    <div class="col-sm-9">
                       	<form:input path="billingAddress.country" class="form-control" /> 
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="billingZip" class="col-sm-3 control-label">Zip</label>
                    <div class="col-sm-9">
                       	<form:input path="billingAddress.zipcode" class="form-control" /> 
                    </div>
                </div>
                
                <br/>
                <h2>Shipping Address</h2>
                
                <div class="form-group">
                    <label for="shippingStreet" class="col-sm-3 control-label">StreetName</label>
                    <div class="col-sm-9">
                       	<form:input path="shippingAddress.streetName" class="form-control" /> 
                    </div>
                </div> <!-- /.form-group -->
                
                <div class="form-group">
                    <label for="shippingApartmentNumber" class="col-sm-3 control-label">ApartmentNumber</label>
                    <div class="col-sm-9">
                       	<form:input path="shippingAddress.apartmentNumber" class="form-control" /> 
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="shippingCity" class="col-sm-3 control-label">City</label>
                    <div class="col-sm-9">
                       	<form:input path="shippingAddress.city" class="form-control" /> 
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="shippingState" class="col-sm-3 control-label">State</label>
                    <div class="col-sm-9">
                       	<form:input path="shippingAddress.state" class="form-control" /> 
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="shippingCountry" class="col-sm-3 control-label">Country</label>
                    <div class="col-sm-9">
                       	<form:input path="shippingAddress.country" class="form-control" /> 
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="shippingZip" class="col-sm-3 control-label">Zip</label>
                    <div class="col-sm-9">
                       	<form:input path="shippingAddress.zipcode" class="form-control" /> 
                    </div>
                </div>
                    
                
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <button type="submit" class="btn btn-primary btn-block">Register</button>
                     <div align="center"><a href="<c:url value="/" />" class="btnbtn-default" >Cancel</a></div>
                    </div>
                </div>
            </form:form> <!-- /form -->
        </div> <!-- ./container -->
        
        							<!-- Footer -->
						<footer>
							<div class="row">
								<div class="col-lg-12">
								<p align="center">Copyright &copy; <a href="#">DevDarshan Book</a> 2016</p>
								</div>
							</div>
						</footer>
					</div>
        
</body>
</html>