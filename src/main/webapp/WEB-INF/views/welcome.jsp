<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	${name}. Welcome to Spring MVC! }
	
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
	
	
</body>
</html>