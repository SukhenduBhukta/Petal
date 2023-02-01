<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PETAL: Login</title>
<%@include file="all/loginreg.jsp"%>
</head>
<body>
	<div class="maincontainer">
		<div class="doc">
			<h3>Wellcome to PETAL</h3>
			<div class="logologin">
				<!-- <a href="index.html "><img src="./all/Img/features/cat.png" alt="logo" class="cat"></a> -->

				<a href="index.html "><img src="./all/Img/features/pedegee.png"
					alt="logo" class="pedegee"></a> <a href="index.html"><img
					src="./all/Img/features/dog.png" alt="logo" class="dog"></a>
			</div>
		</div>
		<form action="" method="post" class="contain">
			<div class="logo">
				<img src="./all/Img/logo.png" alt="">
			</div>
			<h2>SIGN IN</h2>
			<div class="inputbox">
				<i class="fa-solid fa-user-tag"></i>
				<div class="labinput">
					<div class="text">
						<label for="">Email</label>
					</div>
					<input type="email" required="required" />
				</div>

			</div>
			<div class="inputbox">
				<i class="fa-solid fa-key"></i>
				<div class="labinput">
					<div class="text">
						<label for="">Password</label>
					</div>
					<input type="password" required="required" />
				</div>

			</div>
			<div class="inputbox2">
				<input type="checkbox"> <span>Please Check Me</span>
			</div>

			<button type="submit">Login</button>
			<p>
				New User? <a href="registration.jsp">registation</a>
			</p>
		</form>

	</div>
</body>
</html>