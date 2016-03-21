
<%@page import="java.sql.*"%>
<html>
<head>
<%!public ResultSet rs1 = null;%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900"
	rel="stylesheet" />
<link href="Suggestions.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

<script>
	$(document).on("click", ".friend-grid", function(e) {
		e.preventdefault;
		$(this).parents('.friends-grids').fadeOut(300);
	});
</script>
<style>
#tick {
	height: 30px;
	width: auto;
	margin-top: 7px;
	opacity: 0.8;
}
</style>

</head>
<body>
	<div id="header-wrapper">
		<div id="header" class="container">
			<div id="logo">
				<h1>
					<a href="#">Random Connect</a>
				</h1>
			</div>
			<div id="menu">
				<ul>
					<li><a href="../Home/HomePage.html" accesskey="1" title="">Homepage</a></li>
					<li><a href="../Profile/Profile.html" accesskey="2" title="">Profile</a></li>
					<li><a href="#" accesskey="3" title="">Friends</a></li>
					<li><a href="../Connect/Connect.html" accesskey="4" title="">CONNECT</a></li>
					<li><a href="../LoginSignUp/login.html" accesskey="5" title="">Logout</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div id="header-featured">
		<div id="WelcomeName">
			<h1>Suggestions for you, KARTIKEY!</h1>
		</div>
	</div>
	<form method="post"
		action="<%=response.encodeUrl(request.getContextPath() + "/Controller?action=approveFriendRequest")%>">
		<div id="wrapper">
			<div class="wrapper-demo">

				<%
					Connection conn = controller.Dao.getCon();
					Statement st = null;
					try {
						st = conn.createStatement();
						//check total 5 connection
						
						String sql = " select * from usermaster where userid in (select friendFromUserId from friends where friendToUserId = "+ session.getAttribute("userid") + " and IsActive = 1)";
						
						

						System.out.println(sql);
						rs1 = st.executeQuery(sql);
					} catch (SQLException e) {

					}
				%>

				<!--start-wrapper-dropdown-2-->
				<div id="dd" class="wrapper-dropdown-2" tabindex="1">
					Friend Requests
					<ul class="dropdown">

						<%
						String strCheckRS="";
							//System.out.println(rs1.next());
							while (rs1.next()) {
								strCheckRS+="hi";
						%>

						<div class="friends-grids">
							<div class="grids-left">
								<img src="images/KG.jpg" />
							</div>
							<div class="friend-grid">
								<p class="flowers"></p>
							</div>
							<div class="grids-right">
								<h2><%=rs1.getString(2)%></h2>

								<ul class="grids-right-info">
									<div class="clear"></div>
								</ul>
								<input type="hidden" id="friendid" name="fdrequestid"
									value="<%=rs1.getString(1)%>"> <input type="submit"
									name="friendRequestId" value="Approve the friend Requst" />
							</div>

							<div class="clear"></div>
						</div>
						<%
							}
							
							if(strCheckRS.isEmpty())
							{
							%>
							<b> You dont have new requests right now.</b>
							
							<%
							
							
							}
						%>
					</ul>
				</div>
			</div>






		</div>

	</form>

	<div id="copyright" class="container">
		<p>&copy; Smart Connect. All rights reserved.</p>
	</div>
</body>
</html>
