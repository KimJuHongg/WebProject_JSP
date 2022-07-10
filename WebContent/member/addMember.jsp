<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet"   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script type="text/javascript">
	function checkForm() {
		if (!document.newMember.id.value) {
			alert("아이디를 입력하세요.");
			return false;
		}
		if (document.idDuplication.value != "idCheck") {
			alert("아이디 중복체크를 해주세요.");
			return false;
		}
		if (!document.newMember.password.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}

		if (document.newMember.password.value != document.newMember.password_confirm.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
		function openIdChk(){                    
			window.name = "parentForm";            
			window.open("member/IdCheckForm.jsp",                    
					"chkForm", "width=500, height=300, resizable = no, scrollbars = no");            
			}
		function inputIdChk(){            
			document.userInfo.idDuplication.value ="idUncheck";        
		}

	}
	
</script>
<title>Liverpool</title>
</head>
<body>
	<jsp:include page="/Menu.jsp" />
	<div class="jumbotron" style="background-color:#f34336">
		<div class="container" ><br>
			<h1 class="display-3"style="color:white; font-weight:bold;">Sign Up</h1>
		</div>
	</div>

	<div class="container">
		<form name="newMember" class="form-horizontal"  action="processAddMember.jsp" method="post" onsubmit="return checkForm()">
			<div class="form-group  row">
				<label class="col-sm-2 ">ID</label>
				<div class="col-sm-3">
					<input name="id" type="text" class="form-control" placeholder="id" >
					<input type="button" onclick="winopen()" value="DOUBLE CHECK" ><br>
				</div>
			</div>
			
			<div class="form-group  row">
				<label class="col-sm-2">PASSWORD</label>
				<div class="col-sm-3">
					<input name="password" type="text" class="form-control" placeholder="password" >
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2">PASSWORD CHECK</label>
				<div class="col-sm-3">
					<input name="password_confirm" type="text" class="form-control" placeholder="password confirm" >
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2">NAME</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control" placeholder="name" >
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2">GENDER</label>
				<div class="col-sm-10">
					<input name="gender" type="radio" value="남" /> ♂
					<input name="gender" type="radio" value="여" /> ♀
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">BIRTH</label>
				<div class="col-sm-4  ">
					<input type="text" name="birthyy" maxlength="4" placeholder="YEAR(****)" size="6"> 
					<select name="birthmm">
						<option value="">MONTH</option>
						<option value="01">1</option>
						<option value="02">2</option>
						<option value="03">3</option>
						<option value="04">4</option>
						<option value="05">5</option>
						<option value="06">6</option>
						<option value="07">7</option>
						<option value="08">8</option>
						<option value="09">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <input type="text" name="birthdd" maxlength="2" placeholder="DAY" size="4">
				</div>
			</div>
			<div class="form-group  row ">
				<label class="col-sm-2">E-mail</label>
				<div class="col-sm-10">
					<input type="text" name="mail1" maxlength="50">@ 
					<select name="mail2">
						<option>naver.com</option>
						<option>daum.net</option>
						<option>gmail.com</option>
						<option>nate.com</option>
					</select>
				</div>				
			</div>
			<div class="form-group  row">
				<label class="col-sm-2">PHONE NUMBER</label>
				<div class="col-sm-3">
					<input name="phone" type="text" class="form-control" placeholder="phone" >

				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2 ">ADDRESS</label>
				<div class="col-sm-5">
					<input name="address" type="text" class="form-control" placeholder="address">

				</div>
			</div>
			<div class="form-group  row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" class="btn btn-primary " value="REGISTER" style="background-color:#f34336" > 
					<input type="reset" class="btn btn-primary " value="RESET" onclick="reset()" style="background-color:#f34336" >
				</div>
			</div>
		</form>
	</div>
	
</body>
</html>