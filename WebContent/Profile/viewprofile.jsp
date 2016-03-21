<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<form>

Name: <%= request.getAttribute("friendname") %></br>
city: <%= request.getAttribute("city") %></br>
major: <%= request.getAttribute("major") %></br>
minor: <%= request.getAttribute("minor") %></br>
hobby1: <%= request.getAttribute("hobby1") %></br>
hobby2: <%= request.getAttribute("hobby2") %></br>
<a href="/SmartConnect/Friends/Friends.jsp" >view Friends</a>

	</form>


</body>
</html>