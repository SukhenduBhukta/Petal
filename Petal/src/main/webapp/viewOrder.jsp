<%@page import="com.entity.GroceryDtls"%>
<%@page import="com.DAO.GroceryDAOImpl"%>
<%@page import="com.entity.User"%>
<%@page import="com.entity.Cart"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DB.DBconnect"%>
<%@page import="com.DAO.CartDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Petal: Your Order</title>
<%@include file="all/cartcss.jsp"%>
</head>
<body>
	<div class="maincontainer">
	<%@include file="all/navbar.jsp"%>
	<c:if test="${empty userobj }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>

<h1>View Orders</h1>
  
  <div class="order-container">
    <div class="order">
      <div class="product-details">
        <img src="./61IUJIyK2yL._SL1000-removebg-preview.png" alt="Product 1" class="product-image">
        <span class="product-name">Chihuahua - Dog</span>
      </div>
      <span class="order-number">Order #1</span>
      <span class="order-value">₹1,700</span>
      <span class="delivery-date">Expected Delivery: May 15, 2023</span>
    </div>
    <div class="order">
      <div class="product-details">
        <img src="./dog-food-dry-450x300-removebg-preview.png" alt="Product 2" class="product-image">
        <span class="product-name">Golden Retriever - Dog</span>
      </div>
      <span class="order-number">Order #2</span>
      <span class="order-value">₹1,580</span>
      <span class="delivery-date">Expected Delivery: May 18, 2023</span>
    </div>
  </div>

<%@include file="all/footer.jsp"%>
</div>

</body>
</html>