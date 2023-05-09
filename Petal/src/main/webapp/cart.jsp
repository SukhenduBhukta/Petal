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
<title>Petal: Cart</title>
<%@include file="all/cartcss.jsp"%>
</head>
<body>
	<div class="maincontainer">
	<%@include file="all/navbar.jsp"%>
	<c:if test="${empty userobj }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>
<c:if test="${not empty removeCart }">
					<p style="color:green;">${removeCart }</p>
					<c:remove var="removeCart" scope="session"/>
				</c:if>
<c:if test="${not empty failed }">
					<p style="color:red;">${failed }</p>
					<c:remove var="failed" scope="session"/>
				</c:if>
<section id="cart" class="section-p1">
            <table width="100%">
                <thead>
                    <tr>
                        <td>Remove</td>
                        <td>Image</td>
                        <td>Product</td>
                        <td>Price</td>
                        <td>Quantity</td>
                        <td>Subtotal</td>
                    </tr>
                </thead>
    
    

                <tbody>
                    <%
    	User us=(User)session.getAttribute("userobj");
    	CartDAOImpl dao=new CartDAOImpl(DBconnect.getCon());
    	List<Cart> list = dao.getCartbyUserid(us.getUserid());
    	double total=0.0;
    	for(Cart c:list){
    		total+=c.getTprice();
    		GroceryDAOImpl dao2=new GroceryDAOImpl(DBconnect.getCon());
    		GroceryDtls g=dao2.getProductById(c.getPid());
    	
    %>
                    <tr>
                        <td><a href="cartDelete?pid=<%=c.getPid() %>&&uid=<%=c.getUid() %>"><i class="fa-solid fa-xmark"></i></a></td>
                        <td><img src="Documents/<%=g.getPhoto() %>" alt=""></td>
                        <td><%=c.getPname() %></td>
                        <td><%=c.getPrice() %></td>
                        <td><%=c.getPcount() %> <a href="cartServlet?pid=<%=g.getId() %>&&uid=<%=c.getUid() %>"><button>ADD</button></a></td>
                        <td><%=c.getTprice() %></td>
                    </tr>
    <%
    	}
    %>
                    
                </tbody>
            </table>
        </section>

        <section id="cart-add" class="section-p1">
            <div id="coupon">
                <h3>Apply Coupon</h3>
                <div>
                    <input type="text" placeholder="Enter Your Coupon">
                    <button class="normal">Apply</button>
                </div>
            </div>
    
            <div id="subtotal">
                <h3>Cart Totals</h3>
                <table>
                    <tr>
                        <td>Cart Subtotal </td>
                        <td>₹<%=total %></td>
                    </tr>
                    <tr>
                        <td>Shipping </td>
                        <td>Free</td>
                    </tr>
                    <tr>
                        <td><strong>Total</strong></td>
                        <td><strong>₹<%=total %></strong></td>
                    </tr>
                </table>
                <a href="address.jsp"><button class="normal">Proceed to Checkout</button></a>
            </div>
        </section>
        <%@include file="all/footer.jsp"%>
</div>

</body>
</html>