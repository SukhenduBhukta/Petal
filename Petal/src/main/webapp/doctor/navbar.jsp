<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page import="com.entity.User"%>
<%
User us=(User)session.getAttribute("userobj");
%> --%>

	
		<div class="topbar">
                
                <div class="search">
                    <label for="">
                        <input type="text" placeholder="Search Here">
                        <ion-icon name="search-outline"></ion-icon>
                    </label>
                </div>
                <div class="user">
                    <h2>${userobj.dfname }</h2>
                </div>
            </div>

            