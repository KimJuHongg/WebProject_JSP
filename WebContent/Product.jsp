<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Liverpool"%>
<%@ page import="dao.LiverpoolRepository"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<head>

<title>Liverpool</title>
<link rel="stylesheet"   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Kdam+Thmor+Pro&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Dela+Gothic+One&family=Dosis:wght@200;300&family=Koulen&family=Smooch&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/f50322ccba.js" crossorigin="anonymous"></script>
<style>
   body { 
            padding: 0px;
            margin: 0px;            
        }
   .container {
   
   				margin:100px;
   			  }
</style>

</head>

<body>

<%@ include file="Menu.jsp" %>

   <%
      LiverpoolRepository dao = LiverpoolRepository.getInstance();
      ArrayList<Liverpool> listOfLiverpool = dao.getAllLiverpools();
            %>        
   <div class="container">
        <hr style="background-color:red;">  <!-- 구분선 -->

        <div class="row">
        
        <div class="col-md-12 mb-4"><!-- 로고 -->

        <img class="featurette-image img-responsive center-block" src="<c:url value="/resources/image/uniform/logo1.png" />" data-src="holder.js/500x500/auto" alt="Generic placeholder image" style="width:200px; height:60px;"/>
        </div>
        <div class="col-md-12">
        	<div class="row">
        
			<%
				for (int i = 0; i < listOfLiverpool.size(); i++) {
	  			Liverpool liverpool = listOfLiverpool.get(i);
      			int a = liverpool.getCompare();
      			if (a>=0 && a <=3) {
			%>
        <div class="col-4">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="<%=liverpool.getFile()%>" alt="" onclick="location.href='./Productview.jsp?id=<%=liverpool.getId()%>'" style="cursor:pointer"/>
            <div class="card-body">
              <h5 class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;"><%=liverpool.getId()%></h5>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;"><%=liverpool.getPrice()%>won</p>
             <!--버튼
              <a href="#" class="btn btn-primary">More</a>
              -->
            </div>
          </div>
        </div>
        <%
               }
        }                
        %>
            </div>
        </div>
      </div>
    </div>
    
    <div class="container">
        <hr style="background-color:red;">  <!-- 구분선 -->

        <div class="row">
        
        <div class="col-md-12 mb-4"><!-- 로고 -->
        <img class="featurette-image img-responsive center-block" src="<c:url value='/resources/image/uniform/logo2.png'/>" data-src="holder.js/500x500/auto" alt="Generic placeholder image" style="width:200px; height:60px;">
        </div>
        <div class="col-md-12">
        <div class="row">
        
<%
for (int i = 0; i < listOfLiverpool.size(); i++) {
	  Liverpool liverpool = listOfLiverpool.get(i);

   int a = liverpool.getCompare();
   
   if (a>=4 && a <=6) {
%>
        <div class="col-4">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="<%=liverpool.getFile()%>" alt="" onclick="location.href='./Productview.jsp?id=<%=liverpool.getId()%>'" style="cursor:pointer"/>
            <div class="card-body">
              <h5 class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;"><%=liverpool.getId()%></h5>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;"><%=liverpool.getPrice()%>won</p>
             <!--버튼
              <a href="#" class="btn btn-primary">More</a>
              -->
            </div>
          </div>
        </div>
        <%
               }
        }
                         
        %>
            </div>
        </div>
      </div>
    </div>
        
 
    <div class="container">
        <hr style="background-color:red;">  <!-- 구분선 -->

        <div class="row">
        
        <div class="col-md-12 mb-4"><!-- 로고 -->
        <img class="featurette-image img-responsive center-block" src="<c:url value='/resources/image/uniform/logo3.png' />" data-src="holder.js/500x500/auto" alt="Generic placeholder image" style="width:200px; height:60px;">
        </div>
        <div class="col-md-12">
        <div class="row">
        
<%
for (int i = 0; i < listOfLiverpool.size(); i++) {
	  Liverpool liverpool = listOfLiverpool.get(i);

   int a = liverpool.getCompare();
   
   if (a>=7 && a <=9) {
%>
        <div class="col-4">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="<%=liverpool.getFile()%>" alt="" onclick="location.href='./Productview.jsp?id=<%=liverpool.getId()%>'" style="cursor:pointer"/>
            <div class="card-body">
              <h5 class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;"><%=liverpool.getId()%></h5>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;"><%=liverpool.getPrice()%>won</p>
           
            </div>
          </div>
        </div>
        <%
               }
        }
                         
        %>
            </div>
        </div>
      </div>
    </div>
        
<jsp:include page="footer.jsp" />
</body>
</html>