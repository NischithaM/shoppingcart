<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>All products website | store</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="jav.js">
</head>
<body>
	
	<div class="container">
		
		<div class="navbar">
		<div class="logo">
			<a href="file:///C:/Users/Umesh%20suryavanshi/Desktop/web/index.html"><img src="logo.png" width="69px"></a>
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

	<div class="small-cat">
		<div class="row row-2">
			<h2>All Products</h2>
			<select>
				<option>Default Shorting</option>
				<option>Short by Prize</option>
				<option>Short by Rating</option>
				<option>Short by Trend</option>
				<option>Short by Sale</option>
			</select>
		</div>
		
		<div class="row">
			<div class="col-4">
				<a href="Tshirt.jsp"><img src="images/product-1.jpg"></a>
				<h4> T-shirt</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>800.00</p>
			</div>
			<div class="col-4">
				<a href="shoes.jsp"><img src="images/product-2.jpg"></a>
				<h4>Adidas Shoes</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>2500.00</p>
			</div>
			<div class="col-4">
				<a href="MIBand.jsp"><img src="images/noise.jpg"></a>
				<h4>noise smart band</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>4500.00</p>
			</div>
			<div class="col-4">
				<img src="images/titan watch.jpg">
				<h4>titan watch</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>3500.00</p>
			</div>
			<div class="col-4">
				<img src="images/headphone.jpg">
				<h4>headphones</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>2500.00</p>
			</div>
			<div class="col-4">
				<img src="images/wallet.jpg">
				<h4>wallet</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>1500.00</p>
			</div>
			<div class="col-4">
				<a href="pant.jsp"><img src="images/product-3.jpg"></a>
				<h4>Grey Pant</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>500.00</p>
			</div>
		</div>
		<div class="row">
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
				<p>950.00</p>
			</div>
			<div class="col-4">
				<img src="images/product-5.jpg">
				<h4>fila Shoes</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>3500.00</p>
			</div>
			<div class="col-4">
				<img src="images/product-12.jpg">
				<h4>Nike Black pant</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>1500.00</p>
			</div>
		</div>
		
		<div class="row">
			<div class="col-4">
				<img src="images/product-6.jpg">
				<h4>Puma shirt</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>1150.00</p>
			</div>
			<div class="col-4">
				<img src="images/product-7.jpg">
				<h4>Socks</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>250.00</p>
			</div>
			<div class="col-4">
				<img src="images/product-8.jpg">
				<h4>Fossil Watch</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>2050.00</p>
			</div>
		</div>
	<div class="row">
			<div class="col-4">
				<img src="images/product-9.jpg">
				<h4>Fastrack Mens Watch</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>1950.00</p>
			</div>
			<div class="col-4">
				<img src="images/product-10.jpg">
				<h4>Puma Black shoes</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>2000.00</p>
			</div>
			<div class="col-4">
				<img src="images/product-11.jpg">
				<h4>sneakers</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>1050.00</p>
			</div>
			<div class="col-4">
				<img src="images/category-1.jpg">
				<h4>Torn Jenas</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>1550.00</p>
			</div>
			<div class="col-4">
				<img src="images/category-2.jpg">
				<h4>white shoes</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>850.00</p>
			</div>
			<div class="col-4">
				<img src="images/category-3.jpg">
				<h4>Pullovers</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>1550.00</p>
			</div>
			<div class="col-4">
				<img src="images/exclusive.png">
				<h4>MI smart band</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>3000.00</p>
			</div>
		</div>

		<div class="page-btn">
			<span>1</span>
			<span>2</span>
			<span>3</span>
			<span>4</span>
			<span>&#8594;</span>
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
	var menuItems = document.grtElementById("menuItems");
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


</body>
</html>