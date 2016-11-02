<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<%@page isELIgnored="false" %>
<%@ include file="header.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<title>Media Page</title>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style><script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
	
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
								
			


<h3 align="center">BookList</h3>

<div ng-app="app">
	<table class="tg" align="center">
	<tr>
		<th width="80" style="text-align:center;font-weight:bold;">Image</th>
		<th width="80" style="text-align:center;font-weight:bold;">ISBN</th>
		<th width="120" style="text-align:center;font-weight:bold;">TITLE</th>
		<th width="120" style="text-align:center;font-weight:bold;">PUBLISHER</th>
		<th width="120" style="text-align:center;font-weight:bold;">AUTHOR</th>
		<th width="80" style="text-align:center;font-weight:bold;">PRICE</th>
		<th width="90" style="text-align:center;font-weight:bold;">Edit</th>
		<th width="90" style="text-align:center;font-weight:bold;">Delete</th>
	</tr>
	
	
		<tr>
			<td align="center"><img src="<c:url value='/resources/images/${isbn}.png' />" > </td>
			<td align="center">${bookObj.isbn}</td>
			<td align="center">${bookObj.title}</td>
			<td align="center">${bookObj.publication}</td>
			<td align="center">${bookObj.author}</td>
			<td align="center">${bookObj.price}</td>
			<td align="center"><a href="<c:url value='/edit/${bookObj.isbn}' />" ><span class="glyphicon glyphicon-edit"></span>&nbsp;Edit</a></td>
			<td align="center"><a href="<c:url value='/remove/${bookObj.isbn}' />" ><span class="glyphicon glyphicon-trash"></span>&nbsp;Delete</a></td>
			
		</tr>
		<tr></tr>
		<tr>
			<td>
				<div ng-controller="myController">
					<security:authorize access="hasRole('ROLE_USER')">
						<a href="#" ng-click="addToCart(${bookObj.isbn })" class="btnbtn-warning btn-large"><span class="glyphicon glyphicon-shopping-cart"></span></a>
					</security:authorize>
					
				</div>
			</td>
			<td><a href="<c:url value='/bookListAngular'/>"><b>Back</a> </td>
		</tr>
	
	</table>
</div>
		<script src="<c:url value="/resources/js/controller.js"/>"></script>
		
		
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