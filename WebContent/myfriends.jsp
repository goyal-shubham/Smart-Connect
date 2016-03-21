<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<html>
<head>

</head>

<%!public ResultSet rs1 = null;
	
	%>
<body>
	 <form method="post" action="<%=response.encodeUrl(request.getContextPath() + "/Controller?action=viewProfile")%>">
	
	

	<%
		Connection conn = controller.Dao.getCon();
		Statement st = null;
		try {
			st = conn.createStatement();
			//String 	sql1=	"SELECT * FROM usermaster WHERE userid<> " + session.getAttribute("userid")+" &&userid IN (select friendToUserId from friends where status=1 and friendFromUserId=" + session.getAttribute("userid")+" )";
			String 	sql1 =	"select * from usermaster where userid in(select friendToUserId from friends where status= 1 and friendFromUserId = " +session.getAttribute("userid")+ "";
			//String 	sql="SELECT * FROM usermaster where average=(select average from usermaster where userid = " + session.getAttribute("userid")+" ) limit 5";
			
		
			rs1 = st.executeQuery(sql1);
		} catch (SQLException e) {

		}

		while (rs1.next()) {

			
		

	out.println(rs1.getString(2)); %>
	<input type="submit" name="uid" value="<%= rs1.getString(1) %>  " />
	
			<br> </br>
			<% 
		
			
		}
			%>
	</form>
</body>
</html>