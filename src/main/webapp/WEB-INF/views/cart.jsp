<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width , initial-scale-1">

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>

<title>DevDarshan</title>
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
								
		



					<div class="container-wrapper">
					<div class="container">
					<%-- 
						<section>
							<div class="jumbotron">
								<div class="container">
									<h3>Cart</h3>
									<p>Hello &nbsp; ${pageContext.request.userPrincipal.name}</p>
									<p>All the selected books in your shopping cart</p>
								</div>
							</div>
						</section>
						--%>
						
					<div ng-app="app"  ng-controller="myController">

					<div ng-init="getCart(${cartId})">
					<br>
						List of books purchased
					<div>
					<a class="btn btn-danger pull-left" ng-click="clearCart()">
						<span class="glyphicon glyphicon-remove-sign">
						</span> Clear Cart
					</a>
					</div>
							
					<div>
							<a href="<c:url value='/order/${cartId}'/>" class="btn btn-success pull-right">
								<span class="glyphicon glyphicon-ok-circle"></span>Checkout
							</a>
					</div>
					<table class="table table-hover">
						<thead>
							<tr>
								<th>TITLE</th>
								<th>QUANTITY</th>
								<th>Price</th>
								<th>TOTAL PRICE</th>
							</tr>
						</thead>
					<tr ng-repeat="cartitem in cart.cartItems">
						<td>
							 {{cartitem.book.title}}
						</td>
						<td>
							 {{cartitem.quantity}}
						</td>
						<td>
							 {{cartitem.book.price}}
						</td>
						<td>
							{{cartitem.totalPrice}}
						</td>
						<td>
						<a href="#" class="label label-danger" ng-click="removeFromCart(cartitem.cartItemId)">
								<span class="glyphicon glyphicon-remove"></span>remove</a>
						</td>
						</tr>

</table>
GrandTotal Price {{calculateGrandTotal()}}
</div>
<c:url value="/bookListAngular" var="url"></c:url>
<a href="${url }"class="btn btn-default">Continue shopping</a>
</div>
</div>
</div>

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