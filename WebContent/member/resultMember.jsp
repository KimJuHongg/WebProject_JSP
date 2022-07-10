<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet"   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Liverpool</title>
</head>
<body>
	<jsp:include page="/Menu.jsp" />
	<div class="jumbotron"style="background-color:#f34336">
		<div class="container"><br>
			<h1 class="display-3"style="color:white; font-weight:bold;">회원정보</h1>
		</div>
	</div>

	<div class="container" align="center">
		<%
			String msg = request.getParameter("msg");

			if (msg != null) {
				if (msg.equals("0"))
					out.println(" <h2>회원정보가 수정되었습니다.</h2>");
				else if (msg.equals("1")) {
					out.println(" <h1>회원가입을 축하드립니다.</h1>");
					out.println(" <h1>알차고 실속있는 서비스로 찾아가겠습니다.</h1>");
				}
				else if (msg.equals("2")) {
					String loginId = (String) session.getAttribute("sessionId");
					out.println(" <h2>" + loginId + "님 환영합니다</h2>");
					
				}				
			} else {
				out.println("<h2 >회원정보가 삭제되었습니다.</h2>");
			}
		%>
	</div>	
</body>
</html>