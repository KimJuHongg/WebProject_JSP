<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Liverpool"%>
<%@ page import="dao.LiverpoolRepository"%>
<html>
<head>
<link rel="stylesheet"   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<%
	String cartId = session.getId();
%>
<title>Liverpool</title>
</head>
<body>
	<jsp:include page="Menu.jsp" />
	
	<div class="jumbotron"style="background-color:#f34336">
		<div class="container"><br>
			<h1 class="display-3"style="color:white; font-weight:bold;">SHOPPING CART</h1>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<table width="100%">
				<tr>
					<td align="left"><a href="deleteCart.jsp?cartId=<%=cartId%>" class="btn btn-danger">DELETE</a></td>
					<td align="right"><a href="./shippingInfo.jsp?cartId=<%=cartId %>" class="btn btn-success">ORDER	</a></td>
				</tr>
			</table>
		</div>
		
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th>PRODUCT</th>
					<th>PRICE</th>
					<th>SIZE</th>
					<th>TOTAL</th>
					<th>NOTE</th>
				</tr>
				<%				
					int sum = 0;
					ArrayList<Liverpool> cartList = (ArrayList<Liverpool>) session.getAttribute("cartlist");
					if (cartList == null)
						cartList = new ArrayList<Liverpool>();

					for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
						Liverpool liverpool = cartList.get(i);
						int total = liverpool.getPrice();
						sum = sum + total;
				%>
				<tr>
					<td><%=liverpool.getId()%></td>
					<td><%=liverpool.getPrice()%></td>
					<td><%=liverpool.getSize()%></td>
					<td><%=total%></td>
					<td><a href="removeCart.jsp?id=<%=liverpool.getId()%>" class="badge badge-danger">DELETE</a></td>
				</tr>
				<%
					}
				%>
				<tr>
					<th></th>
					<th></th>
					<th>TOTAL</th>
					<th><%=sum%></th>
					<th></th>
				</tr>
			</table>
			<a href="Product.jsp" class="btn btn-secondary"> &laquo; Continue Shopping </a>
		</div>
		<hr>
	</div>
	
</body>
</html>
