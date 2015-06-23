<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact</title>
        <style type="text/css">
		body {background: #2980b9;}
		td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		
	</style>
    </head>
    <body>
        <div align="center">
	        <h1>Мои контакты</h1>
        	<table border="2">
        		<th>ID</th>
	        	
	        	<th>Username</th>
	        	<th>Password</th>
	        	<th>Delete</th>
	        
	        	
				<c:forEach var="user" items="${userList}" varStatus="status">
	        	<tr>
	        	    <td>${user.id}</td>
	        		
					<td>${user.name}</td>
					<td>${user.password}</td>
					<td><a href="<c:url value='/remove/${person.id}' />" >Delete</a></td>
							
	        	</tr>
				</c:forEach>	        	
        	</table>
        </div>
    </body>
</html>