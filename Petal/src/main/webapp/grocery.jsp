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
<section id="product1" class="section-p1">
            <h2>Featured Products</h2>
            <p>Summer Collection New Morden Design</p>
    
            <div class="pro-container">
            <%
            GroceryDAOImpl dao=new GroceryDAOImpl(DBconnect.getCon());
            List<GroceryDtls> list=dao.getFood();
            for(GroceryDtls g:list){
            	%>
            	<div class="pro"  onclick="window.location.href='sproduct.html';">
                    <div class="img"><img src="Documents/<%=g.getPhoto() %>" alt=""></div>
                    <div class="desc">
                        <span>Petal</span>
                        <h5><%=g.getName() %></h5>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>₹<%=g.getPrice() %></h4>
                    </div>
                    <a href="#" class="cart"> <i class="bi bi-cart3"></i> </a>
                </div>
            	<%
            }
            %>

            </div>
    
        </section>

        <section id="feature_gro" class="section-p1">
            <div class="fe-box">
                <img src="./all/Img/features/f1.png" alt="">
                <h6>Free Shipping</h6>
            </div>
            <div class="fe-box">
                <img src="./all/Img/features/f2.png" alt="">
                <h6>online Order</h6>
            </div>
            <div class="fe-box">
                <img src="./all/Img/features/f3.png" alt="">
                <h6>Save Money</h6>
            </div>
            <div class="fe-box">
                <img src="./all/Img/features/f4.png" alt="">
                <h6>Promotions</h6>
            </div>
            <div class="fe-box">
                <img src="./all/Img/features/f5.png" alt="">
                <h6>Happy Sell</h6>
            </div>
            <div class="fe-box">
                <img src="./all/Img/features/f6.png" alt="">
                <h6>F24/7 Support</h6>
            </div>
        </section>

        <section id="product1" class="section-p1">
            <h2>Pet's Dress</h2>
            <p>Summer & Winter Collection New Morden Design</p>
    
            <div class="pro-container">
            
            <%
            GroceryDAOImpl dao2=new GroceryDAOImpl(DBconnect.getCon());
            List<GroceryDtls> list2=dao2.getDress();
            for(GroceryDtls g:list2){
            	%>
            	<div class="pro"  onclick="window.location.href='sproduct.html';">
                    <div class="img"><img src="Documents/<%=g.getPhoto() %>" alt=""></div>
                    <div class="desc">
                        <span>Petal</span>
                        <h5><%=g.getName() %></h5>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>₹<%=g.getPrice() %></h4>
                    </div>
                    <a href="#" class="cart"> <i class="bi bi-cart3"></i> </a>
                </div>
            	<%
            }
            %>
            
    
            </div>
    
        </section>
        <section id="dress_banner">
            <a href="#">
                <div class="banner_add">
                </div>
            </a>

        </section>

        <section id="product1" class="section-p1">
            <h2>Pet's Toy</h2>
            <p>Summer & Winter Collection New Morden Design</p>
    
            <div class="pro-container">
            <%
            GroceryDAOImpl dao3=new GroceryDAOImpl(DBconnect.getCon());
            List<GroceryDtls> list3=dao3.getToy();
            for(GroceryDtls g:list3){
            	%>
            	<div class="pro"  onclick="window.location.href='sproduct.html';">
                    <div class="img"><img src="Documents/<%=g.getPhoto() %>" alt=""></div>
                    <div class="desc">
                        <span>Petal</span>
                        <h5><%=g.getName() %></h5>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>₹<%=g.getPrice() %></h4>
                    </div>
                    <a href="#" class="cart"> <i class="bi bi-cart3"></i> </a>
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