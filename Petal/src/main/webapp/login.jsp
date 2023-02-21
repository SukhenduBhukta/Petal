<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PETAL: Login</title>
<%@include file="all/loginreg.jsp"%>
<%@include file="all/commonCss.jsp"%>
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
		<form action="login" method="post" class="contain">
			<div class="logo">
				<img src="./all/Img/logo.png" alt="">
			</div>
			<h2>SIGN IN</h2>
			<%-- <c:if test="${not empty sucMsg }">
					<p style="color:green;">${sucMsg }</p>
					<c:remove var="sucMsg" scope="session2"/>
				</c:if> --%>
			<c:if test="${not empty faildMsg }">
					<p style="color:red;">${faildMsg }</p>
					<c:remove var="faildMsg" scope="session"/>
				</c:if>
			<div class="inputbox">
				<i class="fa-solid fa-user-tag"></i>
				<div class="labinput">
					<div class="text">
						<label for="">Email</label>
					</div>
					<input type="email" name="email" required="required" />
				</div>

			</div>
			<div class="inputbox">
				<i class="fa-solid fa-filter"></i>
				<div class="labinput">
					<div class="text">
						<label for="">Choose Option</label>
					</div>
					<select name="option" onchange="changeStatus()" id="option">
					<option value="null">Select</option>
  <option value="Patient">Patient</option>
  <option value="Doctor">Doctor</option>
  <option value="Seller">Seller</option>
					</select>
				</div>
			</div>
			<div class="inputbox">
				<i class="fa-solid fa-key"></i>
				<div class="labinput">
					<div class="text">
						<label for="">Password</label>
					</div>
					<input type="password" name="password" required="required" />
				</div>

			</div>

				 <a href="forgotpswd.jsp"><span>forgot password?</span></a>

			<button type="submit">Login</button>
			<p>
				New User? <a href="registration.jsp">registation</a>
			</p>
		</form>

	</div>
</body>
</html>