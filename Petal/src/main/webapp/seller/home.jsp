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
<%@include file="navbar.jsp"%>
<c:if test="${empty userobj }">
<c:redirect url="../login.jsp"></c:redirect>
</c:if>
<div class="details">
                <div class="recentorders">
                    <div class="cardheader">
                        <h2>Recent Orders</h2>
                        <a href="#" class="btn"> View All</a>
                    </div>
                    <table>
                        <thead>
                            <tr>
                                <td>Name</td>
                                <td>Price</td>
                                <td>Payment</td>
                                <td>Status</td>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td>Persian cat</td>
                                <td>₹1,780</td>
                                <td>Paid</td>
                                <td> <span class="status delivered">Delivered</span></td>
                            </tr>

                            <tr>
                                <td>Persian cat</td>
                                <td>₹1,780</td>
                                <td>Paid</td>
                                <td> <span class="status pending">Pending</span></td>
                            </tr>

                            <tr>
                                <td>Persian cat</td>
                                <td>₹1,780</td>
                                <td>Paid</td>
                                <td> <span class="status return">Return</span></td>
                            </tr>

                            <tr>
                                <td>Persian cat</td>
                                <td>₹1,780</td>
                                <td>Paid</td>
                                <td> <span class="status inprogress">Inprogress</span></td>
                            </tr>

                            <tr>
                                <td>Persian cat</td>
                                <td>₹1,780</td>
                                <td>Paid</td>
                                <td> <span class="status delivered">Delivered</span></td>
                            </tr>

                           

                        </tbody>

                    </table>
                </div>

                <div class="active_doctor">
                    <div class="doctor">
                        <h2>Active Doctors</h2>
                    </div>
                    <table>
                        <tr>
                            <td width="5rem"><div class="imgbox"><img src="./all/Img/Dr.Kapil K Guho.png" alt=""></div></td>
                            <td><h4>Dr.Kapil K Guho <br><span>Kolkata</span></h4></td>
                        </tr>
                        <tr>
                            <td width="5rem"><div class="imgbox"><img src="./all/Img/Dr.Kapil K Guho.png" alt=""></div></td>
                            <td><h4>Dr.Kapil K Guho <br><span>Kolkata</span></h4></td>
                        </tr>

                        <tr>
                            <td width="5rem"><div class="imgbox"><img src="./all/Img/Dr.Kapil K Guho.png" alt=""></div></td>
                            <td><h4>Dr.Kapil K Guho<br><span>Kolkata</span></h4></td>
                        </tr>

                        <tr>
                            <td width="5rem"><div class="imgbox"><img src="./all/Img/Dr.Kapil K Guho.png" alt=""></div></td>
                            <td><h4>Dr.Kapil K Guho<br><span>Kolkata</span></h4></td>
                        </tr>

                        <tr>
                            <td width="5rem"><div class="imgbox"><img src="./all/Img/Dr.Kapil K Guho.png" alt=""></div></td>
                            <td><h4>Dr.Kapil K Guho<br><span>Kolkata</span></h4></td>
                        </tr>
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