<!DOCTYPE html>
<html>
<head>
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Smart Connect</title>
<style>
body {
	display: block;
	position: relative;
	font-family: Montserrat;
}

@import url("http://fonts.googleapis.com/css?family=Roboto:100");

html, body {
	width: 100%;
	height: 100%;
	overflow: hidden;
	position: relative;
}

html {
	background: #222;
}

.logo {
	position: absolute;
	width: 300px;
	height: 300px;
	left: 50px;
	margin: 80px auto;
	text-align: center;
	animation: animate 3s infinite ease;
}

.logo:before, .logo:after {
	position: absolute;
	content: '';
	width: 200px;
	height: 200px;
	top: 50px;
	-webkit-transform: rotate(45deg);
	transform: rotate(45deg);
	background: rgba(0, 155, 255, 0.05);
	z-index: 0;
	box-shadow: 0 0 0 1px #fff, 0 0 10px 1px #008080, inset 0 0 10px 1px
		#008080;
}

.logo:before {
	left: 35px;
}

.logo:after {
	right: 35px;
}

.logo h1 {
	z-index: 100;
	line-height: 300px;
	font-family: Roboto, Sans-Serif;
	letter-spacing: 5px;
	font-size: 25px;
	color: #fff;
	text-shadow: 0 0 6px #0ff;
}

@
-webkit-keyframes animate { 0% {
	width: 300px;
}

50%
{
width


:

 

240
px


;
}
}
@
keyframes animate { 0% {
	width: 300px;
}

50%
{
width


:

 

240
px


;
}
}
.Signup-block {
	width: 480px;
	padding: 20px;
	margin: 50px auto;
	clear: both;
	background: #fff;
	border-radius: 5px;
	border-top: 5px solid #ff656c;
	text-align: center;
}

.Signup-block h1 {
	text-align: center;
	color: #000;
	font-size: 18px;
	text-transform: uppercase;
	margin-top: 0;
	margin-bottom: 20px;
}

.SInput {
	width: 100%;
	height: 42px;
	box-sizing: border-box;
	border-radius: 5px;
	border: 1px solid #ccc;
	margin-bottom: 20px;
	font-size: 14px;
	font-family: Montserrat;
	padding: 0 20px 0 50px;
	outline: none;
}

.SInput#City {
	background: #fff url('location1.png') 20px top no-repeat;
	background-size: 16px 30px;
	background-position: 15px 5px;
}

.SInput#State {
	background: #fff url('location1.png') 20px top no-repeat;
	background-size: 16px 30px;
	background-position: 15px 5px;
}

.SInput#Country {
	background: #fff url('location1.png') 20px top no-repeat;
	background-size: 16px 30px;
	background-position: 15px 5px;
}

.SInput#City:focus {
	background: #fff url('location.png') 20px top no-repeat;
	background-size: 16px 30px;
	background-position: 15px 5px;
}

.SInput#State:focus {
	background: #fff url('location.png') 20px top no-repeat;
	background-size: 16px 30px;
	background-position: 15px 5px;
}

.SInput#Country:focus {
	background: #fff url('location.png') 20px top no-repeat;
	background-size: 16px 30px;
	background-position: 15px 5px;
}

.SInput.Name {
	background: #fff url('u0XmBmv.png') 20px top no-repeat;
	background-size: 16px 80px;
}

.SInput.Name:focus {
	background: #fff url('u0XmBmv.png') 20px bottom no-repeat;
	background-size: 16px 80px;
}

.SInput#EmailID {
	background: #fff url('u0XmBmv.png') 20px top no-repeat;
	background-size: 16px 80px;
}

.SInput#EmailID:focus {
	background: #fff url('u0XmBmv.png') 20px bottom no-repeat;
	background-size: 16px 80px;
}

.SInput#REmailID {
	background: #fff url('u0XmBmv.png') 20px top no-repeat;
	background-size: 16px 80px;
}

.SInput#REmailID:focus {
	background: #fff url('u0XmBmv.png') 20px bottom no-repeat;
	background-size: 16px 80px;
}

.SInput#password {
	background: #fff url('Qf83FTt.png') 20px top no-repeat;
	background-size: 16px 80px;
}

.SInput#password:focus {
	background: #fff url('Qf83FTt.png') 20px bottom no-repeat;
	background-size: 16px 80px;
}

.SInput#Repassword {
	background: #fff url('Qf83FTt.png') 20px top no-repeat;
	background-size: 16px 80px;
}

.SInput#Repassword:focus {
	background: #fff url('Qf83FTt.png') 20px bottom no-repeat;
	background-size: 16px 80px;
}

.SInput:active, .SInput:focus {
	border: 1px solid #ff656c;
}

.Signup-block button {
	width: 100%;
	height: 40px;
	margin-bottom: 8px;
	background: #ff656c;
	box-sizing: border-box;
	border-radius: 5px;
	border: 1px solid #e15960;
	color: #fff;
	font-weight: bold;
	text-transform: uppercase;
	font-size: 14px;
	font-family: Montserrat;
	outline: none;
	cursor: pointer;
}

.Signup-block button:hover {
	background: #ff7b81;
}

#submitBtn {
	width: 100%;
	height: 40px;
	margin-bottom: 8px;
	background: #ff656c;
	box-sizing: border-box;
	border-radius: 5px;
	border: 1px solid #e15960;
	color: #fff;
	font-weight: bold;
	text-transform: uppercase;
	font-size: 14px;
	font-family: Montserrat;
	outline: none;
	cursor: pointer;
}

