
<!DOCTYPE html>
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
				<img src="logo.png" width="69px">
			</div>


			<img src="images/menu.png" class="menu" onclick="menutoggle() ">
		</div>
	</div>

	<div class="account-page">
		<div class="cat">
			<div class="row">
				<div class="col-2">
					<img src="images/image1.png" width="100%">
				</div>
				<div class="col-2">
					<div class="form-cat">
						<div class="form-btn">
							<span onclick="login()">Login</span>
							
											 <a href="login.jsp">
											<button>LOGIN</button>
											</a>
						</div>

									 
						
						<%-- <form id="LoginForm" action="LoginServlet" method="post">
							<input type="text" name="emailid" placeholder="Email ID">
							<input type="password" name="password" placeholder="Password">
							<button type="submit" class="btn">Login</button>
							<a href="">Forgot password</a>
							<%
		
								String msg=(String)request.getAttribute("MESSAGE");
								if(msg != null){
							%>
							<h1 style="color: red"><%= msg  %></h1>
							<%
							}
							%>
						</form> --%>

						<%-- <form id="RegForm" action="RegisterServlet" method="post">
						<div class="wrap-input100 validate-input" data-validate="please enter all data">
							<input type="text" name="username" placeholder="Usernmae">
							 <input type="email" name="emailid" placeholder="Email"> 
							 <input type="password" name="password"	placeholder="Password">
							<button type="submit" class="btn">Register</button>
									<%
		
								String msg1=(String)request.getAttribute("MESSAGE");
								if(msg1 != null){
							%>
							<h1 style="color: red"><%= msg1  %></h1>
							<%
							}
							%>
							</div>
						</form>
 --%>
				</div>
				</div>
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

	<script type="text/javascript">
		var LoginForm = document.getElementById("LoginForm");
		var RegForm = document.getElementById("RegForm");
		var Indicator = document.getElementById("Indicator");

		function register() {
			RegForm.style.transform = "translateX(0px)";
			LoginForm.style.transform = "translateX(0px)";
			Indicator.style.transform = "translateX(100px)";

		}
		function login() {
			RegForm.style.transform = "translateX(300px)";
			LoginForm.style.transform = "translateX(300px)";
			Indicator.style.transform = "translateX(0px)";

		}
	</script>


</body>
</html>