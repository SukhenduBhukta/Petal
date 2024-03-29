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
<%@include file="all/editprofile.jsp"%>

</head>
<body>
<%
User u=(User)session.getAttribute("userobj");
%>
<c:if test="${empty userobj }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>
	<div class="maincontainer">
		<%@include file="all/navbar.jsp"%>
		<div class="editprofile">
      <h1>Edit Profile</h1>
      <c:if test="${not empty faildMsg }">
					<p style="color:red;">${faildMsg }</p>
					<c:remove var="faildMsg" scope="session"/>
				</c:if>
  <form id="editForm" action="editprofile" method="post" enctype="multipart/form-data">
  <input name="uid" value="<%=u.getUserid() %>" type="hidden">
    <label for="fullName">First Name</label>
    <input type="text" id="fullName" name="fname" value="<%=u.getFname() %>" required>
    <label for="fullName">Last Name</label>
    <input type="text" id="fullName" name="lname" value="<%=u.getLname() %>" required>

    <label for="email">Email</label>
    <input type="email" id="email" name="email" value="<%=u.getEmail() %>" required>

    <label for="mobileNumber">Mobile Number</label>
    <input type="number" id="mobileNumber" name="mobileNumber" value="<%=u.getPhone() %>" required>

    <div class="password-container">
      <label for="oldPassword">Password</label>
      <input type="password" id="oldPassword" name="password" required>
      <span class="toggle-password" onclick="togglePasswordVisibility('oldPassword')">&#128065;</span>
    </div>

    <label for="profilePic">Profile Picture</label>
    <input type="file" id="profilePic" name="profilePic">

    <button type="submit">Save Changes</button>
  </form>
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
        function togglePasswordVisibility(inputId) {
            const passwordInput = document.getElementById(inputId);
            const passwordToggle = document.getElementById(inputId + '-toggle');

            if (passwordInput.type === 'password') {
              passwordInput.type = 'text';
              passwordToggle.textContent = 'Hide';
            } else {
              passwordInput.type = 'password';
              passwordToggle.textContent = 'Show';
            }
          }
        </script>
	<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
	<script src="./all/js/main.js"></script>
</body>
</html>