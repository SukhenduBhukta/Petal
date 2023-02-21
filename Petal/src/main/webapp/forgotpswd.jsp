<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Petal: Forgot Password</title>
<%@include file="all/loginreg.jsp"%>
<%@include file="all/commonCss.jsp"%>
</head>
<body>
<div class="maincontainer">
<form action="Forgotpswd" method="post" class="contain">
<div class="inputbox">
				<i class="fa-solid fa-user-tag"></i>
				<div class="labinput">
					<div class="text">
						<label for="">Email</label>
					</div>
					<input type="email" name="email" required="required" />
				</div>

			</div>
			<button type="submit">Get New Password</button>
			<button type="submit">Back to Login</button>
</form>
</div>
</body>
</html>