<%@page import="com.entity.Doctor"%>
<%@page import="com.entity.Appointment"%>
<%@page import="com.DAO.AppointmentDAOImpl"%>
<%@page import="com.entity.Cart"%>
<%@page import="com.DAO.CartDAOImpl"%>
<%@page import="com.entity.GroceryDtls"%>
<%@page import="com.DAO.GroceryDAOImpl"%>
<%@page import="com.entity.User"%>
<%@page import="com.entity.Order"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBconnect"%>
<%@page import="com.DAO.OrderDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor: Home</title>
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
        <c:if test="${empty userobj2 }">
<c:redirect url="../login.jsp"></c:redirect>
</c:if>
<%@include file="navbar.jsp"%>


		<form action="../DocApproval" method="post">
			<div class="form_all">
				<ul class="form-section">

					<%
					int apid=Integer.parseInt(request.getParameter("apid"));
					String email=request.getParameter("email");
					%>
					<input type="hidden" name="id" value="<%=apid %>">
					<input type="hidden" name="email" value="<%=email %>">

					<div class="name-input">
						<div class="labinput">
							<div class="text">
								<label for=""><span style="color: red;">*</span>Enter
									time</label>
							</div>
							<input type="time" required="required" name="time" />
						</div>
					</div>

					<div class="address-pet">
						<div class="labinput">
							<div class="text">
								<label for=""><span style="color: red;">*</span>Enter
									Meeting link</label>
							</div>
							<input type="link" required="required" name="link" />
						</div>
					</div>



					<div class="for-submit">
						<button type="submit">SUBMIT</button>
					</div>



				</ul>
			</div>
		</form>
		
	</div>
</body>
</html>
