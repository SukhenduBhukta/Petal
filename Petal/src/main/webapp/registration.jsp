<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PETAL: Registration</title>
<%@include file="all/loginreg.jsp"%>
<%@include file="all/commonCss.jsp"%>
</head>
<body>
	<div class="maincontainer">

		<form action="register" method="post" class="contain">
			<h2>SIGN UP</h2>
			<c:if test="${not empty sucMsg }">
					<p style="color:rgb(47, 254, 0);">${sucMsg }</p>
					<c:remove var="sucMsg" scope="session"/>
				</c:if>
				<c:if test="${not empty faildMsg }">
					<p style="color:red;">${faildMsg }</p>
					<c:remove var="faildMsg" scope="session"/>
				</c:if>
			<div class="name">
                    <div class="inputboxf">
                        <i class="fa-solid fa-user"></i>
                        <div class="labinput">
                            <div class="text"><label for="">First Name</label></div>
                            <input type="text" required="required" name="fname" />
                        </div>
                    </div>
                    
                    <div class="inputboxl">
                        
                        <div class="labinput">
                            <div class="text"><label for="">Last Name</label></div>
                            <input type="text" required="required" name="lname" />
                        </div>
                    </div>
                </div>
			<div class="inputbox">
				<i class="fa-solid fa-phone"></i>
				<div class="labinput">
					<div class="text">
						<label for="">Mobile</label>
					</div>
					<input type="number" required="required" name="phone"/>
				</div>
			</div>
			
			<div class="inputbox">
				<i class="fa-solid fa-filter"></i>
				<div class="labinput">
					<div class="text">
						<label for="">Choose Option</label>
					</div>
					<select name="option">
					<option value="null">Select</option>
  <option value="Patient">Patient</option>
  <option value="Doctor">Doctor</option>
  <option value="Seller">Seller</option>
					</select>
				</div>
			</div>
			<div class="inputbox">
				<i class="fa-solid fa-user-tag"></i>
				<div class="labinput">
					<div class="text">
						<label for="">Email</label>
					</div>
					<input type="email" required="required" name="email"/>
				</div>
			</div>
			<div class="inputbox">
				<i class="fa-solid fa-key"></i>
				<div class="labinput">
					<div class="text">
						<label for="">Password</label>
					</div>
					<input type="password" required="required" name="password"/>
				</div>

			</div>
			
			<div class="inputbox2">
				<input type="checkbox" name="check"> <span>Please Check Agree term & condition</span>
			</div>

			<button type="submit">Registration</button>
			<p>
				Exsiting User? <a href="login.jsp">Login</a>
			</p>
		</form>
		<div class="doc">
			<h3>Wellcome to PETAL</h3>

		</div>

	</div>
</body>
</html>