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
<%@include file="allCSS.jsp"%>
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
        <c:if test="${empty userobj }">
<c:redirect url="../login.jsp"></c:redirect>
</c:if>
<%@include file="navbar.jsp"%>

<div class="details">
                <div class="recentorders">
                    <div class="cardheader">
                        <h2>Recent Orders</h2>
                        <a href="#" class="btn"> View All</a>
                    </div>
                    <table>
                        <thead>
                            <tr>
                            	<td>Appointment Id</td>
                                <td>Owner Name</td>
                                <td>Pet Name</td>
                                <td>Address</td>
                                <td>Gender</td>
                                <td>Mobile</td>
                                <td>Email</td>
                                <td>Age</td>
                                <td>Date</td>
                                <td>Status</td>
                                <td>Action</td>
                            </tr>
                        </thead>

                        <tbody>
                       	<tr>
                            	<td>Order Id</td>
                                <td>Name</td>
                                <td>Address</td>
                                <td>Product Name</td>
                                <td>Company Name</td>
                                <td>Quantity</td>
                                <td>Price</td>
                                <td>Payment Type</td>
                                <td>Status</td>
                                <td>Action</td>
                            </tr>
                           
                        </tbody>

                    </table>
                </div>

                

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
</html>