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


		<form action="../patientreport" method="post" enctype="multipart/form-data">
			<div class="form_all" style="height: 50%;
  width: 100%;
  
  padding: 5rem 0;">
				<ul class="form-section" style=" min-height: 40rem;
  margin: 0 20%;
  border: 1rem solid #ffffff;
  background: #f3f3fe;
  border-radius: 2rem;
  list-style: none;
  padding: 1rem;">


					<%
					int apid=Integer.parseInt(request.getParameter("apid"));
					%>
					<input type="hidden" name="id" value="<%=apid %>">



					<div class="address-pet" style="  top: 5rem;
  position: relative;
  width: 100%;
  align-items: center;">
						<div class="labinput" style="width: 100%;">
							<div class="text" style="padding: 1rem 0;
  border-radius: 1rem;">
								<label for="" style=" padding-left: 1rem;
  font-size: 1.5rem;
  font-weight: 500;
  color: #000;">Upload patient medical report :-</label>
							</div>
							<input type="file" required="required" name="report" style=" width: 99%;
  padding: 1rem 1rem;
  border: none;
  background: transparent;
  outline: none;
  color: rgb(0, 0, 0);
  font-size: 1.5rem;
  transition: 0.5s;
  border-left: 0.1rem solid #000;
  border-bottom: 0.1rem solid #000;
  border-right: 0.1rem solid #000;
  border-top: 0.1rem solid #000;
  border-radius: 0.5rem;"/>
						</div>
					</div>



					<div class="for-submit" style="display: flex;
  justify-content: center;">
						<button type="submit" style="cursor: pointer;
  background: linear-gradient(45deg, #cf0d5b -18.43%, #d012aa 80.63%);
  position: relative;
  bottom: -8rem;
  color: #fff;
  border: none;
  padding: 1rem 5rem;
  border-radius: 2rem;
  text-transform: uppercase;
  font-weight: 600;">SUBMIT</button>
					</div>



				</ul>
			</div>
		</form>
		
		</div>
</body>
</html>
