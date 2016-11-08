<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>

<%@ include file="header.jsp" %>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width , initial-scale-1">
<title>Megabyte Technology</title>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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


<h3 align="center">Add Book</h3>
								<!--  http://localhost:8080/welcomehelloworld/admin/book/addBook -->
	
								<c:url value="/admin/book/addBook"  var="url"></c:url>
							<div align="center">	
							<form:form method="post" action="${url}" commandName="bookFormObj" enctype="multipart/form-data">
								<table>
									<tr>
										<td><form:label path="isbn"></form:label></td>
										<td><form:hidden path="isbn"/></td>
									</tr>
									<tr>
										<td><form:label path="title">TITLE</form:label></td>
										<td><form:input path="title"></form:input></td>
										<form:errors path="title"></form:errors>
									</tr>
									<tr>
										<td><form:label path="publication">PUBLICATION</form:label></td>
										<td><form:input path="publication"></form:input></td>
										<form:errors path="publication"></form:errors>
									</tr>
									<tr>
										<td><form:label path="price">PRICE</form:label></td>
										<td><form:input path="price"></form:input></td>
										<form:errors path="price"></form:errors>
									</tr>
									<tr>
										<td><form:label path="author">AUTHOR</form:label></td>
										<td><form:input path="author"></form:input></td>
										<td><form:errors path="author"></form:errors>
									</tr>
									
									<tr><td><form:label path="bookImage"></form:label></td>
									<td><form:input type="file" path="bookImage"/></td>
									</tr>
	
									<tr>
										<td><form:label path="category">CATEGORY</form:label></td>
										<td>
											<form:radiobutton path="category.cid" value="1"/>New Arrivals
											<form:radiobutton path="category.cid" value="2"/>Special Edition	
											<form:radiobutton path="category.cid" value="3"/>Discount Sale
											<form:radiobutton path="category.cid" value="4"/>General
										</td>
									</tr>
									<tr>
										<td colspan="2"><input type="submit" value="AddBook"></td>
									</tr>
								</table>
						</form:form>
					</div>
								
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
								

</body>
</html>