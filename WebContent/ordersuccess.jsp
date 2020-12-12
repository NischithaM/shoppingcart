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

<%String msg=(String)session.getAttribute("MESSAGE") ;%>


<%if(msg!=null) 
{
%>
<h1>
<%=msg %></h1>
<%} %>

<%String orderid=(String)session.getAttribute("orderid");
if(orderid != null)
{%>
<h1>
<%=orderid%>
<%} %></h1>
	


	<%-- <div class="small-cat cart-page">
		<table>

			<tr>
				<th>Product</th>
				<th>Qunatity</th>
				
			</tr>
			
			<tr>
			
				<td>
							<p><%String name=(String)session.getAttribute("itemname");
							if(name != null)
							{%>
							<%=name %>
							<%} %>
						</p>

							<small class="value-button" id="increase"
								onclick="increaseValue();"><%String price=(String)session.getAttribute("itemprice");
						if(price != null)
						{%>
						<%=price %>
						<%} %>
								</small>
							<br> <a href="#">Remove</a>
						</div>
					</div>
				</td>
				<td><input type="number" id="quantity" name="quantity"
					value=<%String qty=(String)session.getAttribute("itemqty");
						if(qty != null)
						{%>
						<%=qty %>
						<%} %>></td>
			</tr>

		</table>



		
			
		</div> --%>
		<!-- <a href=""><button type="submit" class="btn-2">LOGOUT</button></a> -->
		

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