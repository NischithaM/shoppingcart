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
					<li><a href="products.jsp">Products</a></li>
					<li><a href="orderlist.jsp">View Oders</a></li>
					<li><a href=" AboutUs.jsp">About</a></li>
					<li><a href="http://www.crudsinfotech.com/">Contact</a></li>
					<li><a href="signup.jsp">Account</a></li>
				</ul>
			</nav>
			<img src="images/cart.png" width="30px" height="30px"> <img
				src="images/menu.png" class="menu" onclick="menutoggle()">
		</div>
	</div>
	<div class="small-cat cart-page">
	
	<%String msg=(String)session.getAttribute("MESSAGE") ;
	
	if(msg!= null)
	{%>
	<%=msg %>
	<%} %>
	
		<table>
<% List<Product> cart=(List<Product>)session.getAttribute("cart"); 
	 if(cart!=null){%>
	<%for(Product prod:cart)
		{
		%>
			<tr>
				<th>Product</th>
				<th>Qunatity</th>
				<th>Subtotal</th>
			</tr>
			
			<tr>
			
				<td>
					<div class="cartinfo">
						<img src=<%--  <%String image=(String)session.getAttribute("itemimage");
						if(image != null)
						{%>
						<%=image %>
						<%-- <%} %> --%>
						 <%String img=prod.getImg(); 
						if(img!=null)
						{	%>
						<%=img %>
						<%} %>  
						>
						<div>
							<p> <%-- <%String name=(String)session.getAttribute("itemname");
						if(name != null)
						{%>
						<%=name %>
						<%} %>  --%>
						 <%String name=prod.getName();
						 if(name!=null)
							{	%>
							<%=name %>
							<%} %>
						</p>

							<small class="value-button" id="increase"
								onclick="increaseValue();"> <%-- <%String price=(String)session.getAttribute("itemprice");
						if(price != null)
						{%>
						<%=price %>
						<%} %> --%>
						<%String price=prod.getPrice();
						 if(price!=null)
							{	%>
							<%=price %>
							<%} %>
								</small>
							<!-- <br> <a href="RemoveServlet">Remove</a>  -->
						</div>
					</div>
				</td>
				<td><input type="number" id="quantity" name="quantity"
					value= <%-- <%String qty=(String)session.getAttribute("itemqty");
						if(qty != null)
						{%>
						<%=qty %>
						<%} %> --%>
						<%String qty=prod.getQty();
						 if(qty!=null)
							{	%>
							<%=qty %>
							<%} %>
						></td>
				<td> <%String price1=prod.getPrice(); 
				 if(price1!=null)
							{	%>
							<%=price1 %>
							<%} %></td>
							
							
							  
						<!-- 	<input type="hidden" name="hdnid" value=""/>
				 -->
			</tr>
 
<%} %>
			<%} %>	
		</table>

				

		<div class="total-price">

			<table>
				<tr>
					<td class="value-button" id="decrease" onclick="decreaseValue()">SubTotal</td>
					<td><%String total=(String)session.getAttribute("total");
					if(total !=null)
					{
					%>
					<%=total %>
					<%} %></td>
				</tr>
				<tr>
					<td>Discount</td>
					<td><%String discount=(String)session.getAttribute("dis");
					if(discount !=null)
					{
					%>
					<%=discount %>
					<%} %></td>
				</tr>
				
				<tr>
					<td>Total</td>
					<td><%String totalsum=(String)session.getAttribute("totalsum");
					if(totalsum !=null)
					{
					%>
					<%=totalsum %>
					<%} %></td>
				</tr>
				
				
				<tr>
					<td>Tax</td>
					<td><%String tax=(String)session.getAttribute("tax");
					if(tax !=null)
					{
					%>
					<%=tax %>
					<%} %></td>
				</tr>
				
				<tr>

					<td class="value-button" id="increase" onclick="increaseValue()">Grand Total</td>
					<td><%String overall=(String)session.getAttribute("overall");
					if(overall!=null)
					{
					%>
					<%=overall %>
					<%} %></td>
				</tr>
				
			</table>
			
		</div>
		<form action="OrderServlet" method="post"><button type="submit" class="btn-2">Confirm Order</button></form>
		

	</div>


	<div class="footer">
		<div class="cat">
			<div class="row">

				<div class="footer-col-1">
					<h3>Download our App</h3>
					<p>Download App for Andriod and ios mobile phone.</p>
					<div class="applogo">
						<img src="images/play-store.png"> <img
							src="images/app-store.png">

					</div>
				</div>
				<div class="footer-col-2">
					<img src="logo.png">
					<p>different lines.</p>
				</div>

				<div class="footer-col-1">
					<h3>Useful links</h3>
					<ul>
						<li>Coupons</li>
						<li>Blog Post</li>
						<li>Return Policy</li>
						<li>Join Affiliate</li>
					</ul>

				</div>

				<div class="footer-col-1">
					<h3>Follow us</h3>
					<ul>
						<li>Facebook</li>
						<li>Twitter</li>
						<li>Instagram</li>
						<li>YouTube</li>
					</ul>

				</div>

			</div>
		</div>
		<hr>
		<p class="copyright">Sprith</p>
	</div>

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