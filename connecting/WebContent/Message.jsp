
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java1.message" %>
<%@page import="control.Dbconnect" %>

<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Messages</title>
  <script src="http://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>


  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Playball'>

      <style>
      /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
      /* Variables */
/* Colors */
/* Common style */
* {
  box-sizing: border-box;
}

body {
  font-family: 'Open Sans', sans-serif;
  color: #4d4d4d;
}

h1 {
  font-family: 'Playball', cursive;
  font-size: 6em;
  font-weight: 700;
  text-align: center;
  color: #2ecc71;
  margin: 0 0.25em 0;
}

h2 {
  font-style: italic;
  text-align: center;
  margin-bottom: 2em;
}

main {
  background: #333;
  width: 100%;
  padding: 30px;
  text-align: center;
  margin-bottom: 30px;
  font-style: italic;
}
main a {
  color: #e75854;
  text-decoration: none;
  transition: color 250ms ease-in-out;
}
main a:hover {
  color: #fafafa;
}

/* Dropdown style */
.dropdown {
  width: 15em;
  margin: 40px 0px 0px 20px;
}
.dropdown dt a {
  display: block;
  height: 2.5em;
  width: 100%;
  border: 1px solid #ecf0f1;
  border-radius: 3px;
  text-decoration: none;
}
.dropdown dt a:hover, .dropdown1 dt a:active {
  border-color: #bdc3c7;
}
.dropdown dt span {
  display: block;
  padding: 0 1em;
  line-height: 2.5em;
  background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAwAAAAKCAYAAACALL/6AAAACXBIWXMAAAsTAAALEwEAmpwYAAAAIGNIUk0AAHo+AACAQQAA+MoAAIC0AAB48QAA9RwAADw3AAAbzhlfIT4AAACJSURBVHjajNAxCsJAEEbhb5cU4i0sbHIaL6IQTxFPo4VeROwXQs4gKW1cWJZEM90wj5l5f0jDeMXBunqENIw7vLD9A09oIxL6FdsvSCENI2zwxH4BTmgxxeJc92P76cuIpRBuc6K45yZWwzPeleixBOLMr30tWgJZuqwcQJNFy2GzkHeHUMPwGQChFSPmzlJ1WgAAAABJRU5ErkJggg==) no-repeat scroll right center;
  border-right: 1em solid transparent;
  cursor: pointer;
}
.dropdown dd {
  position: relative;
}
.dropdown dd ul {
  display: none;
  position: absolute;
  left: 0;
  top: -2.5em;
  width: 100%;
  list-style: none;
  background: #fff none repeat scroll 0 0;
  border: 1px solid #bdc3c7;
  border-radius: 3px;
}
.dropdown dd ul li:first-child a:hover {
  border-radius: 3px 3px 0 0;
}
.dropdown dd ul li:last-child a:hover {
  border-radius: 0 0 3px 3px;
}
.dropdown dd li a {
  display: block;
  padding: 0 1em;
  line-height: 2.5em;
  text-decoration: none;
}
.dropdown dd li a:hover {
  background-color: #2ecc71;
  color: #fff;
  cursor: pointer;
}


.selected {
  font-weight: 700;
}

    </style>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

</head>

<body>
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<h1>Inbox</h1>

<main>
  <p><a href="http://codepen.io/Tombek/pen/OPvpLe" target="_blank">Stay connected ...</a></p>
</main>
<div class="w3-container">
 <div id="send" style="margin:auto;align:center;position:absolute;top:50%;left:35%">
  <button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-green w3-large"style="align:center; padding: 15px 32px; margin:auto">Send Message</button>
</div>
  <div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">

      <div class="w3-center"><br>
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
      
      </div>

      <form class="w3-container" action="sendMessage.jsp">
        <div class="w3-section">
          <label><b>To : </b></label>
          <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Enter Reciever name" name="rcv" required>
          <label><b>Message</b></label>
          <input class="w3-input w3-border" type="text" placeholder="Enter Message" name="msg" required>
          <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">Send</button>
         
        </div>
      </form>

      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
      <div id="cancel" style="left:30%">
        <button onclick="document.getElementById('id01').style.display='none'" type="button" class="w3-button w3-red" >Cancel</button>
       </div>
      </div>

    </div>
  </div>
</div>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
HttpSession sess = request.getSession(false);
String sid=(String)sess.getAttribute("username");
Dbconnect db = new Dbconnect();
Dbconnect d1 = new Dbconnect();
db.rs=db.st.executeQuery("select * from msg where sender='"+sid+"'"); 
d1.rs = d1.st.executeQuery("select * from msg where receiver='"+sid+"'");
%>

<dl class="dropdown">
	<dt><a><span>Sent Messages</span></a></dt>
		<dd>
			<ul>
				<li><a class="default">Sent Messages</a></li>
				<%while(db.rs.next()){ %>
				<li><a>You messaged <%=db.rs.getString(2) %>: <%=db.rs.getString(3) %></h2></a></li>
			<%} %>
				
			</ul>
		</dd>
</dl>

<dl class="dropdown">
	<dt><a><span>Recieved Messages</span></a></dt>
		<dd>
			<ul>
				<li><a class="default">Recieved Messages</a></li>
				<%while(d1.rs.next()){ %>
				<li><a><%=d1.rs.getString(1) %> messaged you: <%=d1.rs.getString(3) %></a></li>
			<%} %>
			</ul>
		</dd>
</dl>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index2.js"></script>

</body>
</html>

