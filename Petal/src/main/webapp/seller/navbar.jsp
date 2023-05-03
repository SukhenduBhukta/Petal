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
                    <h2>Seller</h2>
                </div>
            </div>

            <div class="cardbox">
                <div class="card">
                    <div>
                        <div class="numbers">1,504</div>
                        <div class="cardname">Daily Views</div>
                    </div>
                    <div class="iconbx">
                        <i class="fa-solid fa-eye"></i>
                    </div>
                </div>

                <div class="card">
                    <div>
                        <div class="numbers">80</div>
                        <div class="cardname">Sales</div>
                    </div>
                    <div class="iconbx">
                        <i class="fa-solid fa-scale-unbalanced-flip"></i>
                    </div>
                </div>

                <div class="card">
                    <div>
                        <div class="numbers">284</div>
                        <div class="cardname">Comments</div>
                    </div>
                    <div class="iconbx">
                        <i class="fa-solid fa-comment"></i>
                    </div>
                </div>

                <div class="card">
                    <div>
                        <div class="numbers">15</div>
                        <div class="cardname">Doctor</div>
                    </div>
                    <div class="iconbx">
                        <i class="fa-solid fa-user-doctor"></i>
                    </div>
                </div>

                <div class="card">
                    <div>
                        <div class="numbers">10</div>
                        <div class="cardname">Seller</div>
                    </div>
                    <div class="iconbx">
                        <i class="fa-solid fa-dollar-sign"></i>
                    </div>
                </div>

            </div>
