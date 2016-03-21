<%@ page import="java.util.ArrayList" %>
   <%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    

<html>
 <%   
       ArrayList<String> list = null;
       
       if(session.getAttribute("msg")==null)
       {
       	list= new ArrayList<String>();
      
       	session.setAttribute("msg",list);
       
       }
       
       else
       {
    	  list= (ArrayList<String>)session.getAttribute("msg");
    	   
    	   
       } %> 
<head>

<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<link href="Chat.css" rel="stylesheet" type="text/css"  />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>


<script>
$(document).ready(function () {
    $('.clearfix li').click(function(e) {

        $('.clearfix li').removeClass('clearfixClicked');

        var $this = $(this);
        if (!$this.hasClass('clearfixClicked')) {
            $this.addClass('clearfixClicked');
        }
        //e.preventDefault();
    });
});

var FriendsArray = ["Kartikey Garg check", "Khushboo Solanki", "Rama Gupta"];

var Array = <%=request.getAttribute("msg") %>;


<%!public ResultSet rs1 = null;

%>   <%@page import="java.sql.*"%>

<%
	Connection conn = db.Dao.getCon();
	Statement st = null;
	try {
		st = conn.createStatement();
		/* SELECT * FROM usermaster 
		WHERE userid<>2 && totalFriends < 6 && userid IN (
		select friendToUserId from friends where status=0 and IsActive=0 and friendFromUserId=2
		) */
		
	//String sql1 =	"SELECT * FROM usermaster WHERE userid<> " + session.getAttribute("userid")+"  && totalFriends < 6 &&userid IN (select friendToUserId from friends where status=1 and IsActive=0 and friendFromUserId=" + session.getAttribute("userid")+" )";
		String 	sql="SELECT * FROM usermaster where average=(select average from usermaster where userid = " + session.getAttribute("userid")+" ) and userid != " + session.getAttribute("userid")+" limit 5 ";	
		
		String sql1= "select * from usermaster where userid in(select friendToUserId from friends where status= 1 and friendFromUserId = " + session.getAttribute("userid")+")";
		rs1 = st.executeQuery(sql1);
	} catch (SQLException e) {

	} 
	%>

</script>
<script type="text/javascript">
     var auto = setInterval(    function ()
     {
          $('#show').load('chat_window.jsp').fadeIn("fast");
     }, 1000); // refresh every 5000 milliseconds
</script>

</head>


<body>
	<form id="formnew"  action = "chatStartServlet?action=newMessage">


       
<div class="container clearfix">
  <div class="people-list" id="people-list">
    
    <ul class="list">
    							<% 		while (rs1.next()) { %>
    
      <li class="clearfix clearfixClicked">
        <img src="<%= rs1.getString(14) %>" alt="avatar" />
        <div class="about">
          <div class="name"><%= rs1.getString(2) %></div>
         </div>
      </li>
							<%} %>	

  </ul>
  </div>

  <div class="chat">
    <div class="chat-header clearfix">
<!--       <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/195612/chat_avatar_01_green.jpg" alt="avatar" />
 -->
      <div class="chat-about">
        <div class="chat-with">Chat with User</div>
        <div class="chat-num-messages">Messages</div>
      </div>
      <i class="fa fa-star"></i>
    </div>
    <!-- end chat-header -->

    <div class="chat-history" id="show">
    </div>
    <!-- end chat-history -->

    <div class="chat-message clearfix">
      <textarea name="msg1" id="message-to-send" placeholder="Type your message" rows="3"></textarea>

      <i class="fa fa-file-o"></i> &nbsp;&nbsp;&nbsp;
      <i class="fa fa-file-image-o"></i>

      <button>Send</button>

    </div>
    <!-- end chat-message -->

  </div>
  <!-- end chat -->

</div>
<!-- end container -->      
    </form>
<script id="message-template" type="text/x-handlebars-template">
  <li class="clearfix">
    <div class="message-data align-right">
      <span class="message-data-time">{{time}}, Today</span> &nbsp; &nbsp;
      <span class="message-data-name">Olia</span> <i class="fa fa-circle me"></i>
    </div>
    <div class="message other-message float-right">
      {{messageOutput}}
    </div>
  </li>
</script>

<script id="message-response-template" type="text/x-handlebars-template">
  <li>
    <div class="message-data">
      <span class="message-data-name"><i class="fa fa-circle online"></i> Vincent</span>
      <span class="message-data-time">{{time}}, Today</span>
    </div>
    <div class="message my-message">
      {{response}}
    </div>
  </li>
</script>
</body>
</html>