<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	
		<header>
			<a class="avtive" href="index.jsp">
				<div class="appointment">
					<h2>Book Appointment</h2>
				</div>
			
			</a> <a href="grocery.jsp">
				<div class="grocery">
					<h2>Grocery & Accessories</h2>
				</div>
			</a>
		</header>
		<div class="navbar">
			<div class="logo_search">
				<div class="logo">
					<a href="index.jsp"><img src="./all/Img/logo.png" alt="logo"></a>
				</div>
				<div class="search">
					<input type="text" name="search" placeholder="Search">
					<button type="submit">
						<i class="fa-solid fa-magnifying-glass"></i>
					</button>
				</div>
			</div>
			<c:if test="${not empty userobj }">
			<div class="right_2nd_nav">
			
			
			<ul>
					
					<li>
                            <div class="profile" >
                                <img src="./all/Img/user.png" onclick="toggleMenu()">
                            </div>
                        </li>
				</ul>
				</div>
				<div class="sub-menu-wrap" id="subMenu">
                <div class="sub-menu">
                    <div class="user-info">
                        <img src="./all/Img/user.png" alt="">
                        <h3>${userobj.fname }</h3>
                    </div>
                    <hr>
                    <a href="" class="sub-menu-link"><i class="fa-solid fa-user"></i><p>Edit Profile</p><span>></span></a>
                    <a href="" class="sub-menu-link"><i class="fa-solid fa-gear"></i><p>Setting</p><span>></span></a>
                    <a href="" class="sub-menu-link"><i class="fa-solid fa-bag-shopping"></i><p>Your Order</p><span>></span></a>
                    <a href="" class="sub-menu-link"><i class="fa-solid fa-circle-info"></i><p>Help & Support</p><span>></span></a>
                    <a href="logout" class="sub-menu-link" onclick="openPopup()"><i class="fa-solid fa-right-from-bracket"></i><p>Logout</p><span>></span></a>
                </div>
            </div>
			</c:if>
			<c:if test="${ empty userobj }">
			<div class="right_2nd_nav">
						<ul>
						<li><a href="login.jsp">
							<div class="login">Login</div>
					</a></li>
						</ul>
						</div>
						</c:if>
				
			
			 
		</div>
<script>
        let subMenu = document.getElementById("subMenu");

        function toggleMenu(){
            subMenu.classList.toggle("open-menu");
            //subMenu.style.maxHeight="40rem";
        }
    </script>
</body>
</html>