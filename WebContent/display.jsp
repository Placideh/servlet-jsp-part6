<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL CORE SQL</title>
</head>
<body>
	<!--WHAT THIS HELPS IT CONNECT TO THE DATABASE WITHOUT NEEDING TO FOLLOW ALL OF THOSE SEVEN STEPS OF SQL  -->
	<!--  TO CONNECT TO THE DATABE NEED TO USE A DATASOURCE TAG-->
	<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" 
	url="jdbc:mysql://localhost:3306/profilejsp" 
	user="root" password="toor"/> <!-- so this is how we connect to our database -->
	<sql:query var="rs" dataSource="${db }">SELECT * FROM student</sql:query>
	<!-- so to print the value we just have to use jstl core tag -->
	<c:forEach items="${rs.rows }" var="student">
		<br><c:out value="${student.id}"></c:out>:
		<c:out value="${student.name}"></c:out>:
		<c:out value="${student.marks}"></c:out>
	</c:forEach>
</body>
</html>