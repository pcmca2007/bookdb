<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

<%@ page isELIgnored="false" %>

<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<meta name="viewport"content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<title>Insert title here</title>
</head>
<body>

<div class="container-fluid" id="main">
	<div class="navbar navbar-inverse navbar-fixed-top" style="background:#0000FF;">
		<div class="container-fluid">
		<div class="navbar-header">
      		<a class="navbar-brand" href="#">BookCart</a>
   		 </div>
			<ul class="nav navbar-nav ">
				<li><a href="<c:url value='/home' />">Home</a></li>
				<li><a href="<c:url value='/aboutUs'/>">About us</a></li>
				
				<c:if test="${pageContext.request.userPrincipal.name !=null }">
				
					<security:authorize access="hasRole('ROLE_ADMIN')">
						<li><a href="<c:url value='/admin/book/addBook' />" >Add NewBook</a></li>
					</security:authorize>
					
						<li><a href="<c:url value='/bookListAngular' />" >Browse All Books</a></li>
						<li><a>Welcome&nbsp<span style="font-color:red"> ${pageContext.request.userPrincipal.name}</span></a></li>
						
						<security:authorize access="hasRole('ROLE_USER')">
							<li><a href="<c:url value='/cart/getCartId' />" >Cart</a></li>	
						</security:authorize>
						
						<security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_USER')">
							<!-- For login user -->
							
							<li><a href="javascript:formSubmit()">Logout</a></li>
							
							<form action="${pageContext.request.contextPath}/logout" method="post" id="logoutForm">
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
							</form>
							
						<script>
							function formSubmit() {
								document.getElementById("logoutForm").submit();
							}
						</script>

							
						
						</security:authorize>
					
				</c:if>
				
				<c:if test="${pageContext.request.userPrincipal.name ==null }">
				
							<li><a href="<c:url value="/login"></c:url>">Login</a></li>
							<c:url value="/customer/registration" var="url"></c:url>
							<li><a href="${url }">Register</a></li>
							
				</c:if>
				
				
			</ul>
		</div>
	</nav>
</div>	
</body>
</html>