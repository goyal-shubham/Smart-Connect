
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="FriendsProfile.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="Check.css" rel="stylesheet" type="text/css" media="all" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>



</head>
<body>
<div id="header-wrapper">
  <div id="header" class="container">
    <div id="logo">
      <h1><a href="#">Random Connect</a></h1>
</div>
    <div id="menu">
      <ul>
        <li ><a href="../welcome.jsp" accesskey="1" title="">Homepage</a></li>
         <li><a href="../Profile/Profile.jsp" accesskey="2" title="">Profile</a></li>
        <li><a href="../Friends/Friends.jsp" accesskey="3" title="">Friends</a></li>
        <li class="current_page_item"><a href="#" accesskey="4" title="">CONNECT</a></li>
        <li><a href="../Login.jsp" accesskey="5" title="">Logout</a></li>
      </ul>
    </div>
  </div>
</div>

 
 
 <div id="one">

<h1 class="title-pen"> User Profile </h1>
		<div class="user-profile">
		  <img class="avatar" src="<%= request.getAttribute("pic") %>" alt="Profile Image" />
		  <div class="username"><%= request.getAttribute("friendname") %></div>	
			  <div class="bio">
			   Friend
			  </div>
		  
			  <ul class="data">
				
			   
			  </ul>
			  
			  <div class="description">
				City : <span id=""><%= request.getAttribute("city") %></span> <br> <br>
				Major : <span id=""> <%= request.getAttribute("major") %> </span> <br> <br>
				Minor : <span id=""><%= request.getAttribute("minor") %></span>  <br> <br>
				Hobby : <span id=""> <%= request.getAttribute("hobby1") %></span> <br> <br>
				Hobby :<span id=""><%= request.getAttribute("hobby2") %></span>  <br> <br>
				
			  </div>
		</div>

</div>
 
 
	
 
<!--
<div id="wrapper">

		<div class="wrapper-demo">
				
				<!--start-wrapper-dropdown-2
					<div id="dd" class="wrapper-dropdown-2" tabindex="1">Friends
								
							<ul class="dropdown">							
								<div class="friends-grids">
									<div class="grids-left">
										<img src="images/KG.jpg" />
									</div>	
									<div class="friend-grid"> <p class="flowers"></p></div>
									<div class="grids-right">
										<h2>Kartikey Garg</h2>
									
										<ul class="grids-right-info">
										<li class="chat" style="margin-top:5px;"></li>
										<div class="clear"> </div>
										</ul>
									</div>
									
									<div class="clear"> </div>
								</div>
								
								<div class="friends-grids">
									<div class="grids-left">
										<img src="images/KS.jpg" />
									</div>	
									<div class="friend-grid"><p class="flowers"></p></div>
									<div class="grids-right">
										<h2>Khushboo Solanki</h2>
										<!--<img src="images/heart.png" />
									<ul class="grids-right-info">
											<li class="chat" style="margin-top:5px;"></li>
										<div class="clear"> </div>
									</ul>
									</div>
									<div class="clear"> </div>
								</div>
								
								<div class="friends-grids">
									<div class="grids-left">
										<img src="images/RM.jpg" />
									</div>	
									<div class="friend-grid"><p class="flowers"></p></div>
									<div class="grids-right">
										<h2>Rama Gupta</h2>
										<!--<img src="images/heart.png" />
									<ul class="grids-right-info">
											<li class="chat" style="margin-top:5px;"></li>
										<div class="clear"> </div>
									</ul>
									</div>
									<div class="clear"> </div>
								</div>

								<div class="friends-grids">
									<div class="grids-left">
										<img src="images/SG.jpg" />
									</div>	
									<div class="friend-grid"><p class="flowers"></p></div>
									<div class="grids-right">
										<h2>Shubham Goyal</h2>
										<!--<img src="images/heart.png" />
									<ul class="grids-right-info">
											<li class="chat" style="margin-top:5px;"></li>
										<div class="clear"> </div>
									</ul>
									</div>
									<div class="clear"> </div>
								</div>

							<div class="friends-grids">
									<div class="grids-left">
										<img src="images/PKR.jpg" />
									</div>	
									<div class="friend-grid"><p class="flowers"></p></div>
									<div class="grids-right">
										<h2>Pooja Karpey Rao </h2>
										<!--<img src="images/heart.png" />
									<ul class="grids-right-info">
											<li class="chat" style="margin-top:5px;"></li>
										<div class="clear"> </div>
									</ul>
									</div>
									<div class="clear"> </div>
								</div>
							</ul>
					</div>
			</div>
		




  
</div>-->





<div id="copyright" class="container">
  <p>&copy; Smart Connect. All rights reserved.</p>
</div>
</body>
</html>
