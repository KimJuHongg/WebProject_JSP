<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Liverpool"%>
<%@ page import="dao.LiverpoolRepository"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>

<title>Liverpool</title>

<link rel="stylesheet"   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Kdam+Thmor+Pro&display=swap" rel="stylesheet">
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
        <hr style="background-color:#baab8f;">  <!-- 구분선 -->

        <div class="row">
        
        <div class="col-md-12 mb-4"><!-- 로고 -->
        <img class="featurette-image img-responsive center-block" src="<c:url value='resources/image/Player/liverpool.png' />" data-src="holder.js/500x500/auto" alt="Generic placeholder image" style="width:200px; height:60px";">
        </div>
        <div class="col-md-12">
        <div class="row">
       
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/1.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;">Alisson Becker</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">GK</p>
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/3.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;">Fabinho</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">MF</p>
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/4.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;">Virgil van Dijk</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">DF</p>
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/5.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;">Ibrahima Konate</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">MF</p>
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/6.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;">Thiago Alcantara</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">MF</p>
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/7.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;">James Milner</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">DF</p>
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/8.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;">Naby Keïta</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">MF</p>
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/9.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;">Roberto Firmino</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">FW</p>
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/10.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;">Sadio Mane</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">FW</p>
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/11.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;">Mohamed Salah</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">FW</p>
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/12.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;">Joe Gomez</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">DF</p>
		</div>
          </div>
        </div>
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/13.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Kdam Thmor Pro', sans-serif;">Adrian San Miguel</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">DF</p>
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/14.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;">Jordan Henderson</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">MF</p>
             <!--버튼
              <a href="#" class="btn btn-primary">More</a>
              -->
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/15.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;">Alex Oxlade-Chamberlain</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">DF</p>
             <!--버튼
              <a href="#" class="btn btn-primary">More</a>
              -->
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/17.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;">Curtis Jones</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">DF</p>
             <!--버튼
              <a href="#" class="btn btn-primary">More</a>
              -->
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/18.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;">Takumi Minamino</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">FW</p>
             <!--버튼
              <a href="#" class="btn btn-primary">More</a>
              -->
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/20.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;">Diogo Jota</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">FW</p>
             <!--버튼
              <a href="#" class="btn btn-primary">More</a>
              -->
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/21.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;">Kostas Tsimikas</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">MF</p>
             <!--버튼
              <a href="#" class="btn btn-primary">More</a>
              -->
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/22.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;">Loris Karius</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">DF</p>
             <!--버튼
              <a href="#" class="btn btn-primary">More</a>
              -->
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/23.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;">Luis Diaz</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">DF</p>
             <!--버튼
              <a href="#" class="btn btn-primary">More</a>
              -->
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/26.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;">Andy Robertson</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">DF</p>
             <!--버튼
              <a href="#" class="btn btn-primary">More</a>
              -->
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/27.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;">Divock Origi</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">FW</p>
             <!--버튼
              <a href="#" class="btn btn-primary">More</a>
              -->
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/32.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;">Joel Matip</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">DF</p>
             <!--버튼
              <a href="#" class="btn btn-primary">More</a>
              -->
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/45.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;">Elijah Dixon-Bonner</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">MF</p>
             <!--버튼
              <a href="#" class="btn btn-primary">More</a>
              -->
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/46.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;">Rhys Williams</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">FW</p>
             <!--버튼
              <a href="#" class="btn btn-primary">More</a>
              -->
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/49.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;">Kaide Gordon</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">DF</p>
             <!--버튼
              <a href="#" class="btn btn-primary">More</a>
              -->
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/62.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;">Caoimhin Kelleher</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">DF</p>
             <!--버튼
              <a href="#" class="btn btn-primary">More</a>
              -->
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/63.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;">Owen Beck</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">MF</p>
             <!--버튼
              <a href="#" class="btn btn-primary">More</a>
              -->
            </div>
          </div>
        </div>
        <div class="col-3">
          <div class="card mb-2" style="background-color: white; border-style:solid 1px; border-color:#848484;">
            <img src="resources/image/Player/66.png" alt="" style="cursor:pointer"/>
            <div class="card-body">
              <p class="card-title" style="color:black; text-align:center; font-family: 'Bebas Neue', cursive;">Trent Alexander-Arnold</p>    
              <p class="card-text" style="color:black; text-align:center; color:#BDBDBD; font-family: 'Dosis', sans-serif;">DF</p>
             <!--버튼
              <a href="#" class="btn btn-primary">More</a>
              -->
            </div>
          </div>
        </div>

            </div>
        </div>
      </div>
    </div>
        
<jsp:include page="footer.jsp" />
</body>
</html>