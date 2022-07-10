<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Liverpool</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Kdam+Thmor+Pro&display=swap" rel="stylesheet">
<link rel="stylesheet"   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Dela+Gothic+One&family=Dosis:wght@200;300&family=Koulen&family=Smooch&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/f50322ccba.js" crossorigin="anonymous"></script>
<style>
   body { 
            padding: 0px;
            margin: 0px;            
        }
        .img{
    position: relative;
    background-image: url("https://files.oyebesmartest.com/uploads/large/11601280566gp1.gif");                                                               
    height: 100vh;
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
     width: 300px;
     text-align: center;
}

.login_container {
    align-content: flex-end;
    margin-right: 10px;
}
</style>
</head>
<body>
	<jsp:include page="/Menu.jsp" />
	
	<div class="img">
        <div class="content" ><br>

		<h3 class="display-4" style="color:white;font-family: 'Koulen', cursive;">LIVERPOOL</h3>			
			<form class="form-signin" action="processLoginMember.jsp" method="post">
				<div class="form-group mb-3">
					<label for="inputUserName" class="sr-only">ID</label> <input
						type="text" class="form-control rounded-pill border-0 shadow-sm px-4" placeholder="ID" name='id'
						required autofocus>
				</div>
				<div class="form-group mb-3">
					<label for="inputPassword" class="sr-only">Password</label> <input
						type="password" required class="form-control rounded-pill border-0 shadow-sm px-4 text-primary" placeholder="Password"
						name='password' >
				</div>
				<button type="submit" class="btn btn-Dark btn-block text-uppercase mb-2 rounded-pill shadow-sm" style="background-color:#6eaa5e; color:white;font-family: 'Bebas Neue', cursive;">Sign in</button>
				<%
				String error = request.getParameter("error");
				if (error != null) {
					out.println("<div class='alert alert-danger'>");
					out.println("아이디와 비밀번호를 확인해 주세요");
					out.println("</div>");
				}
				%>
				<div class="text-center d-flex justify-content-between mt-1" style=color:white;>No Account?
				<a href="<c:url value="/member/addMember.jsp"/>" class="font-italic text-muted">
             	<u style="color:white; text-decoration:none;">Join us</u>
             </a>
             </div>
			</form>
	</div>
	<div class="img-cover"></div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>