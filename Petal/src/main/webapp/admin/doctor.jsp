<%@page import="com.DB.DBconnect"%>
<%@page import="com.DAO.UserDAOImpl"%>
<%@page import="java.util.*"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Doctor</title>
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
<c:if test="${empty userobj1 }">
<c:redirect url="../login.jsp"></c:redirect>
</c:if>
<div class="details">
<div class="recentorders">
				<c:if test="${not empty sucMsg }">
					<h3 style="color:green;">${sucMsg }</h3>
					<c:remove var="sucMsg" scope="session"/>
				</c:if>
				 <c:if test="${not empty faildMsg }">
					<h3 style="color:red;">${faildMsg }</h3>
					<c:remove var="faildMsg" scope="session"/>
				</c:if>
<div class="cardheader">
                        <h2>Doctor</h2>
                        <a href="#" class="btn"> View All</a>
                    </div>
                    <table>
                    <thead>
                            <tr>
                                <td>Id</td>
                                <td>Name</td>
                                <td>Phone</td>
                                <td>Email</td>
                                <td>Document</td>
                                <td>Action</td>
                            </tr>
                        </thead>
                        <tbody>
                        <%
                        
                        List<User> list = dao.getDoctorbyId();
                        for(User us: list){
                        	%>
                        	<tr>
                                <td><%=us.getUserid() %></td>
                                <td><%=us.getFname()+" "+us.getLname() %></td>
                                <td><%=us.getPhone() %></td>
                                <td><%=us.getEmail() %></td>
                                <td><a download="../Documents/<%=us.getPhotoName() %>"
                    href="../Documents/<%=us.getPhotoName() %>"
                    target="_blank">Check Document</a></td>
                                <td> 
                                <a href="../delete?id=<%=us.getUserid() %>"><button type="submit" class="reject">Reject</button></a>
                                <a href="../addDoctor?id=<%=us.getUserid() %>"><button type="submit" class="reject">Add</button></a>
                                </td>
                            </tr>
                        	<%
                        }
                        %>
                        
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