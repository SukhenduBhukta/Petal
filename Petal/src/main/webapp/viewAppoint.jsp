<%@page import="com.entity.Appointment"%>
<%@page import="com.DAO.AppointmentDAOImpl"%>
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
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Petal: Your Appointment</title>
<%@include file="all/viewOrderCss.jsp"%>
</head>
<body>
	<div class="maincontainer">
		<%@include file="all/navbar.jsp"%>
		<c:if test="${empty userobj }">
			<c:redirect url="login.jsp"></c:redirect>
		</c:if>
		
		<div class="appointment_status">
		<c:if test="${not empty succMsgs }">
					<p style="color:green;">${succMsgs }</p>
					<c:remove var="succMsgs" scope="session"/>
				</c:if>
			<c:if test="${not empty faildMsgs }">
					<p style="color:red;">${faildMsgs }</p>
					<c:remove var="faildMsgs" scope="session"/>
				</c:if>
        <h1>Appointment View</h1>
        <%
        User u=(User)session.getAttribute("userobj");
        AppointmentDAOImpl dao=new AppointmentDAOImpl(DBconnect.getCon());
        List<Appointment> list=dao.getAllappointByUid(u.getUserid());
        for(Appointment ap:list){
        %>
    <table>
        <tr>
            <th>Appointment ID</th>
           
            <td><%=ap.getId() %></td>
        </tr>
        <tr>
            <th>Pet Name</th>
           
            <td><%=ap.getPetName() %></td>
        </tr>
        <tr>
            <th>Appointment Date</th>
            
            <td><%=ap.getDate() %></td>
        </tr>
        <%if(!(ap.getStatus().equals("under process") || ap.getStatus().equals("cancel"))){ %>
        <tr>
            <th>Appointment Time</th>
           <%
           String t=ap.getTime();
           String hh=t.substring(0, 2);
           String mm=t.substring(3);
           int h=Integer.parseInt(hh);
           int m=Integer.parseInt(mm);
           int m1=m+30;
           if(m1>=60){
        	   m=m1-60;
        	   h+=1;
        		if(m==0){
        			mm="00";
        		}else if(m<10){
        			mm="0"+Integer.toString(m);
        		}else{
        			mm=Integer.toString(m);
        		}
           }else{
        	   m=m1;
           }
           %>
            <td><%=ap.getTime() %> - <%=h %>:<%=mm %></td>
        </tr>
        <tr>
            <th>Appointment Link</th>
            
            <td><a href="<%=ap.getId() %>" target="_blank"><%=ap.getLink() %></a></td>
        </tr>
        <%} %>
       <%if(ap.getReport()!=null){ %>
        <tr>
            <th>Doctor Remark</th>
           
            <td><a download="Documents/<%=ap.getReport() %>"
                    href="Documents/<%=ap.getReport() %>"
                    target="_blank"><button style="padding: 5px 10px; background: #333; color:#fff; border-radius:4px;">Download</button></a></td>
        </tr>
        <tr>
            <th>Give Doctor Rating</th>
           
            <td><a href="rating.jsp?did=<%=ap.getDoctorid() %>"><button style="padding: 5px 10px; background: red; color:#fff; border-radius:4px;">Rate Me</button></a></td>
        </tr>
        <%} %>
        <tr>
            <th>Status</th>
            
            <%if(ap.getStatus().equals("Done")){ %>
            <td class="completed">Completed</td>
            <%}else if(ap.getStatus().equals("schedule")){ %>
            <td class="pending" style="color:purple;">Scheduled</td>
            <%}else if(ap.getStatus().equals("under process")){ %>
            <td class="pending">Pending</td>
            <%}else{ %>
            <td class="cancelled">Cancelled</td>
            <%} %>
        </tr>
    </table>
    <%} %>
    
    </div>
		
<%@include file="all/footer.jsp"%>
	</div>

</body>
</html>


