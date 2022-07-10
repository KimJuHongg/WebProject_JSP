<%@ page contentType="text/html; charset=utf-8"%>
<%@ page errorPage="Error.jsp"%>
<html>

<head>

<title>Liverpool</title>

<link rel="stylesheet"   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Dela+Gothic+One&family=Dosis:wght@200;300&family=Koulen&family=Smooch&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/f50322ccba.js" crossorigin="anonymous"></script>
<style>
   body { 
            padding: 0px;
            margin: 0px;            
        }
        .img{
    position: relative;
    background-image: url("https://www.ssaka.com/b2c-admin/upload/mainImage/1920700_20220519153224.jpg");                                                               
    height: 650px;
    background-size: cover;
}
 

</style>

</head>


<body>
	
	<!-- 메뉴바 호출 -->
<%@ include file="Menu.jsp" %>


<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
       
       <!-- 확인 -->
         <ol class="carousel-indicators">
    <li data-target="#carouselExampleSlidesOnly" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleSlidesOnly" data-slide-to="1"></li>
    <li data-target="#carouselExampleSlidesOnly" data-slide-to="2"></li>
  </ol>
       
        <!-- 첫번째 시작 -->
            <div class="carousel-item active">
                <img onclick="javascript:location.href='https://www.liverpoolfc.com/news/reds-confirm-germany-and-anfield-pre-season-fixtures';" 
                src="https://backend.liverpoolfc.com/sites/default/files/styles/lg/public/acquiadam/2022-06/pre-season-strasbourg-leipzig-friendlies-170622.webp?itok=CqEL0fK0&width=1680" class="img-fluid w-100" alt="First slide" style="cursor:pointer">
                <div class="container">
                    <div class="carousel-caption text-center">
                    
                    </div>
                </div>
            </div>
                   <!-- 끝 -->
                   
         <!-- 두번째 시작 -->
            <div class="carousel-item">
                <img onclick="javascript:location.href='https://www.liverpoolfc.com/news/liverpools-2022-23-premier-league-fixture-list-revealed';" src="https://backend.liverpoolfc.com/sites/default/files/styles/lg/public/acquiadam/2022-06/premier-league-fixtures-16062022.webp?itok=CfP5J7nF&width=1680"
                     class="img-fluid w-100" alt="Second slide" style="cursor:pointer">
                <div class="container">
                    <div class="carousel-caption text-center">
                    </div>
                </div>
            </div>
            <!-- 끝 -->
            
            <!-- 세번째 시작 -->
           <div class="carousel-item">
                <img onclick="javascript:location.href='https://www.youtube.com/watch?v=96475uixlg0';" src="https://backend.liverpoolfc.com/sites/default/files/styles/md/public/acquiadam/2022-06/lfc-greatest-goals-20-11-170622-image%20%281%29.webp?itok=w7rAfu8A&width=1680"
                     class="img-fluid w-100" alt="Third slide" style="cursor:pointer" >
                <div class="container">
                    </div>
                </div>
            </div>
            <!-- 끝 -->
        </div>
        
        <!-- 버튼 -->
          <a class="carousel-control-prev" href="#carouselExampleSlidesOnly" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleSlidesOnly" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
        
</div>
 
      
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <script src = "https://code.jquery.com/jquery-3.3.1.slim.min.js" 
         integrity = "sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" 
         crossorigin = "anonymous">
      </script>
      
      <script src = "https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" 
         integrity = "sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" 
         crossorigin = "anonymous">
      </script>
      
      <script src = "https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" 
         integrity = "sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" 
         crossorigin = "anonymous">
      </script>
 
<!-- 광고 -->
      <div class="row featurette">
        <div class="col-md-7 mt-2 ">
        <img class="featurette-image img-responsive center-block" src="https://w.namu.la/s/761398b97f07722b4f1726b169a79d4d236626ea9c35ac635aeae7f230716a8d8ddffa643309fc9d56477a15767ab71ff23b3c73bcce1091f0a1fbfb4c5d28d1118e631ced64512b8a33f0125002d023f6727257b62cc989066f965c2408d73c6d1e9611aa1d306bff20ea268479cf4e" style="width:100%; height:600px;">
        </div>
        
        <div class="col-md-5 mt-2">
        <img class="featurette-image img-responsive center-block" src="https://knowinsiders.com/stores/news_dataimages/triduongvnt/052021/23/13/in_article/1144_premier-league-2021-2022-list-all-team-clubs.jpg?rt=20210523131148" onclick="javascript:location.href='https://www.google.com/search?q=%EB%A6%AC%EB%B2%84%ED%92%80+%EA%B2%BD%EA%B8%B0+%EC%9D%BC%EC%A0%95&oq=%EB%A6%AC%EB%B2%84%ED%92%80+%EA%B2%BD%EA%B8%B0+%EC%9D%BC%EC%A0%95&aqs=chrome..69i57l2j69i61l3.2436j0j7&sourceid=chrome&ie=UTF-8#sie=t;/m/04ltf;2;/m/02_tc;mt;fp;1;;';" style="width:100%; height:600px; cursor:pointer">
        </div>
        
      </div>	
           
      <div class="row featurette" style="background-color:#F6F6F6;">
        <div class="col-md-12 mt-2 ">
        <img class="featurette-image img-responsive center-block" src="<c:url value='resources/image/home/trophy.png' />" style="width:100%; height:800px;">
        </div>
       </div>
    
 
    
    
<%@ include file="footer.jsp" %>

</body>
</html>



