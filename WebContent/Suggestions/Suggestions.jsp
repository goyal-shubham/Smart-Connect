
<%@page import="java.sql.*"%>
<html>
<head>
<%!public ResultSet finalResults = null;%>
<%!public ResultSet resultConnection = null;%>
<%!public ResultSet rsCheckFriendEntry = null;%>
<%!public ResultSet rsGetFriendSuggestions = null;%>
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
		action="<%=response.encodeUrl(request.getContextPath() + "/Controller?action=sendFriendRequest")%>">
		<div id="wrapper">
			<div class="wrapper-demo">
				<!--start-wrapper-dropdown-2-->
				<div id="dd" class="wrapper-dropdown-2" tabindex="1">
					Smart Suggetions



					<%
					Connection conn = controller.Dao.getCon();

					Statement stConnectionCount = null;
					Statement stCheckFriendEntry = null;
					Statement stGetFriendSuggetions = null;
					Statement st = null;
					try {
						stConnectionCount = conn.createStatement();

						// get number of connections
						String sqlToGetTotalFriends = "SELECT totalFriends from usermaster where userid="+ session.getAttribute("userid") + "";
						// + session.getAttribute("userid") + "";
						System.out.println(sqlToGetTotalFriends);
						resultConnection = stConnectionCount.executeQuery(sqlToGetTotalFriends);

						int getTotalFriends;
						while (resultConnection.next()) {

							getTotalFriends = Integer.parseInt(resultConnection.getString(1));
							System.out.println(getTotalFriends);
							int getRemainingFriends = 5 - getTotalFriends;
							System.out.println(getTotalFriends);
							System.out.println(getTotalFriends + "" + getRemainingFriends);

							if (getTotalFriends < 5) {
								System.out.println("user master without less then 5 friends in user table");
								stCheckFriendEntry = conn.createStatement();

								stGetFriendSuggetions = conn.createStatement();
								String s = "SELECT * from usermaster where average = 2 and userid <> "+ session.getAttribute("userid") + " and userid not in (select friendToUserId from friends where friendFromUserId="+ session.getAttribute("userid") + ")  ";
								rsGetFriendSuggestions = stGetFriendSuggetions.executeQuery(s);
								System.out.println(s);
				%>
				
					<ul class="dropdown">
						<%
							String strCheckRS="";
							while (rsGetFriendSuggestions.next()) {
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
								<h2><%=rsGetFriendSuggestions.getString(2)%></h2>

								<ul class="grids-right-info">
									<div class="clear"></div>
								</ul>
								<input type="hidden" id="friendid" name="friendid"
									value="<%=rsGetFriendSuggestions.getString(1)%>"> <input
									type="submit" name="friendRequestId"
									value="Send Friend Request" />
							</div>

							<div class="clear"></div>
						</div>

						<%
							rsGetFriendSuggestions.getString(2);
										}
							
							if(strCheckRS.isEmpty())
							{
								%>
								
								<b> You dont have proper search right now.</b>
								
								<%
								
							}
							

									} else {
						%>
						<br />
						<b> You can not add friends as you have five friends already.</b>

						<%
							}
								}
							} catch (SQLException e) {
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
