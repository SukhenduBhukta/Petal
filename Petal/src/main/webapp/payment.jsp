<%@page import="com.entity.User"%>
<%@page import="com.DB.DBconnect"%>
<%@page import="com.DAO.AppointmentDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Petal: Payment</title>
<style type="text/css">

  
  .maincontainer h1 {
  margin:2rem;
    text-align: center;
  }
  
  .maincontainer .payment-form {
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    max-width: 300px;
    min-height:30rem;
    margin: 3rem auto;
  }
  
  .maincontainer label {
    display: block;
    margin-bottom: 10px;
  }
  
  
  button {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    width: 100%;
  }
  
  button:hover {
    background-color: #45a049;
  }
</style>
<%@include file="all/appointmentCss.jsp"%>
</head>
<body>
	<div class="maincontainer">
	<%@include file="all/navbar.jsp"%>
	<c:if test="${empty userobj }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>
<h1>Payment Page</h1>
<div class="payment-form">

<input value="${userobj.userid }" type="hidden" id="uid">
<%
User u=(User)session.getAttribute("userobj");
AppointmentDAOImpl dao=new AppointmentDAOImpl(DBconnect.getCon());
int apid=dao.appiontmentgetidbyuid(u.getUserid());
%>
<img alt="" src="./all/Img/logo.png">
<input value="<%=apid %>" type="hidden" id="apid">
<input value="300" type="hidden" id="payment_value">
<button onclick="payment()" type="submit">300 Pay</button>
</div>
<%@include file="all/footer.jsp"%>
<script src="all/js/main.js"></script>
</body>
</html>