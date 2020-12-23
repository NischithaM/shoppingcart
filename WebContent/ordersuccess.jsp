<!DOCTYPE html>
<%@page import="com.cruds.entity.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.cruds.entity.Cart"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>All products website | store</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
	<div class="container">

		<div class="navbar">
			<div class="logo">
				<a
					href="file:///C:/Users/Umesh%20suryavanshi/Desktop/web/index.html"><img
					src="logo.png" width="69px"></a>
			</div>
			<nav>
				<ul id="menuItems">
					<li><a href="index.html">Home</a></li>
					<li><a href=" AboutUs.jsp">About</a></li>
					<li><a href="http://www.crudsinfotech.com/">Contact</a></li>
					<li><a href="orderlist.jsp">View Orders</a>
				</ul>
			</nav>
			<a href="cart.jsp"><img src="images/cart.png" width="30px"
				height="30px"></a> <img src="images/menu.png" class="menu"
				onclick="menutoggle()">
		</div>
	</div>
	<div class="small-cat cart-page">
		<%
			String msg = (String) session.getAttribute("MESSAGE");
		%>


		<%
			if (msg != null) {
		%>
		<center>
		<h1>
			<%=msg%></h1>
		<%
			}
		%>
		</center>
		<%-- <%
			String orderid = (String) session.getAttribute("orderid");
			if (orderid != null) {
		%>
		<h1>
			<%=orderid%>
			<%
				}
			%>
		</h1> --%>




		<script src="new.js"></script>

		<script type="text/javascript">
			var menuItems = document.getElementById("menuItems");
			menuItems.style.maxHeight = "0px";

			function menutoggle() {
				if (menuItems.style.maxHeight == "0px") {
					menuItems.style.maxHeight = "200px"
				} else {
					menuItems.style.maxHeight = "0px"
				}

			}
		</script>
</body>
</html>