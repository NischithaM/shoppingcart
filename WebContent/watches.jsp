<%@page import="com.cruds.entity.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

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
	<!-- 
	<form name="productform" action="WatchServlet" method="post">
		<label>Watch ID</label>
		 <input type="text" name="itemid" />
		 </br> 
		 <input type="hidden" name="hdnItemId"/>
		 <input type="submit"  name="btnsubmit" value="SEARCH"/>
	</form> -->
	<%
		List<Product> plist=(List<Product>)session.getAttribute("WATCH_LIST");
		String msg=(String)request.getAttribute("MESSAGE");
		if(msg != null){
	%>
	<h1><%= msg  %></h1>
	<%
		}
	%>


	<table border="1">
		<thead>
			<tr>
				<td> NAME</td>
				<td> PRIZE</td>
				<td> IMAGE</td>
				
			</tr>
		</thead>

		<tbody>
			<%
			if(plist !=null){
				for(Product prod: plist){
		%>

			<tr>
				<%-- <td><%= prod.getItemname() %></td>
				<td><%= prod.getItemprize() %></td>
				<td><%= prod.getItemimage() %></td> --%>
				<%-- <td><input  onclick="setData(<%= prod.getItemname() %>,'<%=prod.getItemprize()%>');"/></td> --%>
			</tr>

			<%
			}
		}
		%>
		</tbody>
	</table>
</body>
</html>