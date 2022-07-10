<%@ page contentType="text/html; charset=utf-8"%>
<html>

<head>

<title>404 Error</title>

<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Dela+Gothic+One&family=Dosis:wght@200;300&family=Koulen&family=Smooch&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/f50322ccba.js" crossorigin="anonymous"></script>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">




<style>
   body { 
            padding: 0px;
            margin: 0px;            
        }
    .img{
    position: relative;
    height: 100vh;
    background-image : url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLIEG-syyScmKkiX8uKjvu9KCLiKT8hIqdjw&usqp=CAU");
    background-size: cover;
}
 .img-cover{
   position: absolute;
   height: 100%;
   width: 100%;
   background-color: rgba(0, 0, 0, 0.3);                                                                 
   z-index:1;
}
.img .content{
     position: absolute;
     top:50%;
     left:50%;
     transform: translate(-50%, -50%);                                                                   
     z-index: 2;
     width: 600px;
     text-align: center;
}

p a {
    font-size: inherit;
    font-weight: inherit;
    color: white;
    letter-spacing: inherit;
}
a:link{
    font-size: inherit;
    font-weight: inherit;
    color: white;
    letter-spacing: inherit;
}
a:visited {
    font-size: inherit;
    font-weight: inherit;
    color: white;
    letter-spacing: inherit;
}
a:ahover {
    font-size: inherit;
    font-weight: inherit;
    color: #BBBBBB;
    letter-spacing: inherit;
}
a:active{
    font-size: inherit;
    font-weight: inherit;
    color: white;
    letter-spacing: inherit;
}
.ghost-button {
 display: inline-block;
 width:100px;
 height:50px;
 padding: 8px;
 color: white;
 border: 2px solid white;
 outline: none;
 text-decoration: none;
 text-align:center;
}

        

</style>

</head>


<body style="background-color: black;">


<nav class="navbar navbar-expand-md navbar-dark bg-darker fixed-top">
  
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    <p></p>
  </button>
      
  </div>
</nav>
      
      <div class="img">
        <div class="content">
        <h1 class="display-1" style="color:white;font-family: 'Koulen', cursive;">Oops!</h1>
        <p class="display-4" style="color:white;font-family: 'Bebas Neue', cursive;">We can't seem to find the page</p>
        <p class="display-4" style="color:white;font-family: 'Bebas Neue', cursive;">you're looking for.</p>
        <p class="display-4" style="color:red;font-family: 'Bebas Neue', cursive;">Error code : 404</p>
        <a class="ghost-button" href="javascript:history.back()" style="">BACK&raquo;</a>
       </div>
       <div class="img-cover"></div>
    </div>

</body>
</html>