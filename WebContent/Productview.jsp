<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Liverpool"%>
<%@ page import="dao.LiverpoolRepository"%>


<html>

<head>

<title>Liverpool</title>

<link rel="stylesheet"   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Kdam+Thmor+Pro&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Dela+Gothic+One&family=Dosis:wght@200;300&family=Koulen&family=Smooch&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/f50322ccba.js" crossorigin="anonymous"></script>

<script type = "text/javascript">
	function addToCart() {
		if (confirm("Are you sure you want to add the product to your shopping cart?")) {
			document.addForm.submit();
		} else{
			document.addForm.reset();
		}
	}
</script>

<style>
   body { 
            padding: 0px;
            margin: 0px;            
        }
  
</style>

</head>


<body style="background-color: white;">

<!-- 메뉴바 호출 -->
<%@ include file="Menu.jsp" %>


<!-- 제품 페이지 -->
<%

  String aid = request.getParameter("id");
  LiverpoolRepository dao = LiverpoolRepository.getInstance();
  Liverpool liverpool = dao.getId(aid);

%>


<div class="container">
          <hr style="background-color:red;">  

  <div class="col-md-12">
      <div class="row">
         <div class="col-md-6 mt-3">
           <img class="featurette-image img-responsive center-block" src="<%=liverpool.getFile()%>" data-src="holder.js/500x500/auto" alt="Generic placeholder image" style="width:400px; height:450px; position:absolute; top:70; left:20;">
        </div>
        <div class="col-md-6 mt-6">
        <div class="row">
          <h1 style="color:black;font-family: 'Comfortaa', cursive; font-size:35px; position:absolute; top:120;"><%=liverpool.getId()%></h1>
          <p class="card-text" style="text-align:center; color:black; font-family: 'Comfortaa', cursive; font-size:20px; position:absolute; top:200;">Price : <%=liverpool.getPrice()%>원</p>
          <p style="color:black;font-family: 'Comfortaa', cursive; font-size:18px; position:absolute; top:300;"><%=liverpool.getDescription()%></p>  
          <p style="color:black;font-family: 'Comfortaa', cursive; font-size:18px; position:absolute; top:460;">Size : <%=liverpool.getSize()%></p>      	        
        </div>
        </div>
			
        <form name="addForm" action="./addCart.jsp?id=<%=liverpool.getId()%>" method="post" style="margin :550px 0px 0px 550px" >
        	<a href="#" class="btn btn-info"  onclick="addToCart()">상품주문&raquo;</a>
        	<a href="./Cart.jsp" class="btn btn-warning" >장바구니&raquo;</a>
        	<a href="Product.jsp" class="btn btn-secondary">상품 목록&raquo;</a>
        </form> 
      </div>
    </div>
    </div>

</body>
</html>