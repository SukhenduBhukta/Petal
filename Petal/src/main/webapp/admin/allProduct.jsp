<%@page import="com.entity.User"%>
<%@page import="com.DB.DBconnect"%>
<%@page import="com.DAO.GroceryDAOImpl"%>
<%@page import="java.util.*"%>
<%@page import="com.entity.GroceryDtls"%>
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
<c:if test="${empty userobj1 }">
<c:redirect url="../login.jsp"></c:redirect>
</c:if>
<%
User us=(User)session.getAttribute("userobj1");
%>
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
                        <h2>Products</h2>
                        <a href="#" class="btn"> View All</a>
                    </div>
                    <table>
                    <thead>
                            <tr>
                                <td>Id</td>
                                <td>Photo</td>
                                <td>Name</td>
                                <td>Category</td>
                                <td>Price</td>
                                <td>Description</td>
                                <td>Status</td>
                                <td>Action</td>
                            </tr>
                        </thead>
                        <tbody>
                        <%
                        int id=Integer.parseInt(request.getParameter("id"));
                        GroceryDAOImpl dao3=new GroceryDAOImpl(DBconnect.getCon());
                       List<GroceryDtls> list =dao3.getAllProducById(id);
                       for(GroceryDtls g : list){
                    	   %>
                    	   <tr>
                                <td><%=g.getId() %></td>
                                <td><img src="../Documents/<%=g.getPhoto() %>" style="width: 60px; height: 60px"></td>
                                <td><%=g.getName() %></td>
                                <td><%=g.getCategory() %></td>
                                <td><%=g.getPrice() %></td>
                                <td><%=g.getDescription() %></td>
                                <td><%=g.getStatus() %></td>
                                <td>  
                                <a href="../DeleteProduct2?id=<%=g.getId() %>"><button type="submit" class="reject">Delete</button></a>
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