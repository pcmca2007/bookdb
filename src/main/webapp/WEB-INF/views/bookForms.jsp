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
	</style>
</head>

<body>
				<hr/>
					<c:url value="/admin/book/addBook"  var="url"></c:url>
						

				<form:form action="${url}" commandName="person">
					<table>
						<c:if test="${!empty person.isbn}">
							<tr>
								<td><form:label path=""><spring:message text="ID"/></form:label></td>
								<td><form:input path="" readonly="true" size="8"  disabled="true" /><form:hidden path="" /></td> 
							</tr>
						</c:if>
						
							<tr>
								<td><form:label path=""><spring:message text=""/></form:label></td>
								<td><form:input path="" /></td> 
							</tr>
							
							<tr>
								<td><form:label path=""><spring:message text=""/></form:label></td>
								<td><form:input path="" /></td>
							</tr>
							
							<tr>
								<td colspan="2">
									<c:if test="${!empty person.isbn}">
										<input type="submit" value="<spring:message text="Edit Person"/>" />
									</c:if>
									
									<c:if test="${empty person.isbn}">
										<input type="submit" value="<spring:message text="Add Person"/>" />
									</c:if>
								</td>
							</tr>
					</table>	
				</form:form>
</body>
</html>