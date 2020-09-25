<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL FUNCTION TAG</title>

</head>
<body>
	<!-- so we have to creat a string  -->
	<c:set var="str" value="placid is a java sub junior developer"/>				
	Length: ${fn:length(str )} <!-- this is for length -->
	<!--  using SPLIT FUNCTION-->
	<c:forEach items="${fn:split(str,' ') }" var="s">
		<br>${s}
	</c:forEach>
	<br>
	<!--  USING INDEXOF FUNC-->
	Index: ${fn:indexOf(str,"java") }
	<!-- USING CONTAINS FUNC -->
	<br> 
	Contains:${fn:contains(str,"java") }
	<br>
	<!-- USING IF CONDITION -->
	IsJavaThere:
	<c:if test="${fn:contains(str,'java') }">
		Java it is there 
	</c:if>
	<br>
	<!-- TO UPPERCASE FUNC -->
	ToUpperCase: ${fn:toUpperCase(str)}
	<!--  ENDSWITH-->
	<br>
	EndWith: ${fn:endsWith(str,"developer")}
	
	
</body>
</html>