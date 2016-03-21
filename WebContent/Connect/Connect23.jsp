<%@page import="java.sql.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<%!public ResultSet rs1 = null;%>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="Connect.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900"
	rel="stylesheet" />
<link href="Friends1.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>


<script>
$(document).ready(function(){


 $('.column1').click(function(){
	
			$('#pop_background').fadeIn();
			$('#Geo_popup').fadeIn();
			return false;
	});
	$('.column2').click(function(){
	
			$('#pop_background').fadeIn();
			$('#Smart_popup').fadeIn();
			return false;
	});
	$('#pop_background').click(function(){
	
			$('#pop_background').fadeOut();
			$('#Geo_popup').fadeOut();
			$('#Smart_popup').fadeOut();
			
			//document.getElementById("SignUpForm").reset();
			//document.getElementById("loginform").reset();
			return false;
	});
	
	
	
	
});


</script>


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
        <li><a href="../Friends/Friends1.html" accesskey="3" title="">Friends</a></li>
        <li class="current_page_item"><a href="#" accesskey="4" title="">CONNECT</a></li>
        <li><a href="../LoginSignUp/login.html" accesskey="5" title="">Logout</a></li>	
      </ul>
    </div>
  </div>
</div>
<div id="header-featured">
	<div id="WelcomeName"><h1>Let's Connect you KARTIKEY! </h1> </div>
 </div>

<div id="wrapper">
  <div id="featured-wrapper">
    <div id="featured" class="container">
      
      <div class="column1"> <span class="icon icon-globe"></span>
       
          <h1>Geographical Search</h1>
         
        
      </div>
       <a href="#"><div class="column2"> <span class="icon icon-group	"></span>
        
          <h1>Smart Connect</h1>
       
          </div></a>
      
    </div>
  </div>
  
  <div id="extra" class="container">
    <h2>Find people and get connected</h2>
    
    <p>Search different people accordiing to your specifications or let us find you people who fit best to your nature. </p>
    
    Some Of Friends Has Requested To Connect You!
    
    
	<form method="post"
		action="<%=response.encodeUrl(request.getContextPath() + "/Controller?action=approveFriendRequest")%>">


		<div id="wrapper">
			<div class="wrapper-demo">

				<%
					Connection conn = controller.Dao.getCon();
					Statement st = null;
					try {
						st = conn.createStatement();
						String sql = "SELECT * FROM usermaster WHERE userid IN (select friendToUserId from friends where Status=1 and friendFromUserId= " + session.getAttribute("userid")+ "  )";
						
						System.out.println(sql);
						rs1 = st.executeQuery(sql);
					} catch (SQLException e) {

					}
				%>


				<!--start-wrapper-dropdown-2-->
				<div id="dd" class="wrapper-dropdown-2" tabindex="1">
					Friends
					<ul class="dropdown">

						<%

							if (rs1.next() == false) {
						%>
						<b>There are no friends to show. Either you have sent the
							request or it does not match to your criteareas.</b>

						<%
							}
						%> 

						<%
						//System.out.println(rs1.next());
							while (rs1.next()) {
							
						%>
						<%=rs1.getString(2)%>
						<%=rs1.getString(1)%>
						<div class="friends-grids">
							<div class="grids-left">
								<img src="images/KG.jpg" />
							</div>
							<div class="friend-grid">
								<p class="flowers"></p>
							</div>
							<div class="grids-right">
								<h2><%=rs1.getString(2)%>
								</h2>

								<ul class="grids-right-info">
									<li class="chat" style="margin-top: 5px;"></li>
									<div class="clear"></div>
								</ul>

								<input type="hidden" id="friendid" name="friendid"
									value="<%=rs1.getString(1)%>"> <input type="submit" name="uid" value="Submit" />
							</div>

							<div class="clear"></div>
						</div>
						<%
							}
						%>

					</ul>
				</div>
			</div>


		</div>
	</form>
    

    <a href="../Suggestions/FriendRequest.jsp" class="button">Please Click Here To Approve Friend Requests</a> </div>
</div>


<div id ="pop_background">


	</div>

<div id="Geo_popup" >
		
		
		
		<form id="loginform" action="#" >
		
		<h1>Geo Search</h1> 
		<input id="LoginInput" type="email" name="loginEmail" align= "middle" autocomplete="off" placeholder="Email ID" required autofocus>
		<br>
		<input id="LoginPassword" type="password" name="loginPsw" autocomplete="off" placeholder="Password" required>
		<br>
		<input id="loginSubmit" type="button" value="Sign In" onclick="validateLogin()">	
		</form>
</div>
<div id="Smart_popup" >
		
		<div id="GoSpan"><h2>Lets get you connected.!!</h2></div>
		<a href="../Suggestions/Suggestions.jsp"><div class="GO"> 
        
          <h1>GO !</h1>
       
          </div></a>
		
</div>


<div id="copyright" class="container">
  <p>&copy; Smart Connect. All rights reserved.</p>
</div>
</body>
</html>
