<%@page import="com.DB.DBconnect"%>
<%@page import="com.DAO.DoctorDAOImpl"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PETAL: Home</title>
<%@include file="all/allCSS.jsp"%>

</head>
<body>
<%
User u=(User)session.getAttribute("userobj");
%>
	<div class="maincontainer">
		<%@include file="all/navbar.jsp"%>
		
		<%@include file="all/footer.jsp"%>
	</div>
	<script type="text/javascript">
        let popup = document.getElementById("popup");
        function openPopup() {
            popup.classList.add("open-popup");
        }
        function closePopup() {
            popup.classList.remove("open-popup");
        }
        </script>
	<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
	<script src="./all/js/main.js"></script>
</body>
</html>