
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="Profile.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script>
$(document).ready(function(){


 $('.column1').click(function(){
	
			$('#pop_background').fadeIn();
			$('#PI_popup').fadeIn();
			return false;
	});
	$('.column2').click(function(){
	
			$('#pop_background').fadeIn();
			$('#EI_popup').fadeIn();
			return false;
	});
	$('#pop_background').click(function(){
	
			$('#pop_background').fadeOut();
			$('#PI_popup').fadeOut();
			$('#EI_popup').fadeOut();
			
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
        <li ><a href="../welcome.jsp" accesskey="1" title="">Homepage</a></li>
        <li class="current_page_item"><a href="#" accesskey="2" title="">Profile</a></li>
        <li><a href="../Friends/Friends.jsp" accesskey="3" title="">Friends</a></li>
        <li><a href="../Connect/Connect.jsp" accesskey="4" title="">CONNECT</a></li>
        <li><a href="login.jsp" accesskey="5" title="">Logout</a></li>
      </ul>
    </div>
  </div>
</div>
<div id="header-featured">
	<div id="WelcomeName"><h1>Let's Update your Profile <%=session.getAttribute("fname")%> </h1> </div>
 </div>
	

	

<div id="wrapper">
  <div id="featured-wrapper">
    <div id="featured" class="container">
      
      <div class="column1"><img src="PI.png" height="155">
       
          <h1>Personal Information</h1>
         
        
      </div>
       <a href="#"><div class="column2"> <img src="EI.gif" height="155">
        
          <h1>Ethical Information</h1>
       
          </div></a>
      
    </div>
  </div>
  
  <div id="extra" class="container">
    <h2>Please provide information in both the above categories</h2>
    <span>This information will be kept private.</span> 
    <p> The above information lets us give you better suggestions and keep you connected with people you would like to be with.  </p>

    <a href="#" class="button">Get Started</a> </div>
</div>


<div id ="pop_background"></div>

<div id="PI_popup" >
		
		<form method="post" autocomplete="off"
			
			action="<%=response.encodeUrl(request.getContextPath() + "/Controller?action=updateuserdata")%>">
			
				<div class="wrapper">
	<div class="form-header">Edit Profile<i class="fa fa-times close"></i></div>
		<div class="form-grp">
			<label>Full name</label>
			
			<input type="text"	value= "<%=session.getAttribute("fname")%>" name="fname"/>
		</div>
		<div class="form-grp">
				<label>Last name</label>
				<input type="text" value= "<%=session.getAttribute("lname")%>" name="lname"/>
		</div>
		<div class="form-grp">
			<label>Email</label>
			<input type="text" value= "<%=session.getAttribute("emailid")%>" name="emailid" readonly />
		</div>
		<div class="form-grp">
			<label>City</label>
			<input type="text" value= "<%=session.getAttribute("city")%>" name="city" />
		</div>
		<div class="form-grp">
			<label>Major</label>
					<select name="major" id="qualification" >
					<option selected="selected" value="Computer Science Engineering">Computer Science Engineering</option>
					<option value="Management in Information System">Management in Information System</option>
					<option value="Management in Business Administration">Management in Business Administration </option>
					<option value="Biomedical Engineering">Biomedical Engineering</option>
					</select>
		</div>
		<div class="form-grp">
					<label>Minor</label>
					<select name="minor" id="qualification">
					  <option selected="selected" value="Computer Science Engineering">Computer Science Engineering</option>
					  <option value="Management in Information System">Management in Information System</option>
					  <option value="Bachelors in Business Administration">Bachelors in Business Administration </option>
					  <option value="4Biomedical Engineering">Biomedical Engineering</option>
					</select>
		</div>
		<div class="form-grp">
					<label>Hobby1</label>
					<select name="hobby1" id="qualification">
					  <option selected="selected" value="Dance">Dance</option>
					  <option value="Football">Football</option>
					  <option value="Trekking">Trekking</option>
					  <option value="Video Games">Video Games</option>
					  <option value="Baseball">Baseball</option>
					  <option value="Cooking">Cooking</option>
					  <option value="Reading Books">Reading Books</option>
					  <option value="Drawing">Drawing</option>
					</select>
		</div>
		<div class="form-grp">
					<label>Select another Hobby</label>
					<select name="hobby2" id="qualification">
					<option selected="selected" value="Dance">Dance</option>
					  <option value="Football">Football</option>
					  <option value="Trekking">Trekking</option>
					  <option value="Video Games">Video Games</option>
					  <option value="Baseball">Baseball</option>
					  <option value="Cooking">Cooking</option>
					  <option value="Reading Books">Reading Books</option>
					  <option value="Drawing">Drawing</option>
					</select>
		</div>

  
		  <div class="form-grp">
			<input type="submit" value="Update profile"/>
		  </div>
		</form>
		
		</div>


</div>


<div id="EI_popup" >
		
		<form method="post" autocomplete="off"	action="<%=response.encodeUrl(request.getContextPath() + "/Controller?action=insertuserdata")%>">
		
		<div class="wrapper">
				<div class="form-header">Ethical Information</div>
				<input type="hidden" value= "<%=session.getAttribute("emailid")%>" name="emailid" readonly />
				<div class="form-grp">
						<label>Integrity Level</label>
						<select name="integrity" id="qualification">
					  <option selected="selected" value="1">1</option>
					  <option value="2">2</option>
					  <option value="3">3</option>
					  <option value="4">4</option>
					  <option value="5">5</option>
					</select>
					
				</div>
				<div class="form-grp">
							<label>Loyality Level</label>
						<select name="loyal" id="qualification">
					   <option selected="selected" value="1">1</option>
					  <option value="2">2</option>
					  <option value="3">3</option>
					  <option value="4">4</option>
					  <option value="5">5</option>
					</select>
				</div>
				<div class="form-grp">
							<label>Respect Level</label>
							<select name="Respect" id="qualification">
					  <option selected="selected" value="1">1</option>
					  <option value="2">2</option>
					  <option value="3">3</option>
					  <option value="4">4</option>
					  <option value="5">5</option>
					</select>
				</div>
				<div class="form-grp">
							<label>Honesty Level</label>
							<select name="Honest" id="qualification">
					  <option selected="selected" value="1">1</option>
					  <option value="2">2</option>
					  <option value="3">3</option>
					  <option value="4">4</option>
					  <option value="5">5</option>
					</select>
				</div>	
				<div class="form-grp">
			<input type="submit" value="Update profile"/>
		  </div>
		</div>
		
		</form>
</div>



<div id="copyright" class="container">
  <p>&copy; Smart Connect. All rights reserved.</p>
</div>
</body>
</html>
