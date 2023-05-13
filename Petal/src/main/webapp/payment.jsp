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
<%@include file="all/appointmentCss.jsp"%>
</head>
<body>
	<div class="maincontainer">
	<%@include file="all/navbar.jsp"%>
	<c:if test="${empty userobj }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>
<h1>Payment Page</h1>
<input value="${userobj.userid }" type="hidden" id="uid">
<%
User u=(User)session.getAttribute("userobj");
AppointmentDAOImpl dao=new AppointmentDAOImpl(DBconnect.getCon());
int apid=dao.appiontmentgetidbyuid(u.getUserid());
%>
<input value="<%=apid %>" type="hidden" id="apid">
<input value="100" type="hidden" id="payment_value">
<button onclick="payment()" type="submit">Pay</button>
<%@include file="all/footer.jsp"%>
<script src="all/js/main.js"></script>
</body>
</html>