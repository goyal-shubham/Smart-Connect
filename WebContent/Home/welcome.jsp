
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->

</head>
<body>
<div id="header-wrapper">
  <div id="header" class="container">
    <div id="logo">
      <h1><a href="#">Random Connect</a></h1>
</div>
    <div id="menu">
      <ul>
        <li class="current_page_item"><a href="#" accesskey="1" title="">Homepage</a></li>
        <li><a href="Profile/Profile.jsp" accesskey="2" title="">Profile</a></li>
        <li><a href="../Friends/Friends1.html" accesskey="3" title="">Friends</a></li>
        <li><a href="../Connect/Connect.html" accesskey="4" title="">CONNECT</a></li>
        <li><a href="../LoginSignUp/login.html" accesskey="5" title="">Logout</a></li>
      </ul>
    </div>
  </div>
</div>	
<div id="header-featured">
	<div id="WelcomeName"><h1>Welcome <%=session.getAttribute("fname")%>
! </h1> </div>
 </div>

<div id="wrapper">
  <div id="featured-wrapper">
    <div id="featured" class="container">
      <div class="column1">  <a href="../Profile/Profile.jsp"><span class="icon icon-user"></span>
        <div class="title">
          <h2>My Profile</h2>
        </div></a>
        <p>Set various aspects of your profile in order to make it easy for others to find you. Also that you are suggested relevant people.</p>
      </div>
      <div class="column2"><a href="#"> <span class="icon icon-comments"></span>
        <div class="title">
          <h2>Chat with Friends</h2>
        </div></a>
        <p>Chat with people who have accepted you as friends/known. Exchange messages with people in your friend list.</p>
      </div>
      <div class="column3"><a href="#"> <span class="icon icon-road"></span>
        <div class="title">
          <h2>Play Games</h2>
        </div></a>
        <p>This Application allows you to play games online with your connectioned friends Enjoy!!.</p>
      </div>
      <div class="column4"><a href="../Connect/Connect.html" > <span class="icon icon-group"></span>
        <div class="title">
          <h2>Connect</h2>
        </div></a>
        <p>Lets get you Connected to new people you might be intersted in.</p>
      </div>
    </div>
  </div>
  <div id="extra" class="container">
    <h2>Welcome to Smart Random Connect</h2>
    <span>One truely dedicated application</span> 
    <p>Random connect smartly connects you with people as per your requirements or According to the information you have provided to us about yourself. Have fun :) </p>

    <a href="#" class="button">Etiam posuere</a> </div>
</div>

<div id="copyright" class="container">
  <p>&copy; Smart Connect. All rights reserved.</p>
</div>
</body>
</html>
