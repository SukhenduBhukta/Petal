<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

	<header>
		<a class="avtive" href="index.jsp" >
			<div class="appointment"
				style=" border-radius: 0px 20px 20px 0px;" onMouseOver="this.style.background='linear-gradient(45deg, #7d0f6b, #6d0d0d)'"
   onMouseOut="this.style.background='linear-gradient(45deg, #ac5c5c, #bc5cac)'">
				<h2>Book Appointment</h2>
			</div>

		</a> <a href="grocery.jsp">
			<div class="grocery"
				style="background: linear-gradient(271.76deg, #086060 -18.43%, #2a7009 96.63%); border-radius: 20px 0px 0px 20px;">
				<h2>Grocery & Accessories</h2>
			</div>
		</a>
	</header>
	<div class="navbar">
		<div class="logo_search">
			<div class="logo">
				<a href="index.jsp"><img src="./all/Img/logo.png" alt="logo"></a>
			</div>

			<form class="search" action="searchGrocery.jsp" method="post">
				<input type="text" name="ch" placeholder="Search">
				<button type="submit">
					<i class="fa-solid fa-magnifying-glass"></i>
				</button>
			</form>

		</div>
		<c:if test="${not empty userobj }">
			<div class="right_2nd_nav">


				<ul>
					<li><a href="cart.jsp">
							<div class="cart">
								<i class="fa-solid fa-cart-shopping"></i> Cart
							</div>
					</a></li>
					<li><c:if test="${not empty userobj.pimg }">
							<div class="profile">
								<img src="Documents/${userobj.pimg }" onclick="toggleMenu()">
							</div>
						</c:if> <c:if test="${empty userobj.pimg }">
							<div class="profile">
								<img src="./all/Img/user.png" onclick="toggleMenu()">
							</div>
						</c:if></li>
				</ul>
			</div>
			<div class="sub-menu-wrap" id="subMenu">
				<div class="sub-menu">
					<div class="user-info">
						<c:if test="${not empty userobj.pimg }">
							<img src="Documents/${userobj.pimg }" alt="">
						</c:if>
						<c:if test="${empty userobj.pimg }">
							<img src="./all/Img/user.png" alt="">
						</c:if>
						<h3>${userobj.fname }${userobj.lname }</h3>
					</div>
					<hr>

					<a href="viewAppoint.jsp" class="sub-menu-link"><i
						class="fa-solid fa-bag-shopping"></i>
					<p>Your Appointment</p>
						<span>></span></a> <a href="viewOrder.jsp" class="sub-menu-link"><i
						class="fa-solid fa-bag-shopping"></i>
					<p>Your Order</p>
						<span>></span></a> <a href="setting.jsp" class="sub-menu-link"><i
						class="fa-solid fa-gear"></i>
					<p>Setting</p>
						<span>></span></a> <a href="support.jsp" class="sub-menu-link"><i
						class="fa-solid fa-circle-info"></i>
					<p>Help & Support</p>
						<span>></span></a> <a href="logout" class="sub-menu-link"
						onclick="openPopup()"><i
						class="fa-solid fa-right-from-bracket"></i>
					<p>Logout</p>
						<span>></span></a>
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

		function toggleMenu() {
			subMenu.classList.toggle("open-menu");
			//subMenu.style.maxHeight="40rem";
		}
	</script>
</body>
</html>