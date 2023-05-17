<%@page import="com.entity.Payment"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.DAO.DoctorDAOImpl"%>
<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBconnect"%>
<%@page import="com.DAO.AppointmentDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: home</title>
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
                    <div class="cardheader">
                        <h2>Recent Orders</h2>
                        <a href="#" class="btn"> View All</a>
                    </div>
                    <table>
                        <thead>
                            <tr>
                            	
                                <td>Owner Name</td>
                                <td>Pet Name</td>
                                <td>Email</td>
                                <td>Mobile</td>
                                <td>Doctor Name</td>
                                <td>Doctor Id</td>
                                <td>Status</td>
                                <td>Payment Id</td>
                            </tr>
                        </thead>

                        <tbody>
                            <%
                            	AppointmentDAOImpl dao3=new AppointmentDAOImpl(DBconnect.getCon());
                            	List<Appointment> list=dao3.getAllappoint();
                            	for(Appointment ap:list){
                            		
                            		Doctor d1=dao2.getDoctorSinglebyId(ap.getDoctorid());
                            		Payment p=dao3.getPayByapid(ap.getId());
                            %>
                            <tr>
                            
                                <td><%=ap.getOwnerName() %></td>
                                <td><%=ap.getPetName() %></td>
                                <td><%=ap.getEmail() %></td>
                                <td><%=ap.getMob() %></td>
                                <td><%=ap.getDoctorid() %></td>
                                <td><%=d1.getDfname() %> <%=d1.getLfname() %></td>
                                <%if(ap.getStatus().equals("under process")){ %>
                                <td> <span class="status pending">Under Process</span></td>
                                <%}else if(ap.getStatus().equals("schedule")){ %>
                                 <td> <span class="status inprogress">Schedule</span></td>
                                <%}else{ %>
                                 <td> <span class="status delivered">Done</span></td>
                                <%} %>
                                <%if(p==null){ %>
                                <td></td>
                                <%}else{ %>
                                <td><%=p.getRazorpay_payment_id() %></td>
                                <%} %>
                            </tr>
                            <%} %>

                           

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