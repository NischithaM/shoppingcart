<%@page import="com.cruds.entity.Orderitem"%>
<%@page import="com.cruds.entity.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	
<!-- <script type="text/javascript">
var selorderid;
function viewProd()
{
	document.productform.hdnOrderId.value=selorderid;
	document.productform.ACTION.value="DELETE";
	document.productform.submit();
}
</script>	
 -->
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

	<div class="row">
		<marquee class="margin"> Your orders </marquee>
	</div>

	<div></div>
	
	<%
	List<Orderitem> olist=(List<Orderitem>) session.getAttribute("ORDER_LIST");
	%>

	<form name="oderlistform" action="OrderListServlet" method="post">
		 <input type="hidden" name="hdnOrderId"/>
		<center><input type="submit"  name="btnsubmit" value="VIEW ORDER"/></center> 
	</form>
<!-- 	
	<form name="productform" action="productslist.jsp">
		 <input type="hidden" name="hdnOrderId"/>
	</form>
	 -->
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
					<th>Item id</th>
					<th>Order Date(YYYY/MM/DD)</th>
					<th>Item Name</th>
					<th>Item price</th>
					<th>Item Quantity</th>
					<th>Order Status</th>
					<!-- <th> </th> -->

				</tr>
			</thead>

			<tbody>
				<%
					if (olist != null) {
						for (Orderitem o : olist) {
				%>
				<tr>
					<%-- <td><%=o.getImage()%></td> --%>
					<td><%=o.getOrderId() %>
					<td><%=o.getItemId()%></td>
					<td><%=o.getOrderdate()%></td>
					<td><%=o.getItemname() %></td>
					<td><%=o.getItemprice() %></td>
					<td><%=o.getItemquantity() %></td>
					<td><%=o.getOrderstatus()%></td>
					<%-- <td><input type="checkbox" onclick="setData(<%=o.getOrderId() %>);"/></td> --%>
					
				</tr>
				<%
					}
					}
				%>
			</tbody>
		</table>
		<!-- <center><input type="button" value="view" onclick="viewProd();" /></input></center> -->
	</div>
			<center><a href="ordersuccess.jsp">BACK</a></center>
</body>
</html>