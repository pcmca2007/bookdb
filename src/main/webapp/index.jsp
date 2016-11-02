<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="/WEB-INF/views/header.jsp" %>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width , initial-scale-1">
<title>DevDarshan Book</title>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<script>

$(function () {
	$("#modal").modal().hide()
	});

</script>


</head>
<body>

<div class="container-fluid" id="main">


				<%-- 
      
	<nav class="navbar-inverse" style="background:#0000FF;">
  		<div class="container-fluid">
  
    	<div class="navbar-header">
      
    	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
    
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
        
    		<a class="navbar-brand" href="#"><img src="<c:url value='/resources/images/logo.png' />" class="img-circle" alt="My Logo"></a>
    	</div><!-- End Header -->
    
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    
    <!-- Navbar Content div Start -->
    
    <ul class="nav navbar-nav">
      <li class="active"><a href="<c:url value='/home' />">Home</a></li>
      <li><a href="<c:url value='/aboutUs'/>">AboutUs</a></li>
      <li class="dropdown"> 
      	<a href="#" class="active dropdown-toggle" data-toggle="dropdown">Category <span class="caret"></span></a>
      
      
      <ul class="dropdown-menu" style="background:#FFF8DC;">
		<li><a href="category.html">Academic &amp;Professional</a></li>
		<li><a href="category.html">Arts, Design and Photography</a></li>
		<li><a href="category.html">Business &amp;Management</a></li>
		<li><a href="category.html">Computers &amp; Internet</a></li>
		<li><a href="category.html">Entertainment</a></li>
		<li><a href="category.html">Cooking, Food &amp; Wine</a></li>
		<li><a href="category.html">Entrance Exams Preparation</a></li>
		<li><a href="category.html">Business & Investing</a></li>
		<li><a href="category.html">Sports &amp;Entertainment</a></li>
		<li><a href="category.html">Children Books</a></li>
		<li class="divider"></li>
		<li class="dropdown-header">More Category </li>
		<li><a href="ecommerce.html">All Categories</a></li>
		
      </ul><!-- Ens Dropdown li --> 
           
      </li><!-- End Navbar Menu li -->
        
    </ul><!-- End Navbar Menu ul -->
    
    	    	
    	<form class="navbar-form navbar-left">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search items by catrgory" style="width:200px">
        </div>
        <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
        
      </form><!-- end NavBar form -->
    
    <ul class="nav navbar-nav navbar-right">
		<li><a href="#"><span class="badge pull-right">4</span><i class="glyphicon glyphicon-shopping-cart"></i></a></li>
		<li><a href="account.html"><i class="glyphicon glyphiconuser"></i></a></li>
		<!-- <li><a href="#" data-toggle="modal" data-target="#myModal">My Account</a></li>  -->
		<li class="dropdown">
		<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>My Account<strong class="caret"></strong></a>
		
		<ul class="dropdown-menu" style="background:#FFF8DC;" >
		
			<li>
			
				<a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-thumbs-up"></span>Sign In</a>
			
			</li>
		
			<li>
			
				<a href="#"><span class="glyphicon glyphicon-wrench"></span>Settings</a>
			
			</li>
			
			<li>
			
				<a href="#"><span class="glyphicon glyphicon-refresh"></span>Update Profile</a>
			
			</li>
			
			<li>
			
				<a href="#"><span class="glyphicon glyphicon-briefcase"></span> Billing</a>
			
			</li>
			
			<li class="divider"></li>
			
			<li>
			
				<a href="#"><span class="glyphicon glyphicon-off"></span>Sign Out</a>
			
			</li>
		
		</ul>
		
		</li>
	</ul>
                        
    </div><!-- Navbar Content div Ends -->
    
     
     
  		 <div class="collapse navbar-collapse" id="bs-example-navbarcollapse-1">
  		
			</div><!-- /.navbar-collapse -->
			
  		</div> <!-- close fluid container -->
  					
	</nav><!-- End Navbar -->
	
	
							<!-- Modal Start -->
		  					
							
	  	<div class="modal fade" id="myModal" tabindex="-1" >
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close"><span >&times;</span><span class="sr-only">Close</span></button>
						<h2 class="modal-title" id="myModalLabel">Sign in</h2>
					</div>
				<div class="modal-body">
					<form class="form-signin">
						<h3 class="form-signin-heading">Sign in with your emailaddress</h3>
						<div class="form-group">
							<input type="email" class="form-control" placeholder="Email address" required autofocus>
						</div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="Password" required>
						</div>
						<div class="checkbox">
							<label>
							<input type="checkbox" value="remember-me"> Remember me
							</label>
						</div>
							<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
						</form>
					</div>
					<div class="row">
						<div class="col-xs-3">
							<a href="#" class="btn btn-facebook btn-large btn-capsbtn-block">Facebook <span class="icon-facebook"></span></a>
						</div>
						<div class="col-xs-3">
							<a href="" class="btn btn-twitter btn-large btn-caps btnblock">
							Twitter <span class="icon-twitter"></span></a>
						</div>
						
						<div class="col-xs-6">
						
							New User?<a href="<c:url value='/customer/registration'></c:url>" btn btn-facebook btn-large btn-capsbtn-block">Register</a>
						</div>

					</div>
					
					<div class="modal-footer">
					</div>
					
				</div><!--End Modal Content -->
				
			</div><!-- End Modal Dialog -->
			
		</div><!-- End Modal Fade -->  
							
			 		
							
							<!-- modal Ends -->
							
							
							
							--%>
							
							
							
														
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
      				
      						<h4>Academic & Professional</h4>
							<p>A Large variety of Professional books arrived</p>
        
     				 	</div><!-- End carousel Caption -->
     				 
   			 			</div><!-- End Item -->
   			 
    
    		 			<div class="item" id="slide2">
		
							<img class="slide-image" src="<c:url value='/resources/images/book2.png' />"  alt="OOH" />
							
						<div class="carousel-caption">
				
							<h4>Arts, Design and Photography</h4>
							<p>A Large variety of Design & Photography books arrived</p>
				
						</div><!-- End carousel Caption -->
						
						</div><!-- End Item -->    
		
		
		
						<div class="item" id="slide3">
							<img class="slide-image" src="<c:url value='/resources/images/book3.jpg' />"  alt="" />
		
						<div class="carousel-caption">
				
							<h4>Business & Management</h4>
							<p>A Large variety of Management arrived</p>
				
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
 
 
 <hr />
						<div class="row">
							<div class="col-sm-4 col-md-3">
								<h3>Categories</h3>
								<div class="list-group">
									<a href="category.html" class="list-group-item">Academic &amp;Professional</a>
									<a href="category.html" class="list-group-item">Arts, Design and Photography</a>
									<a href="category.html" class="list-group-item">Business &amp;Management</a>
									<a href="category.html" class="list-group-item">Computers &amp; Internet</a>
									<a href="category.html" class="list-group-item">Entertainment</a>
									<a href="category.html" class="list-group-item">Cooking, Food &amp; Wine</a>
									<a href="category.html" class="list-group-item">Luggage &amp; Bags</a>
									<a href="category.html" class="list-group-item">Business & Investing</a>
									<a href="category.html" class="list-group-item">Entrance Exams Preparation</a>
									<a href="category.html" class="list-group-item">Children Books</a>
								</div>
							</div>
										<!--1. Displaying Product Window Starts -->
										
										<div class="col-sm-8 col-md-9">
										 	<div class="row">   
											
											<div class="col-sm-6 col-md-4">
												
												<div class="thumbnail">
													<img src="<c:url value='/resources/images/book6.png' />" alt="">
														<div class="add-to-cart">
															<a href="#" class="glyphicon glyphicon-plus-sign" data-toggle="tooltip" data-placement="top" title="Add to cart"></a>
														</div>
											<div class="caption">
												<h4 class="pull-right">$24.99</h4>
												<h4><a href="product.html">PUMA Red Scooter Books</a></h4>
												<p>Red Saint Hoodie With Contrast Raglan content.</p>
													
												<div class="ratings">
													<p class="pull-right"><a href="product.html#comments">112 reviews</a></p>
														<p>
															<span class="glyphicon glyphicon-star"></span>
															<span class="glyphicon glyphicon-star"></span>
															<span class="glyphicon glyphicon-star"></span>
															<span class="glyphicon glyphicon-star"></span>
															<span class="glyphicon glyphicon-star"></span>
														</p>
												</div>
										</div>
									</div>
								</div>
								
									<!--1. Closing Product Window -->
								
									<!-- 2.Displaying Product Window -->
									
									<div class="col-sm-6 col-md-4">
												<div class="thumbnail">
													<img src="<c:url value='/resources/images/book7.png' />" alt="">
														<div class="add-to-cart">
															<a href="#" class="glyphicon glyphicon-plus-sign" data-toggle="tooltip" data-placement="top" title="Add to cart"></a>
														</div>
											<div class="caption">
												<h4 class="pull-right">$50.99</h4>
												<h4><a href="product.html">Halls Classic Stories</a></h4>
												<p>This book is the perfect collection to your casual knowledge.</p>
													
												<div class="ratings">
													<p class="pull-right"><a href="product.html#comments">105 reviews</a></p>
														<p>
															<span class="glyphicon glyphicon-star"></span>
															<span class="glyphicon glyphicon-star"></span>
															<span class="glyphicon glyphicon-star"></span>
															<span class="glyphicon glyphicon-star"></span>
															<span class="glyphicon glyphicon-star"></span>
														</p>
												</div>
										</div>
									</div>
								</div>
									
									<!-- 2.Closing Product Window -->
								
								<!-- 3.Starting Product Window -->
								
									<div class="col-sm-6 col-md-4">
												<div class="thumbnail">
													<img src="<c:url value='/resources/images/book8.png' />" alt="">
														<div class="add-to-cart">
															<a href="#" class="glyphicon glyphicon-plus-sign" data-toggle="tooltip" data-placement="top" title="Add to cart"></a>
														</div>
											<div class="caption">
												<h4 class="pull-right">$119.99</h4>
												<h4><a href="product.html">Belle Fille Coloured book </a></h4>
												<p>Make your depth og knowledge with this trendy press from Belle Fille.</p>
													
												<div class="ratings">
													<p class="pull-right"><a href="product.html#comments">115 reviews</a></p>
														<p>
															<span class="glyphicon glyphicon-star"></span>
															<span class="glyphicon glyphicon-star"></span>
															<span class="glyphicon glyphicon-star"></span>
															<span class="glyphicon glyphicon-star"></span>
															<span class="glyphicon glyphicon-star"></span>
														</p>
												</div>
										</div>
									</div>
								</div>
								
								<!-- 3.Closing Product Window -->
								
								<!--4.Opening Producr Window  -->
								
									<div class="col-sm-6 col-md-4">
												<div class="thumbnail">
													<img src="<c:url value='/resources/images/book9.png' />" alt="">
														<div class="add-to-cart">
															<a href="#" class="glyphicon glyphicon-plus-sign" data-toggle="tooltip" data-placement="top" title="Add to cart"></a>
														</div>
											<div class="caption">
												<h4 class="pull-right">$1224.99</h4>
												<h4><a href="product.html">Magnus Chase & The Hammer Of Thor</a></h4>
												<p>All the titles clearly mention the approximate dispatch time from our warehouse.</p>
													
												<div class="ratings">
													<p class="pull-right"><a href="product.html#comments">225 reviews</a></p>
														<p>
															<span class="glyphicon glyphicon-star"></span>
															<span class="glyphicon glyphicon-star"></span>
															<span class="glyphicon glyphicon-star"></span>
															<span class="glyphicon glyphicon-star"></span>
															<span class="glyphicon glyphicon-star"></span>
														</p>
												</div>
										</div>
									</div>
								</div>
								
								<!-- 4.Closing Product Window -->
								
								<!-- 5.Opening Product Window -->
								
									<div class="col-sm-6 col-md-4">
												<div class="thumbnail">
													<img src="<c:url value='/resources/images/book10.jpg' />" alt="">
														<div class="add-to-cart">
															<a href="#" class="glyphicon glyphicon-plus-sign" data-toggle="tooltip" data-placement="top" title="Add to cart"></a>
														</div>
											<div class="caption">
												<h4 class="pull-right">$2224.99</h4>
												<h4><a href="product.html">J2EE Complete Guide Book</a></h4>
												<p>Lattest java SE7 added.Servlet and web container has been midified.</p>
													
												<div class="ratings">
													<p class="pull-right"><a href="product.html#comments">145 reviews</a></p>
														<p>
															<span class="glyphicon glyphicon-star"></span>
															<span class="glyphicon glyphicon-star"></span>
															<span class="glyphicon glyphicon-star"></span>
															<span class="glyphicon glyphicon-star"></span>
															<span class="glyphicon glyphicon-star"></span>
														</p>
												</div>
										</div>
									</div>
								</div>
								
								<!-- 5.Closing Product Window -->
								
								<!-- 6.Opening Product Window -->
								
									<div class="col-sm-6 col-md-4">
												<div class="thumbnail">
													<img src="<c:url value='/resources/images/book11.png' />" alt="">
														<div class="add-to-cart">
															<a href="#" class="glyphicon glyphicon-plus-sign" data-toggle="tooltip" data-placement="top" title="Add to cart"></a>
														</div>
											<div class="caption">
												<h4 class="pull-right">$2044.99</h4>
												<h4><a href="product.html">Pupil Workbook Edition4</a></h4>
												<p>This workbook give you immense room of making exercise for different branch.</p>
													
												<div class="ratings">
													<p class="pull-right"><a href="product.html#comments">102 reviews</a></p>
														<p>
															<span class="glyphicon glyphicon-star"></span>
															<span class="glyphicon glyphicon-star"></span>
															<span class="glyphicon glyphicon-star"></span>
															<span class="glyphicon glyphicon-star"></span>
															<span class="glyphicon glyphicon-star"></span>
														</p>
												</div>
										</div>
									</div>
								</div>
								
								<!-- Closing Product Window -->
											
						 	</div>   
																	
							
						</div>  <!-- sm-8 md-9-->
																		
										<!-- 1.Displaying Product Window Ends -->
										
										
										<!-- 2.Displaying Product Window Starts -->
										
						  			<!--	<div class="col-sm-8 col-md-9"> -->
								<!--	<div class="row">  -->
											
											
											
					<!--		</div>   -->
					<!--  	</div>  -->
																		
										<!-- 2.Displaying Product Window Ends -->
										
											
										
							
						</div>		
			
	</div><!-- /.container class with content as the id-->
 
 
 	
  			
</div><!-- End Carousel Container -->

					
</body>

						<div class="container">
					<hr />
					<!-- Footer -->
						<footer>
							<div class="row">
								<div class="col-lg-12">
								<p align="center">Copyright &copy; <a href="#">DevDarshan Book</a> 2016</p>
								</div>
							</div>
						</footer>
					</div>

</html>