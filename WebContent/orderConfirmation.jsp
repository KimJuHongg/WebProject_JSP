<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.net.URLDecoder"%>
<%@ page import="dto.Liverpool"%>
<%@ page import="dao.LiverpoolRepository"%>

<%
	request.setCharacterEncoding("UTF-8");

	String cartId = session.getId();

	String shipping_cartId = "";
	String shipping_name = "";
	String shipping_shippingDate = "";
	String shipping_country = "";
	String shipping_zipCode = "";
	String shipping_addressName = "";
	
	Cookie[] cookies = request.getCookies();

	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			Cookie thisCookie = cookies[i];
			String n = thisCookie.getName();
			if (n.equals("Shipping_cartId"))
				shipping_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_name"))
				shipping_name = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_shippingDate"))
				shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_country"))
				shipping_country = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_zipCode"))
				shipping_zipCode = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_addressName"))
				shipping_addressName = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		}
	}
%>
<html>
<head>
<link rel="stylesheet"   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Liverpool</title>
</head>
<body>
	<jsp:include page="Menu.jsp" />
	<div class="jumbotron" style="background-color:#f34336">
		<div class="container"> <br>
			<h1 class="display-3" style="color:white; font-weight:bold;">ORDER INFORMATION</h1>
		</div>
	</div>

	<div class="container col-8 alert alert-info">
		<div class="text-center ">
			<h1>RECEIPT</h1>
		</div>
		<div class="row justify-content-between">
			<div class="col-4" align="left">
				<strong>ADDRESS</strong> <br> NAME : <% out.println(shipping_name); %>	<br> 
				ZIP CODE : <% 	out.println(shipping_zipCode);%><br> 
				ADDRESS : <%	out.println(shipping_addressName);%>(<%	out.println(shipping_country);%>) <br>
			</div>
			<div class="col-4" align="right">
				<p>	<em>DELEVERY DATE: <% out.println(shipping_shippingDate);%></em>
			</div>
		</div>
		<div>
			<table class="table table-hover">			
			<tr>
				<th class="text-center">PRODUCT</th>
				<th class="text-center">#</th>
				<th class="text-center">PRICE</th>
				<th class="text-center">TOTAL</th>
			</tr>
			<%
				int sum = 0;
				ArrayList<Liverpool> cartList = (ArrayList<Liverpool>) session.getAttribute("cartlist");
				if (cartList == null)
					cartList = new ArrayList<Liverpool>();
				for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
					Liverpool liverpool = cartList.get(i);
					int total = liverpool.getPrice() * liverpool.getQuantity();
					sum = sum + total;
			%>
			<tr>
				<td class="text-center"><em><%=liverpool.getId()%> </em></td>
				<td class="text-center"><%=liverpool.getQuantity()%></td>
				<td class="text-center"><%=liverpool.getPrice()%>won</td>
				<td class="text-center"><%=total%>won</td>
			</tr>
			<%
				}
			%>
			<tr>
				<td> </td>
				<td> </td>
				<td class="text-right">	<strong>total: </strong></td>
				<td class="text-center text-danger"><strong><%=sum%> </strong></td>
			</tr>
			</table>
				<a href="./shippingInfo.jsp?cartId=<%=shipping_cartId%>"class="btn btn-secondary" role="button"> BACK </a>
				<a href="./thankCustomer.jsp"  class="btn btn-success" role="button"> FINISH </a>
				<a href="./checkOutCancelled.jsp" class="btn btn-secondary"	role="button"> CANCEL </a>			
		</div>
	</div>	
</body>
</html>
