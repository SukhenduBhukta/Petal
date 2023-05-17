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
.container .main .settings_option h1 {
  display: flex;
  justify-content: center;
  font-size: 3rem;
  margin: 3rem;
}
.container .main .settings_option .another_thins {
  display: flex;
  width: 100%;
  height: 35rem;
  background-color: #e6e3e3;
  margin-bottom: 5rem;
  border-radius: 2px;
  padding: 1rem;
}
.container .main .settings_option .another_thins .edit_profile {
  margin-left: 10%;
  margin-bottom: 2rem;
  width: 20rem;
  background-color: #eeb147;
  display: flex;
  justify-content: center;
  flex-direction: column;
  overflow: hidden;
  padding: 2rem;
  border-radius: 1rem;
}
.container .main .settings_option .another_thins .edit_profile a {
  font-size: 3rem;
  color: #000;
}
.container .main .settings_option .another_thins .edit_profile a:hover {
  color: #440224;
}
.container .main .settings_option .another_thins .edit_profile i {
  font-size: 4rem;
  padding: 0 1rem 0 0;
  color: #440224;
  display: flex;
  justify-content: center;
  padding: 0 1rem 0 0;
  margin: 1rem;
}
.container .main .settings_option .another_thins .password_reset {
  margin-left: 20%;
  margin-bottom: 2rem;
  width: 20rem;
  background-color: #eeb147;
  display: flex;
  justify-content: center;
  flex-direction: column;
  overflow: hidden;
  padding: 2rem;
  border-radius: 1rem;
}
.container .main .settings_option .another_thins .password_reset a {
  font-size: 3rem;
  color: #000;
}
.container .main .settings_option .another_thins .password_reset a:hover {
  color: #3b6e97;
}
.container .main .settings_option .another_thins .password_reset i {
  padding: 0 1rem 0 0;
  font-size: 4rem;
  color: #3b6e97;
  display: flex;
  justify-content: center;
  padding: 0 1rem 0 0;
  margin: 1rem;
}
.container .main .settings_option .another_thins .address_updation {
  margin-left: 20%;
  margin-bottom: 2rem;
  width: 20rem;
  background-color: #eeb147;
  display: flex;
  justify-content: center;
  flex-direction: column;
  overflow: hidden;
  padding: 2rem;
  border-radius: 1rem;
}

.container .main .settings_option .another_thins .address_updation a {
  font-size: 3rem;
  color: #000;
}
 
.container .main .settings_option .another_thins .address_updation a:hover {
  color: #310c58;
}

.container .main .settings_option .another_thins .address_updation i {
  color: #310c58;
  font-size: 4rem;
  padding: 0 1rem 0 0;
  margin: 1rem;
  display: flex;
  justify-content: center;
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
		
<div class="settings_option">
            <h1>Setting</h1>
            <div class="another_thins">
                <div class="edit_profile">
                    <i class="fa-solid fa-user"></i>
                    <a href="editprofile.jsp">Edit Your Profil -></a>
                </div>
                <div class="password_reset">
                    <i class="fa-solid fa-key"></i>
                    <a href="../forgotpswd.jsp">Reset Your Password -></a>
                </div>
                
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