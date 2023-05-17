<%@page import="com.entity.Cart"%>
<%@page import="com.DAO.CartDAOImpl"%>
<%@page import="com.entity.GroceryDtls"%>
<%@page import="com.DAO.GroceryDAOImpl"%>
<%@page import="com.entity.User"%>
<%@page import="com.entity.Order"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBconnect"%>
<%@page import="com.DAO.OrderDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Seller: Home</title>
<%@include file="editcss.jsp"%>
<style type="text/css">
@charset "UTF-8";
.container .main .editprofile {
  padding: 2rem;
}
.container .main .editprofile h1 {
  text-align: center;
  margin-top: 2rem;
  font-size: 3rem;
  margin-bottom: 2rem;
}
.container .main .editprofile form {
  max-width: 75rem;
  height: 55%;
  margin: 0 auto;
  padding: 1rem 5rem 2rem 2rem;
  background-color: #fff;
  border: 1px solid #ccc;
  border-radius: 5px;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
}
.container .main .editprofile form label {
  display: block;
  margin-bottom: 10px;
  font-weight: bold;
  padding: 0.3rem;
  font-size: 1.5rem;
}
.container .main .editprofile form input[type=text],
.container .main .editprofile form input[type=email],
.container .main .editprofile form input[type=number],
.container .main .editprofile form input[type=password] {
  width: 100%;
  padding: 1rem;
  border: 1px solid #ccc;
  border-radius: 5px;
  font-size: 1.5rem;
}
.container .main .editprofile form input[type=file] {
  margin-top: 0.3rem;
}
.container .main .editprofile form .password-container {
  position: relative;
  font-size: 1.5rem;
}
.container .main .editprofile form .password-container .toggle-password {
  position: absolute;
  font-size: 2rem;
  top: 75%;
  right: 1rem;
  transform: translateY(-50%);
  cursor: pointer;
}
.container .main .editprofile form button {
  display: block;
  width: 100%;
  padding: 1rem;
  margin-top: 1rem;
  background-color: #4CAF50;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}
.container .main .editprofile form button:hover {
  background-color: #45a049;
}
</style>
</head>
<body>
<div class="container">
<%@include file="sidebar.jsp"%>
<div class="main">
<div class="container2">
            <div class="popup" id="popup">
                <h2>Confrim Yourself</h2>
                <p>Are you want to Logout?</p>
                <div class="btnc">
                    <a href="../logout"><button class="yes" type="button"  onclick="closePopup()">Yes</button></a>
                <button class="cancel" type="button"  onclick="closePopup()">Cancel</button>
                </div>
            </div>
        </div>
        <c:if test="${empty userobj3 }">
<c:redirect url="../login.jsp"></c:redirect>
</c:if>
<%@include file="navbar.jsp"%>
		<div class="editprofile">
      <h1 style="  text-align: center;
  margin-top: 2rem;
  font-size: 3rem;
  margin-bottom: 2rem;">Edit Profile</h1>
      <c:if test="${not empty faildMsg }">
					<p style="color:red;">${faildMsg }</p>
					<c:remove var="faildMsg" scope="session"/>
				</c:if>
				<%
				User u=(User)session.getAttribute("userobj3");
				%>
  <form id="editForm" action="../editprofile" method="post" enctype="multipart/form-data">
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
        
        let list = document.querySelectorAll('.list');
        function activeLink(){
            list.forEach((item) =>
            item.classList.remove('active'));
            this.classList.add('active');
        }
        list.forEach((item)=>
        item.addEventListener('click',activeLink))
        </script>
</body>
</html>