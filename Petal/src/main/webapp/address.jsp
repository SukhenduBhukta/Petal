<%@page import="com.DB.DBconnect"%>
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.DoctorDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PETAL: Address</title>
<%@include file="all/addressCss.jsp"%>
</head>
<body>
	<div class="maincontainer">
	<%@include file="all/navbar.jsp"%>
	<c:if test="${empty userobj }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>
<div class="just_name">
            <h1>Address</h1>
        </div>

        <form id="addressForm" method="POST" action="makeOrder">
        <input name="uid" type="hidden" value="${userobj.userid }">
            <label for="street">Full Name:</label>
            <input type="text" id="FullName" value="${userobj.fname } ${userobj.lname }" name="name" required>
    
            <label for="street">Phone Number:</label>
            <input type="number" id="PhoneNumber" value="${userobj.phone }" name="Phone" required>
    
            <label for="street">House No/Flat No:</label>
            <input type="text" id="street" value="${userobj.house }" name="street" required>
            
            <label for="street">Land Mark:</label>
            <input type="text" id="street" value="${userobj.landmark }" name="landmark" required>
    
            <label for="city">Town/City:</label>
            <input type="text" id="city" value="${userobj.city }" name="city" required>
            
            <label for="state">State:</label>
            <input type="text" id="state" value="${userobj.state }" name="state" required>
            
            <label for="postalCode">PIN Code:</label>
            <input type="text" id="postalCode" value="${userobj.pin }" name="pincode" required>
          	<h4 style="color: red; font-size: 2rem; margin-top: 2rem;">*Cash on Delivery available only</h4>
            <button type="submit">Placed Order</button>
        </form>
</div>

</body>
</html>