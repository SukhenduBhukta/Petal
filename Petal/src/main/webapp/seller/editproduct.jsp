<%@page import="com.entity.GroceryDtls"%>
<%@page import="com.DB.DBconnect"%>
<%@page import="com.DAO.GroceryDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Seller: Edit Product</title>
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
<%
int id=Integer.parseInt(request.getParameter("id"));
GroceryDAOImpl dao=new GroceryDAOImpl(DBconnect.getCon());
GroceryDtls g=dao.getProductById(id);

%>
                <form action="../editproduct" method="post" class="contain" enctype="multipart/form-data">
			<h2>EDIT PRODUCT</h2>
			<input type="hidden" name="id" value="<%=g.getId()%>">
			
			<div class="inputbox">
				<i class="fa-solid fa-phone"></i>
				<div class="labinput">
					<div class="text">
						<label for="">Name</label>
					</div>
					<input type="text" required="required" value="<%=g.getName() %>" name="name"/>
				</div>
			</div>
			
			<div class="inputbox">
				<i class="fa-solid fa-filter"></i>
				<div class="labinput">
					<div class="text">
						<label for="">Category</label>
					</div>
					<select name="category" onchange="changeStatus()" id="category">
					<%
					if("Food".equals(g.getCategory())){
						%>
						<option value="Food">Food</option>
  						<option value="Dress">Dress</option>
  						<option value="Toy">Toy</option>
						<%
						}else if("Dress".equals(g.getCategory())){
							%>
							<option value="Dress">Dress</option>
							<option value="Food">Food</option>
							<option value="Toy">Toy</option>
							<%
						}else{
							%>
							<option value="Toy">Toy</option>
							<option value="Food">Food</option>
  						<option value="Dress">Dress</option>
							<%
						}
						%>
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
					<%
					if("Active".equals(g.getStatus())){
						%>
						<option value="Active">Active</option>
  						<option value="Inactive">Inactive</option>
						<%
					}
					else{
						%>
						<option value="Inactive">Inactive</option>
						<option value="Active">Active</option>
						<%
					}
					%>
  
					</select>
				</div>
			</div>
			<div class="inputbox">
				<i class="fa-solid fa-user-tag"></i>
				<div class="labinput">
					<div class="text">
						<label for="">Price</label>
					</div>
					<input type="number" required="required" value="<%=g.getPrice() %>" name="price"/>
				</div>
			</div>
			
			<div class="inputbox">
				<i class="fa-solid fa-user-tag"></i>
				<div class="labinput">
					<div class="text">
						<label for="">Expire Date</label>
					</div>
					<input type="date" required="required" value="<%=g.getExpdate() %>" name="expdate"/>
				</div>
			</div>
			
			<div class="inputbox">
				<i class="fa-solid fa-key"></i>
				<div class="labinput">
					<div class="text">
						<label for="">Description</label>
					</div>
					
					<textarea rows="3" required="required" name="description" value="<%=g.getDescription() %>"></textarea>
				</div>

			</div>
			<button type="submit">Edit</button>
			
		</form>

            </div>
</div>
</div>


</body>
</html>