<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%   
       ArrayList<String> list = null;
       
       if(session.getAttribute("msg")==null)
       {
       	list= new ArrayList<String>();
      
       	session.setAttribute("msg",list);
       
       }
       
       else
       {
    	  list= (ArrayList<String>)session.getAttribute("msg");
    	   
    	   
       } %> 
<body>
  <%    
   if(list != null)
   { 
       for(int i=0; i<list.size();i++)
       {
    	   %>
    	   
    	           <%= list.get(i)%>
    	           <br>
    	  
    	   
    	<% 
    	   
       }
   }
       %>   

</body>
</html>