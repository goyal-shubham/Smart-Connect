<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*"%>
<%!public ResultSet rs1 = null;
	
	%>  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="GeoSuggestions.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<%
		Connection conn = controller.Dao.getCon();
		Statement st = null;
		try {
			st = conn.createStatement();
		
			String 	sql1 = "SELECT * FROM usermaster where city = '" + request.getAttribute("citys") + "' or major  = '" + request.getAttribute("major1")+"'";
		
			rs1 = st.executeQuery(sql1);
		} catch (SQLException e) {

		} 
		%>
<script>


		$(document).on("click",".friend-grid", function (e) {
  e.preventdefault;
  $(this).parents('.friends-grids').fadeOut(300);
}); </script>

<%-- $(document).ready(function(){
	alert("kk");
	
	alert("id ");
  <% if(session.getAttribute("connectID"); %>
  		alert("run");
	$('#KG').fadeIn();
	$('#RM').fadeIn();
  }
 if(<% session.getAttribute("connectID"); %>==2){
  
	$('#KS').fadeIn();
	$('#SG').fadeIn();
  }
 
 
}); --%>
	
	<style>#tick{
 height: 30px;
 width: auto;
 margin-top: 7px;
 opacity: 0.8;

} </style>

</head>
<body>
<div id="header-wrapper">
  <div id="header" class="container">
    <div id="logo">
      <h1><a href="#">Random Connect</a></h1>
</div>
    <div id="menu">
      <ul>
        <li ><a href="../Home/HomePage.html" accesskey="1" title="">Homepage</a></li>
      <li><a href="../Profile/Profile.html" accesskey="2" title="">Profile</a></li>
        <li ><a href="#" accesskey="3" title="">Friends</a></li>
         <li><a href="../Connect/Connect.html" accesskey="4" title="">CONNECT</a></li>
        <li><a href="../LoginSignUp/login.html" accesskey="5" title="">Logout</a></li>
      </ul>
    </div>
  </div>
</div>
<div id="header-featured">
	<div id="WelcomeName"><h1>Suggestions for you, <%= session.getAttribute("fname") %>! </h1> </div>
 </div>

<div id="wrapper">

		<div class="wrapper-demo">
				
				<!--start-wrapper-dropdown-2-->
					<div id="dd" class="wrapper-dropdown-2" tabindex="1">Suggestions
															<% 		while (rs1.next()) { %>						
								
							<ul class="dropdown">	
								<div class="friends-grids" id="KG">
									<div class="grids-left">
										<img src="<%=rs1.getString(14)%>"/>
									</div>	
									<div class="friend-grid"> <p class="flowers"></p></div>
									<div class="grids-right">
										<h2><%=rs1.getString(2)%></h2>
									
										<ul class="grids-right-info">
										
										<div class="clear"> </div>
										</ul>
									</div>
									
									<div class="clear"> </div>
								</div>
								</ul>
			<%} %>	
									
								</div>
							
			</div>
		




  
</div>



<div id="copyright" class="container">
  <p>&copy; Smart Connect. All rights reserved.</p>
</div>
</body>
</html>
