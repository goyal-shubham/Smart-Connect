<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="Connect.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
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
<style>

.wrapper {
  max-width: 500px;

  margin: 2rem auto;
  background: #eceff1;
  padding: 0 0 1rem;
  position: relative;
}

.form-header {
  background: #fff;
  text-align: center;
  font-size: 1.25rem;
  font-weight: 600;
  color: #212121;
  padding: 1rem;
  margin: 0 0 1rem;
  position: relative;
}
.form-header .close {
  position: absolute;
  right: 1rem;
  top: 1.25rem;
  color: #cfd6db;
  cursor: pointer;
  -webkit-transition: color .2s ease;
  transition: color .2s ease;
}
.form-header .close:hover {
  color: #212121;
}

.form-grp {
  margin: 0 2rem 1rem;
}
.form-grp label {
  display: block;
  margin: 0 0 .5rem;
  font-weight: 700;
  letter-spacing: .2px;
  font-size: 1.575rem;
  color: #212121;
}
.form-grp label.inline {
  display: inline-block;
  width: 100px;
}
.form-grp label.inline.right {
  text-align: right;
  padding-right: .5rem;
}

input[type="text"],
input[type="email"],
input[type="password"], select {
  padding: 0.75rem 0.875rem;
  border-radius: 4px;
  outline: 0;
  color: #212121;
  font-size: .875rem;
  width: 100%;
  border: 0.063rem solid #b0bec5;
}

input[type="submit"] {
  padding: 0.75rem 1.5rem;
  margin: .5rem 0 0;
  outline: 0;
  border: 0;
  background: #2196f3;
  border-radius: 4px;
  color: #FFF;
  font-weight: 700;
  font-size: .875rem;
  letter-spacing: .25px;
  -webkit-transition: background .3s ease;
  transition: background .3s ease;
}
input[type="submit"]:hover {
  background: #39a1f4;
}

/*---------------------------*/



</style>


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
       
          <h1>User Specific Search</h1>
         
        
      </div>
       <a href="#"><div class="column2"> <span class="icon icon-group	"></span>
        
          <h1>Smart Connect</h1>
       
          </div></a>
      
    </div>
  </div>
  
  <div id="extra" class="container">
    <h2>Find people and get connected</h2>
    
    <p>Search different people accordiing to your specifications or let us find you people who fit best to your nature. </p>

    <a href="#" class="button">:)</a> </div>
</div>


<div id ="pop_background">


	</div>
    <form method="post" action="<%= response.encodeUrl(request.getContextPath() + "/Controller?action=geosearch") %>">
<div id="Geo_popup" >
		<div class="wrapper">
	<div class="form-header">Choose the Specific details<i class="fa fa-times close"></i></div>
		
		<div class="form-grp">
			<label>City</label>
			<select name="city1" class="SelectCity" id="qualificationS">
					<option selected="selected" value="1">santa clara</option>
					<option value="2">San Jose</option>
					<option value="3">San Francisco </option>
					
					</select>
		</div>
		<div class="form-grp">
			<label>Major</label>
					<select name="major1" class="SelectMajor" id="qualificationM">
					<option selected="selected" value="1">Computer Science Engineering</option>
					<option value="2">Management in Information System</option>
					<option value="3">Management in Business Administration </option>
					<option value="4">Biomedical Engineering</option>
					</select>
		</div>
	
		<input class="GeoGo" type="submit" id="submitBtn"  value="Go!">
	</form>

  
		  <div class="form-grp">
		 
			
		  </div>
		
		
		</div></div>




<div id="Smart_popup" >
		
		<div id="GoSpan"><h2>Lets get you connected.!!</h2></div>
		<a href="../Suggestions/Suggestions.html"><div class="GO"> 
        
          <h1>GO !</h1>
       
          </div></a>
		
</div>


<div id="copyright" class="container">
  <p>&copy; Smart Connect. All rights reserved.</p>
</div>
</body>
</html>
