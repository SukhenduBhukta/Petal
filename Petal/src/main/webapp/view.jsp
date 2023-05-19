<%@page import="com.entity.User"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.GroceryDtls"%>
<%@page import="com.DB.DBconnect"%>
<%@page import="com.DAO.GroceryDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Petal: Product view</title>
<%@include file="all/groceryCss.jsp"%>
</head>
<body>
	<div class="maincontainer">
		<%@include file="all/navbar.jsp"%>
		<%
User u=(User)session.getAttribute("userobj");
%>
		<%
		int id = Integer.parseInt(request.getParameter("pid"));
		GroceryDAOImpl dao = new GroceryDAOImpl(DBconnect.getCon());
		GroceryDtls g = dao.getProductById(id);
		%>
		
		<!-- start product deltails  -->
		<section id="prodetails" class="section-p1">
			<div class="single-pro-img">
				<img src="Documents/<%=g.getPhoto() %>" width="100%" id="mainimg"
					alt="">

			</div>
			<div class="single-pro-details">
				<h3><%=g.getCategory() %></h3>
				<h4><%=g.getName() %></h4>
				<h2>₹<%=g.getPrice() %></h2>

				
				<a href="cartServlet?pid=<%=g.getId() %>&&uid=<%=u.getUserid() %>"><button class="normal">Add To Cart</button></a>
				<div class="star">
					<h4>3.5<i class="fas fa-star"></i></h4>
				</div>
				<span> Expire By:- <%=g.getExpdate() %> </span><br><br>
				<span> Company Name:- <%=g.getCname() %> </span>
				<h4>Product Details</h4>
				<span> <%=g.getDescription() %> </span>
			</div>

		</section>
	<!-- end product deltails  -->
	
	<!-- start same product   -->
		<section id="product1" class="section-p1">
		
			<h2>Featured Product</h2>
			<p>Summer Collection New Morden Design</p>

			<div class="pro-container">
			<%
		String type=request.getParameter("type");
		GroceryDAOImpl dao2=new GroceryDAOImpl(DBconnect.getCon());
		List<GroceryDtls> list=dao2.getProductByType(type);
		for(GroceryDtls g2:list){
			%>
			<div class="pro" onclick="window.location.href='view.jsp?pid=<%=g2.getId() %>&&type=<%=g2.getCategory() %>';">
			<img src="Documents/<%=g2.getPhoto() %>" alt="">
			<div class="desc">
				<span><%=g2.getSeller() %></span>
				<h5><%=g2.getName() %></h5>
				<div class="star">
					<h3>3.5<i class="fas fa-star"></i></h3>
				</div>
				<h4>₹<%=g2.getPrice() %></h4>
			</div>
			<a href="cartServlet?pid=<%=g.getId() %>&&uid=<%=u.getUserid() %>" class="cart"> <i class="bi bi-cart3"></i>
			</a>
		</div>
		<%
		}
		%>
				

			</div>

		</section>
		<!-- end same product   -->
		<%@include file="all/footer.jsp"%>
</body>
</html>