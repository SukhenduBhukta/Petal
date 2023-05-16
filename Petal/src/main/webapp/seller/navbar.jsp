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
                <c:if test="${not empty userobj.pimg }">
							<div class="profile" style="height: 6rem;width:6rem;border-radius:50%;">
								<img src="../Documents/${userobj.pimg }" style="height: 6rem;width:6rem;border-radius:50%;">
							</div>
						</c:if> <c:if test="${empty userobj.pimg }">
							<div class="profile" style="height: 6rem;width:6rem;border-radius:50%;">
								<img src="./all/Img/user.png" style="height: 6rem;width:6rem;border-radius:50%;">
							</div>
						</c:if>
                <div class="user">
                
                    <h2>${userobj.fname }</h2>
                </div>
            </div>

            
