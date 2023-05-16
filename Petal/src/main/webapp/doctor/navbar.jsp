<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page import="com.entity.User"%>
<%
User us=(User)session.getAttribute("userobj");
%> --%>

	
		<%@page import="com.entity.Doctor"%>
<%@page import="com.DB.DBconnect"%>
<%@page import="com.DAO.DoctorDAOImpl"%>
<div class="topbar">
                
                <div class="search">
                    <label for="">
                        <input type="text" placeholder="Search Here">
                        <ion-icon name="search-outline"></ion-icon>
                    </label>
                </div>
                <%
                Doctor u=(Doctor)session.getAttribute("userobj");
                DoctorDAOImpl dao=new DoctorDAOImpl(DBconnect.getCon());
                String s=dao.activeIn(u.getDid());
                if(s.equals("active")){
                %>
                <a href="../active?did=<%=u.getDid() %>"><button style="padding: 5px 10px; background: red; color:#fff; border-radius: 30px;">Inactive</button></a>
                <%}else{ %>
                <a href="../inactive?did=<%=u.getDid() %>"><button style="padding: 5px 10px; background: green; color:#fff; border-radius: 30px;">Active</button></a>
                <%} %>
                <c:if test="${not empty userobj.pimg }">
							<div class="profile" style="height: 6rem;width:6rem;border-radius:50%;">
								<img src="../Documents/${userobj.pimg }" style="height: 6rem;width:6rem;border-radius:50%;">
							</div>
						</c:if> <c:if test="${empty userobj.pimg }">
							<div class="profile" style="height: 6rem;width:6rem;border-radius:50%;">
								<img src="./all/Img/user.png" style="height: 6rem;width:6rem;border-radius:50%;">
							</div>
						</c:if>
						<h2 style="margin: 0 3rem 0 0;">${userobj.dfname }</h2>
                <div class="user">
                
                    
                </div>
            </div>

            