<%@page import="com.entity.User"%>
<%@page import="com.DB.DBconnect"%>
<%@page import="com.DAO.UserDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: home</title>
<%@include file="allCSS.jsp"%>
</head>
<body>
<%
User us=(User)session.getAttribute("userobj");
%>
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
                <form action="../add_product" method="post" class="contain" enctype="multipart/form-data">
			<h2>ADD PRODUCT</h2>
			<c:if test="${not empty sucMsg }">
					<p style="color:rgb(47, 254, 0);">${sucMsg }</p>
					<c:remove var="sucMsg" scope="session"/>
				</c:if>
				<c:if test="${not empty faildMsg }">
					<p style="color:red;">${faildMsg }</p>
					<c:remove var="faildMsg" scope="session"/>
				</c:if>
			<input type="hidden" name="id" value="<%=us.getUserid() %>">
			<input type="hidden" name="sname" value="<%=us.getFname() %>">
			<input type="hidden" name="email" value="<%=us.getEmail() %>">
			<div class="inputbox">
				<i class="fa-solid fa-phone"></i>
				<div class="labinput">
					<div class="text">
						<label for="">Name</label>
					</div>
					<input type="text" required="required" name="name"/>
				</div>
			</div>
			
			<div class="inputbox">
				<i class="fa-solid fa-filter"></i>
				<div class="labinput">
					<div class="text">
						<label for="">Category</label>
					</div>
					<select name="category" onchange="changeStatus()" id="category">
					<option value="null">Select</option>
  <option value="Food">Food</option>
  <option value="Dress">Dress</option>
  <option value="Toy">Toy</option>
					</select>
				</div>
			</div>
			<div class="inputbox">
				<i class="fa-solid fa-filter"></i>
				<div class="labinput">
					<div class="text">
						<label for="">Status</label>
					</div>
					<select name="status" onchange="changeStatus()" id="category">
					<option value="null">Select</option>
  <option value="Active">Active</option>
  <option value="Inactive">Inactive</option>
					</select>
				</div>
			</div>
			<div class="inputbox">
				<i class="fa-solid fa-user-tag"></i>
				<div class="labinput">
					<div class="text">
						<label for="">Price</label>
					</div>
					<input type="number" required="required" name="price"/>
				</div>
			</div>
			<div class="upload" id="uplo">
                    <div class="inputbox">
                        <i class="fa-solid fa-phone"></i>
                        <div class="labinput">
                                <div class="text"><label for="">Upload Document</label></div>
                            <input type="file" name="photo" required="required">
                        </div>
                    </div>
                </div>
			
			<div class="inputbox">
				<i class="fa-solid fa-key"></i>
				<div class="labinput">
					<div class="text">
						<label for="">Description</label>
					</div>
					<input type="text" required="required" name="description"/>
				</div>

			</div>
			<button type="submit">Add</button>
			
		</form>

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