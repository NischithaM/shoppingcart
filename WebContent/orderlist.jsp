<%@page import="com.cruds.entity.Product"%>
<%@page import="com.cruds.entity.Orderlist"%>
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

<%
	List<Orderlist> olist=(List<Orderlist>) session.getAttribute("OLIST");
		String msg=(String)request.getAttribute("MESSAGE");
		if(msg != null){
	%>
	<h1><%= msg  %></h1>
	<%
		}
	%>


<form name="oderlistform" action="CartListServlet" method="post">
		
		 <input type="submit"  name="btnsubmit" value="view List"/>
	</form>
	<table border="1">
		<thead>
			<tr>
				<td>ORDER ID</td>
				<td>ITEM NAME</td>
				<td>ITEM PRICE </td>
				<td>ITEM QUANTITY </td>
			</tr>
		</thead>


	<tbody>
			<%
			if(olist !=null){
				for(Orderlist o: olist){
		%>

			<tr>
				<td><%=o.getOrderId() %></td>
				<td><%= o.getItemname() %></td>
				<td><%= o.getItemprice() %></td>
				<td><%= o.getItemquantity() %></td>
				<%-- <td><input type="checkbox" onclick="setData(<%= d.getId() %>,'<%=d.getName()%>');"/></td> --%>
			</tr>

			<%
			}
		}
		%>
		</tbody>
	</table>

</body>
</html>