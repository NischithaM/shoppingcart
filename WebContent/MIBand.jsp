<!DOCTYPE html>
<%@page import="com.cruds.entity.Product"%>
<%@page import="java.util.List"%>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>All products website | store</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
</head>
<body>
	


<div class="container">
		
		<div class="navbar">
		<div class="logo">
			<a href="index.html"><img src="logo.png" width="69px"></a>
		</div>
		<nav>
			<ul id="menuItems">
				<li><a href="index.html">Home</a></li>
				<li><a href="products.jsp">Products</a></li>
				<li><a href="AboutUs.jsp">About</a></li>
				<li><a href="http://www.crudsinfotech.com/">Contact</a></li>
				
			</ul>
		</nav>
		<a href="cart.jsp"><img src="images/cart.png" width="30px" height="30px"></a>
		<img src="images/menu.png" class="menu" onclick="menutoggle()">
	</div>
	</div>

	<div class="small-cat single-product">
		<div class="row">
 <div class="col-2">
 
 		
				<%-- <img src=<%=p.getItemimage() %> width="100%" id="ProductImg"> --%> 
				<img src="images/band.jpg">
				<div class="small-img-row">
					<div class="small-img-col">
						<img src="images/band1.jpg" width="100%" class="small-img">
					</div>
					<div class="small-img-col">
						<img src="images/band2.jpg" width="100%" class="small-img">
					</div>
					<div class="small-img-col">
						<img src="images/band3.jpg" width="100%" class="small-img">
					</div>
					<div class="small-img-col">
						<img src="images/band4.jpg" width="100%" class="small-img">
					</div>
					
				</div>

			</div>
			<div class="col-2">
				<p>Home / SmartBand</p>
				 <h1> SmartBand </h1>
				 <h4>4500 </h4>
				
				<select>
					<option>Select Size</option>
					<option>Medium Size</option>
					<option>Long Size</option>
					<option>Small Size</option>
					<option>XL</option>
					<option>XXl</option>
				</select>
				<input type="number" value="1">
				<!-- <a href="cart.jsp" class="btn" id="myButton1" onclick="change()">Add To Cart </a> -->
				<a href = "CartServlet?itemid=7&itemname=Noise Smart Band&itemprice=4500&itemqty=1&itemimage=images/band.jpg" 
				class="btn" id="myButton1" onclick="change()">add to cart</a>
				<h3>Product Details <i class="fa fa-indent"></i></h3>
				<br>
				<p>Product details </p>
			</div>
		</div>
	</div>



	<div class="small-cat">
		<div class="row row-2">
			<h2>Related Product</h2>
			<p class="new">View more</p>
		</div>
	</div>





	<div class="small-cat">
		
		<div class="row">
			<div class="col-4">
				<a href="Tshirt.jsp"><img src="images/product-1.jpg"></a>
				<h4>Printed T-shirt</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$50.00</p>
			</div>
			<div class="col-4">
				<a href="shoes.jsp"><img src="images/product-2.jpg"></a>
				<h4>Adidas shoes</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$50.00</p>
			</div>
			<div class="col-4">
				<a href="pant.jsp"><img src="images/product-3.jpg"></a>
				<h4>Grey Pant</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-half-o"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$50.00</p>
			</div>
		
		
			<div class="col-4">
				<img src="images/product-4.jpg">
				<h4>Printed T-shirt</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$50.00</p>
			</div>
			</div>
			
		

		
		

</div>




<div class="footer">
	<div class="cat">
		<div class="row">
			
			<div class="footer-col-1">
				<h3>Download our App</h3>
				<p>Download App for Andriod and ios mobile phone.</p>
				<div class="applogo">
					<img src="images/play-store.png">
					<img src="images/app-store.png">

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

<script type="text/javascript">
	var menuItems = document.getElementById("menuItems");
	menuItems.style.maxHeight = "0px";

	function menutoggle(){
		if(menuItems.style.maxHeight == "0px"){
			menuItems.style.maxHeight = "200px"
		}
		else{
			menuItems.style.maxHeight = "0px"
		}
	
	}
</script>
<script src="file:///C:/Users/Umesh%20suryavanshi/Desktop/web/new.js"></script>
<script >
	function change() // no ';' here
{
    var elem = document.getElementById("myButton1");
    if (elem.value=="Add To Cart") elem.value = "Added";
    else elem.value = "Add To Cart";
}
</script>






</body>

	</html>