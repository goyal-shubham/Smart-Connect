    
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> <title>Main Page</title>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <form id="form1">
	 <!-- <a href="chatPageNew.jsp"> Click here</a> -->
 	<p><a href="<%= response.encodeUrl(request.getContextPath() + "/chatServlet?action=chat") %>">Click here to create a new account</a></p></form>
</body>
</html>