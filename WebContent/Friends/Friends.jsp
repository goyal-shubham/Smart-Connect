<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head> <%@page import="java.sql.*"%>
<%!public ResultSet rs1 = null;
	
	%>  
	
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="Friends1.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>



</head>
<body>
 <form method="post" action="<%=response.encodeUrl(request.getContextPath() + "/Controller?action=viewProfile")%>">
 
 <%
		Connection conn = controller.Dao.getCon();
		Statement st = null;
		try {
			st = conn.createStatement();
		
			String sql1= "select * from usermaster where userid in(select friendToUserId from friends where status= 1 and friendFromUserId = " + session.getAttribute("userid")+")";
		//String sql1 =	"SELECT * FROM usermaster WHERE userid<> " + session.getAttribute("userid")+"  && totalFriends < 6 &&userid IN (select friendToUserId from friends where status=1 and IsActive=0 and friendFromUserId=" + session.getAttribute("userid")+" )";
			String 	sql="SELECT * FROM usermaster where average=(select average from usermaster where userid = " + session.getAttribute("userid")+" ) and userid != " + session.getAttribute("userid")+" limit 5 ";	
			
		
			rs1 = st.executeQuery(sql1);
		} catch (SQLException e) {

		} 
		%>
 
 
<div id="header-wrapper">
  <div id="header" class="container">
    <div id="logo">
      <h1><a href="#">Random Connect</a></h1>
</div>
    <div id="menu">
      <ul>
        <li ><a href="../welcome.jsp" accesskey="1" title="">Homepage</a></li>
      <li><a href="../Profile/Profile.jsp" accesskey="2" title="">Profile</a></li>
        <li class="current_page_item"><a href="#" accesskey="3" title="">Friends</a></li>
         <li><a href="../Connect/Connect.jsp" accesskey="4" title="">CONNECT</a></li>
        <li><a href="../Login.jsp" accesskey="5" title="">Logout</a></li>
      </ul>
    </div>
  </div>
</div>
<div id="header-featured">
	<div id="WelcomeName"><h1>Your Friends <%=session.getAttribute("fname")%>! </h1> </div>
 </div>

<div id="wrapper">

		<div class="wrapper-demo">
				
				<!--start-wrapper-dropdown-2-->
					<div id="dd" class="wrapper-dropdown-2" tabindex="1">Friends
								
							<ul class="dropdown">	
							
							<% 		while (rs1.next()) { %>
													
								<div class="friends-grids">
									<div class="grids-left">
										<img src="<%=rs1.getString(14)%>" />
									</div>	
									<div class="friend-grid"> <p class="flowers"></p></div>
									<div class="grids-right">
										<h2><%= rs1.getString(2) %> </h2>
									<input type="hidden" name="uid1" value="<%=rs1.getString(1)%>"  />
										<ul class="grids-right-info">
										<li class="chat" style="margin-top:5px;"></li>
										<div class="clear"> </div>
										</ul>
										<input type="submit" name="uid" value="<%=rs1.getString(1)%>"  />
									</div>
									
									<div class="clear"> </div>
								</div>
							<%} %>	
								
							</ul>
					</div>
			</div>
		




  
</div>



<div id="copyright" class="container">
  <p>&copy; Smart Connect. All rights reserved.</p>
</div>
</body>
</html>