#submitBtn:hover {
	background: #ff7b81;
}

.Gender input, .Gender label {
	float: left;
	margin-top: 9px;
}

#bcg {
	width: 100%;
	height: 100%;
	z-index: -500;
	position: fixed;
	opacity: 0.6;
	background: url('slider2.jpg') no-repeat fixed center center;
}

label.radio {
	cursor: pointer;
	text-indent: 35px;
	overflow: visible;
	display: inline-block;
	position: relative;
	margin-bottom: 15px;
}

label.radio:before {
	background: #3a57af;
	content: '';
	position: absolute;
	top: 2px;
	left: 0;
	width: 20px;
	height: 20px;
	border-radius: 100%;
}

label.radio:after {
	opacity: 0;
	content: '';
	position: absolute;
	width: 0.5em;
	height: 0.25em;
	background: transparent;
	top: 7.5px;
	left: 4.5px;
	border: 3px solid #ffffff;
	border-top: none;
	border-right: none;
	-webkit-transform: rotate(-45deg);
	-moz-transform: rotate(-45deg);
	-o-transform: rotate(-45deg);
	-ms-transform: rotate(-45deg);
	transform: rotate(-45deg);
}

input[type=radio]:checked+label:after {
	opacity: 1;
}

input[type=radio] {
	visibility: hidden;
}

#Pgen {
	float: left;
	margin-top: 11px;
	color: #989898;
}
</style>
<script>
	function FormValidation() {
		var email = document.getElementById("emailid").value;
		var c_email = document.getElementById("emailid1").value;
		var fname = document.getElementById("fname").value;
		var lname = document.getElementById("lname").value;

		var pswd = document.getElementById("password").value;
		var Cpswd = document.getElementById("Repassword").value;
		var pswd_len = pswd.length;
		var fname_len = fname.length;
		var lname_len = lname.length;
		var email_len = email.length;
		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		if (fname_len == 0) {
			alert("Enter Full Name");
			document.getElementById("fname").focus();
			return false;
		}
		if (lname_len == 0) {
			alert("Enter Last Name");
			document.getElementById("lname").focus();
			return false;
		}
		if (email_len == 0) {
			alert("Enter Email Address");
			document.getElementById("emailid").focus();
			return false;
		}
		if (email.match(mailformat)) {
		} else {
			alert("You have entered an invalid email address!");
			document.getElementById("emailid").value = "";
			document.getElementById("emailid").focus();
			return false;
		}

		if (email != c_email) {
			alert("Email address dont match");
			document.getElementById("emailid").value = "";
			document.getElementById("emailid").focus();
			return false;
		}

		if (pswd_len == 0 || pswd_len >= 15 || pswd_len < 8) {
			alert("Password Length should be between 8 to 15");
			document.getElementById("pass").focus();
			return false;
		}
		if (pswd != Cpswd) {
			alert("Paswwords do not match");
			document.getElementById("pass").value = "";
			document.getElementById("Repassword").value = "";
			document.getElementById("pass").focus();
			return false;
		}
	}
</script>
</head>
<body>
	<div id="bcg"></div>
	<div class="logo">
		<h1>SmartConnect</h1>
	</div>

	<div class="Signup-block">
		<input type="hidden" name="action" value="saveUserData" />

		<p class="message"><%=request.getAttribute("message")%></p>
		<h1>SIGN UP</h1>

		<form method="post" autocomplete="off"
			onsubmit="return FormValidation(this)"
			action="<%=response.encodeUrl(request.getContextPath() + "/Controller?action=saveuserdata")%>">

			<input type="hidden" name="action" value="saveUserData" /> 
			<input type="text" value="<%= request.getAttribute("fname") %>" placeholder="First Name" id="fname"
				class="SInput Name" name="fname"/>
		    <input type="text" value="<%= request.getAttribute("lname") %>" placeholder="Last Name" name="lname" id="lname" class="SInput Name" /> 
		    <input type="email" value="<%= request.getAttribute("email1") %>" placeholder="Email Address" id="emailid" class="SInput" name="email1" /> 
		    <input type="text" value="<%= request.getAttribute("email2") %>" placeholder="Confirm Email " id="emailid1" class="SInput" name="email2"/> 
		    <input type="password" value="" placeholder="Password" name="password" id="pass" class="SInput" /> 
		    <input type="password" value="" name="resetpassword" placeholder="Re-Enter Password" id="Repassword" class="SInput" />
			<div class=" SInput Gender">
				<p id="Pgen">Gender</p>
				<input type="radio" value="None" id="male" name="gen" checked /> <label
					for="male" class="radio" chec>Male</label> <input type="radio"
					value="None" id="female" name="gen" /> <label for="female"
					class="radio">Female</label>
			</div>
			<input type="text" name="city" value="<%= request.getAttribute("city") %>" placeholder="City" id="city"
				class="SInput" /> 
				<input type="submit" id="submitBtn" value="Login" />
		</form>
		<a href="Login.jsp"><button>Already a User - Sign In</button></a>
		<p id="TNC">
			By Signing up, you agree to the <a href="#">terms and condition</a>.
		</p>
	</div>
</body>
</html>
