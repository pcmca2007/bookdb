<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ include file="/WEB-INF/views/header.jsp"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
	<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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


			<div ng-app="app">
			<div ng-controller="myController" ng-init="getBookList()">


			
			<H1> List of Books</H1>
				<!--  use JSTL tags -->
				<!--  iterate list of objects -->
				<!--  For each book b in books -->
			<table border="0" class="table table-striped table-hover" class="tg">
				<thead>
					<tr>
						<th>Image</th>
							<th>ISBN</th>
							<th>TITLE</th>
							<th>CATEGORY NAME</th>
							<th>View/edit/delete</th>
					</tr>
				</thead>  
				<tbody>
					<tr ng-repeat="b in books | filter:searchCondition">
						<c:url value="/getBookByIsbn/{{b.isbn}}.png" var="ford"/>
						<c:url value="/resources/images/{{b.isbn}}.png" var="src"/>
						<td><img src="${src }" style=" width: 30%" align="middle"/></td>
						<td><a href="${ford}">{{b.isbn}}</a></td>
						<td>{{b.title}}</td>
						<td>{{b.category.categoryName}}</td>
						<td><a href="getBookByIsbn/{{b.isbn}}"><span class="glyphicon glyphicon-info-sign"></span></a>
						<security:authorize access="hasRole('ROLE_ADMIN')">
							<a href="<c:url value='admin/book/edit/{{b.isbn}}' />"><span class="glyphicon glyphicon-edit"></span></a>
							<a href="<c:url value='/remove/{{b.isbn}}' />"><span class="glyphicon glyphicon-trash"></span></a>
						</security:authorize>
</tr>

				</tbody>
			</table>
			Search: <input type="text" ng-model="searchCondition" placeholder="Search Book">
		</div>
		</div>
		
		
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