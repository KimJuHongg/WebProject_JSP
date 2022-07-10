<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>	
	<nav class="navbar navbar-expand-md navbar-dark bg-darker fixed-top">
  	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Kdam+Thmor+Pro&display=swap" rel="stylesheet">
  
  	<a class="navbar-brand" href="#"><img src="https://upload.wikimedia.org/wikipedia/ko/0/05/%EB%A6%AC%EB%B2%84%ED%92%80_FC_%EB%A1%9C%EA%B3%A0.svg" style="width:20%; height:20%;" /></a>
  	
  
  	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    	<span class="navbar-toggler-icon"></span>
    	<p></p>
  	</button>
  
  	<div class="collapse navbar-collapse justify-content-start" id="navbarSupportedContent">
    	<ul class="navbar-nav mr-auto">
      	<li class="nav-item active">
        	<a class="nav-link" href="<c:url value="/Home.jsp"/>" style="color:black; font-family: 'Kdam Thmor Pro', sans-serif;">Home<span class="sr-only">(current)</span></a>
      	</li>
       	<li class="nav-iteme">
        	<a class="nav-link" href="Team.jsp" style="color:black;font-family: 'Kdam Thmor Pro', sans-serif; ">TEAM</a>
      	</li>
      	<li class="nav-item">
        	<a class="nav-link" href="Product.jsp" style="color:black; font-family: 'Kdam Thmor Pro', sans-serif;">SHOP</a>
      	</li>
   	    <li class="nav-item">
        	<a class="nav-link" href="<c:url value="/BoardListAction.do?pageNum=1"/>" style="color:black; font-family: 'Kdam Thmor Pro', sans-serif;">BOARD</a>
      	</li>
      	</ul>
     </div>
     
     <div class="login_container">
     	<ul class="navbar-nav mr-auto">
     	<c:choose>
    			<c:when test="${empty sessionId}">
      	<li class="nav-item">
        	<a class="nav-link" href="<c:url value="/member/loginMember.jsp"/>" style="color:black; font-family: 'Kdam Thmor Pro', sans-serif;">LOGIN</a>
     	</li>
    	<li class="nav-item">
        	<a class="nav-link" href="<c:url value="/member/addMember.jsp"/>" style="color:black; font-family: 'Kdam Thmor Pro', sans-serif;">JOIN US</a>
      	</li>
      	</c:when>
      	<c:otherwise>
      	<li class="nav-item">
        	<a class="nav-link" href="Cart.jsp" style="color:black; font-family: 'Kdam Thmor Pro', sans-serif;">CART</a>
      	</li>
      	<li class="nav-item pull-right">
        	<a class="nav-link pull-right" href="<c:url value="/member/logoutMember.jsp"/>" style="color:black; font-family: 'Kdam Thmor Pro', sans-serif;">LOGOUT</a>
      	</li>
      	<li class="nav-item pull-right">
        	<a class="nav-link pull-right" href="<c:url value="/member/updateMember.jsp"/>" style="color:black; font-family: 'Kdam Thmor Pro', sans-serif;">UPDATE</a>
      	</li>
      	</c:otherwise>
      	</c:choose>
    </ul>
      	

  	</div>
	</nav>