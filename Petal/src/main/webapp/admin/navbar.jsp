
	
		<%@page import="com.DAO.UserDAOImpl"%>
<%@page import="com.DB.DBconnect"%>
<%@page import="com.DAO.DoctorDAOImpl"%>
<div class="topbar">
                
                <div class="search">
                    
                </div>
                <div class="user">
                    <h2>Admin</h2>
                </div>
            </div>

            <div class="cardbox">
                <%
                UserDAOImpl dao=new UserDAOImpl(DBconnect.getCon());
                int s=dao.Sellercount();
                DoctorDAOImpl dao2=new DoctorDAOImpl(DBconnect.getCon());
        		int d=dao2.Doctorcount();
                %>

                <div class="card">
                    <div>
                        <div class="numbers"><%=d %></div>
                        <div class="cardname">Doctor</div>
                    </div>
                    <div class="iconbx">
                        <i class="fa-solid fa-user-doctor"></i>
                    </div>
                </div>

                <div class="card">
                    <div>
                        <div class="numbers"><%=s %></div>
                        <div class="cardname">Seller</div>
                    </div>
                    <div class="iconbx">
                        <i class="fa-solid fa-dollar-sign"></i>
                    </div>
                </div>

            </div>
