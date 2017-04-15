<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="control.Dbconnect" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Friends List</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<meta name="keywords" content="Friends List UI Responsive Web Site Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
<link href="css/style2.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/jquery.js" type="text/javascript"></script>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,100,500,700,200,300' rel='stylesheet' type='text/css'>
</head>
<body>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%HttpSession sess = request.getSession(false); 
Dbconnect db = new Dbconnect();
db.rs=db.st.executeQuery("select friend_id from friends where user_id='"+sess.getAttribute("username")+"'"); 
%>

<!--start-body-->

			<!--star-wrapper-demo-->
			<div class="wrapper-demo">
				<h1>Friend List</h1>
				<!--start-wrapper-dropdown-2-->
					<div id="dd" class="wrapper-dropdown-2" tabindex="1">Friends<i><img src="images/menu.png"/></i>
									 <!-- start search-->
				    <div class="search-box">
					    <div id="sb-search" class="sb-search">
							<form>
								<input class="sb-search-input" placeholder="Enter your search term..." type="search" name="search" id="search">
								<input class="sb-search-submit" type="submit" value="">
								<span class="sb-icon-search"> </span>
							</form>
						</div>
				    </div>
				    <!-- search-scripts -->
					<script src="js/classie.js"></script>
					<script src="js/uisearch.js"></script>
						<script>
							new UISearch( document.getElementById( 'sb-search' ) );
						</script>
					<!-- /search-scripts -->
 				<!-- end search-->
							<ul class="dropdown">							
								<div class="friends-grids">
										
									
									<div class="grids-right">
										<ul>
										<%while(db.rs.next()){ %>
											<li><h2><%=db.rs.getString(1) %></h2><li>
											<%} %>
											</ul>
										
										<!--<img src="images/heart.png" />-->
									
									</div>
									<div class="clear"> </div>
								</div>
															
							</ul>
					</div>
			</div>
			<!--end-wrapper-dropdown-2-->
			<!--start-script-->
			<script type="text/javascript">
							function DropDown(el) {
								this.dd = el;
								this.initEvents();
							}
							DropDown.prototype = {
								initEvents : function() {
									var obj = this;
				
									obj.dd.on('click', function(event){
										$(this).toggleClass('active');
										event.stopPropagation();
									});	
								}
							}
							$(function() {
				
								var dd = new DropDown( $('#dd') );
				
								$(document).click(function() {
									// all dropdowns
									$('.wrapper-dropdown-2').removeClass('active');
								});
				
							});
			</script>
			<!--end-script-->
			<!--end-wrapper-demo-->
			
			<!--end-body-->
	</body>
</html>

