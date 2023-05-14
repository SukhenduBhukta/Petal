<%@page import="com.entity.User"%>
<%@page import="com.DB.DBconnect"%>
<%@page import="com.DAO.GroceryDAOImpl"%>
<%@page import="com.entity.GroceryDtls"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Petal: Grocery</title>
<%@include file="all/groceryCss.jsp"%>
</head>
<body>
<div class="maincontainer">
<%@include file="all/navbar.jsp"%>
<%
User u=(User)session.getAttribute("userobj");
%>
<section id="product1" class="section-p1">
            
    
            <div class="pro-container">
            <%
            String ch=request.getParameter("ch");
            GroceryDAOImpl dao=new GroceryDAOImpl(DBconnect.getCon());
            List<GroceryDtls> list=dao.getProductBySearch(ch);
            for(GroceryDtls g:list){
            	%>
            	<div class="pro"  onclick="window.location.href='view.jsp?pid=<%=g.getId() %>&&type=<%=g.getCategory() %>';">
                    <div class="img"><img src="Documents/<%=g.getPhoto() %>" alt=""></div>
                    <div class="desc">
                        <span>Petal</span>
                        <h5><%=g.getName() %></h5>
                        <div class="star">
                        <h3>3.5<i class="fas fa-star"></i></h3>
                            
                            
                        </div>
                        <h4>₹<%=g.getPrice() %></h4>
                    </div>
                    <a href="cartServlet?pid=<%=g.getId() %>&&uid=<%=u.getUserid() %>" class="cart"> <i class="fa-solid fa-cart-shopping"></i> </a>
                </div>
            	<%
            }
            %>

            </div>
    
        </section>

<%@include file="all/footer.jsp"%>
</div>
<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
	<script src="./all/js/main.js"></script>
</body>
</html>