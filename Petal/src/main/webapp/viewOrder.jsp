<%@page import="com.entity.Order"%>
<%@page import="com.DAO.OrderDAOImpl"%>
<%@page import="com.entity.GroceryDtls"%>
<%@page import="com.DAO.GroceryDAOImpl"%>
<%@page import="com.entity.User"%>
<%@page import="com.entity.Cart"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DB.DBconnect"%>
<%@page import="com.DAO.CartDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Petal: Your Order</title>
<%@include file="all/viewOrderCss.jsp"%>
</head>
<body>
	<div class="maincontainer">
		<%@include file="all/navbar.jsp"%>
		<c:if test="${empty userobj }">
			<c:redirect url="login.jsp"></c:redirect>
		</c:if>

		<div class="view_order">
			<h1>View Orders</h1>
			

			<div class="order-container">
				<%
				User u = (User) session.getAttribute("userobj");
				OrderDAOImpl dao = new OrderDAOImpl(DBconnect.getCon());
				GroceryDAOImpl dao2 = new GroceryDAOImpl(DBconnect.getCon());
				List<Order> list = dao.getOrderByUId(u.getUserid());
				for (Order o : list) {
					GroceryDtls g = dao2.getProductById(o.getPid());
					int p=o.getPcount();
					int t=Integer.parseInt(g.getPrice());
					int total=p*t;
				%>
				<div class="order">
					<div class="product-details">
						<img src="Documents/<%=g.getPhoto() %>"
							alt="Product 1" class="product-image"> <span
							class="product-name"><%=g.getName() %></span>
					</div>
					<span class="order-number"><%=o.getPcount() %></span>
					<span class="order-number"><%=total %></span>
					<span class="order-number"><%=o.getStatus() %></span>
					
						<span class="delivery-date">Expected
						Delivery between 7 days</span>
						<%if(o.getStatus().equals("Cancel")||o.getStatus().equals("Delivered")){ %>
					 <span class="order-value"></span> 
						<%}else{ %>
							<span class="order-value"><a href="cancelOrder?oid=<%=o.getOid() %>"><button>Cancel</button></a></span> 
						<%} %>
				</div>
				<%
				}
				%>
			</div>
		</div>

		<%@include file="all/footer.jsp"%>
	</div>

</body>
</html>