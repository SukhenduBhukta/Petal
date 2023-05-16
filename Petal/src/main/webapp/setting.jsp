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
%>	<div class="maincontainer">
		<%@include file="all/apNavbar.jsp"%>
<c:if test="${empty userobj }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>
<div class="settings_option">
            <h1>Setting</h1>
            <div class="another_thins">
                <div class="edit_profile">
                    <i class="fa-solid fa-user"></i>
                    <a href="editprofile.jsp">Edit Your Profil -></a>
                </div>
                <div class="password_reset">
                    <i class="fa-solid fa-key"></i>
                    <a href="#">Reset Your Password -></a>
                </div>
                <div class="address_updation">
                    <i class="fa-solid fa-location-dot"></i>
                    <a href="addressUpdate.jsp">Update Your Address -></a>
                </div>
            </div>
        </div>

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
	<script src="./all/js/main.js"></script>
</body>
</html>