<%@page import="com.cruds.entity.Orderitem"%>
<%@page import="java.util.List"%>
<%@page import="com.cruds.entity.User"%>
<%@page import="com.cruds.entity.Orderitem"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Shopping Cart</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="jav.js">
<link
	href="https://fonts.googleapis.com/css2?family=Quicksand:wght@700&display=swap"
	rel="stylesheet">
</head>
<body>

	<div class="container">

		<div class="navbar">
			<div class="logo"></div>
			<nav>
				<ul id="menuItems">
					<li><a href="index.html">Home</a></li>
					<li><a href=" About.html">About</a></li>
					<li><a href=" http://www.crudsinfotech.com/">Contact</a></li>
					
				</ul>
			</nav>
			<a href=""><img src="images/cart.png" width="30px" height="30px"></a>
			<img src="images/menu.png" class="menu" onclick="menutoggle()">
		</div>
	</div>



	<div></div>
	<br>
	<br>

	<style>
h1 {
	/* font-family: 'Cookie', cursive;
        font-size: "30px";
        color:#800040 ;*/
	font-family: 'Sacramento', cursive;
	font-size: "35px";
	color: #800040;
	text-align: center;
}
</style>


	<%
		User msg = (User) session.getAttribute("MESS");

		if (msg != null) {
	%>

	<h1>
		<%=msg%>

	</h1>
	<%
		}
	%>


	<div class="row">
		<marquee class="margin"> cart items !!!</marquee>
	</div>

	<div></div>
	
	<form action="ProductsServlet" method="post"></form> 
	<%
		List<Orderitem> plist = (List<Orderitem>) session.getAttribute("PROD_LIST");
	%>

	

	<div class="small-cat cart-page">

		<style>
td, th {
	text-align: center;
}
</style>

		<table border="1">
			<thead>
				<tr>
					<th>Order id</th>
					<th>Item name</th>
					<th>Item price</th>
					<th>Item quantity</th>

				</tr>
			</thead>

			<tbody>
				<%
					if (plist != null) {
						for (Orderitem o : plist) {
				%>
				<tr>
					<%-- <td><%=o.getImage()%></td> --%>

					<td><%=o.getOrderId()%> </a></td>
					<td><%=o.getItemname()%></td>
					<td><%=o.getItemprice()%></td>
					<td><%=o.getItemquantity()%></td>

				</tr>
				<%
					}
					}
				%>
			</tbody>
		</table>
	</div>
	<center><a href="ordersuccess.jsp">BACK</a></center>
</body>
</html>
