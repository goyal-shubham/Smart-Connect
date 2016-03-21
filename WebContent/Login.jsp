<!DOCTYPE html>
<html>
<head>
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<meta charset="UTF-8">

<title>Smart Connect</title>
<style>
body {
  display: block;
  position: relative;
    
    font-family: Montserrat;
	
	
}

@import url("http://fonts.googleapis.com/css?family=Roboto:100");
html,
body {
  width: 100%;
  height: 100%;
  overflow: hidden;
}
html {
  background: #222;
}
.logo {
  position: relative;
  width: 300px;
  height: 300px;
  margin: 100px auto;
  text-align: center;
  -webkit-animation: animate 3s infinite ease;
          animation: animate 3s infinite ease;
}
.logo:before,
.logo:after {
  position: absolute;
  content: '';
  width: 200px;
  height: 200px;
  top: 50px;
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
  background: rgba(0,155,255,0.05);
  z-index: 0;
  box-shadow: 0 0 0 1px #fff, 0 0 10px 1px #008080, inset 0 0 10px 1px #008080;
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
@-webkit-keyframes animate {
  0% {
    width: 300px;
  }
  50% {
    width: 240px;
  }
}
@keyframes animate {
  0% {
    width: 300px;
  }
  50% {
    width: 240px;
  }
}


.login-block {
    width: 320px;
    padding: 20px;
    background: #fff;
    border-radius: 5px;
    border-top: 5px solid #ff656c;
    margin: 0 auto;
}

.login-block h1 {
    text-align: center;
    color: #000;
    font-size: 18px;
    text-transform: uppercase;
    margin-top: 0;
    margin-bottom: 20px;
}

.login-block input {
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

.login-block input#username {
    background: #fff url('u0XmBmv.png') 20px top no-repeat;
    background-size: 16px 80px;
}

.login-block input#username:focus {
    background: #fff url('u0XmBmv.png') 20px bottom no-repeat;
    background-size: 16px 80px;
}

.login-block input#password {
    background: #fff url('Qf83FTt.png') 20px top no-repeat;
    background-size: 16px 80px;
}

.login-block input#password:focus {
    background: #fff url('Qf83FTt.png') 20px bottom no-repeat;
    background-size: 16px 80px;
}

.login-block input:active, .login-block input:focus {
    border: 1px solid #ff656c;
}

.login-block button {
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

.login-block button:hover {
    background: #ff7b81;
}
#bcg{
width: 100%;
height: 100%;
z-index: -500;
position: fixed;
opacity:0.6;
 background: url('slider2.jpg') no-repeat fixed center center;

}
#submitBtn{
	width: 100%;
    height: 40px;
    text-align: center;
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
</style>
</head>

<body>
<div id="bcg"></div>
<div class="logo">
  <h1>RandomConnect</h1>
</div>
<div class="login-block">
    <form method="post" action="<%= response.encodeUrl(request.getContextPath() + "/Controller?action=dologin") %>">
    <%session.invalidate(); %>
    <input type="hidden" name="action" value="dologin" />
	<h1>Login</h1>
    <input type="email" value="" placeholder="Username" autocomplete="off" id="username" name="emailid"required autofocus/>
    <input type="password" value="" placeholder="Password" id="password" name="pass"  required/>
    <input type = "submit" id="submitBtn"  value="Sign In"/>
	</form>
	<a href="Sign Up.html"><button>New User - Sign Up Now</button></a>
	
	</div>
</body>

</html>