<%@page import="com.DB.DBconnect"%>
<%@page import="com.DAO.DoctorDAOImpl"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PETAL: Home</title>
<%@include file="all/allCSS.jsp"%>

</head>
<body>
<%
User u=(User)session.getAttribute("userobj");
%>
	<div class="maincontainer">
		<%@include file="all/apNavbar.jsp"%>
		
		<section class="home">
            <div class="entry_view">
                <img src="./all/Img/interesting-cat-facts 1.png" alt="interesting-cat-facts">
            </div>
            <div class="appoinment">
                <div class="text">
                    <div class="app_text">
                        <h3> <span>|</span> A Range of Programs for Animals Care</h3>
                        <h2><div class="static"> A Special</div> 
                        <ul><div class="dynamic">
                            <li><span>Touch</span></li>
                            <li><span>Doctor</span></li>
                            <li><span>Patient</span></li>
                        </div></ul>
                        </h2>
                    </div>
                    <div class="img">
                        <img src="./all/Img/Public_Opinion.png" alt="">
                    </div>
                </div>
                <a href="appointment.jsp">
                    <div class="app_btn">
                        <button type="submit" method="post">Make an Appointment</button>
                    </div>
                </a>
            </div>
        </section>
        <section class="choose">
            <section class="parallax">
                <div class="parallax-inner">
                    <div class="left">
                        <div class="wcu">
                            <h2>Why Choose Us?</h2>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Impedit fugiat expedita
                                voluptate
                                maiores ex. Quisquam voluptas blanditiis enim id itaque odit distinctio nostrum, quas
                                consequatur, quaerat eum ad, ab at corrupti iste illo culpa. Porro quam natus architecto
                                maxime
                                fugiat? Labore quam adipisci ad, porro blanditiis magni fuga corrupti repudiandae?
                            </p>
                            <button type="submit">LEARN MORE</button>
                        </div>
                    </div>
                    <div class="right">
                        <div class="two">
                            <div class="profdoc">
                                <div class="img">
                                    <img src="./all/Img/Untitled-2 1.png" alt="">
                                </div>
                                <div class="text">
                                    <h2>Professional Doctors</h2>
                                </div>
                            </div>
                            <div class="care">
                                <div class="img">
                                    <img src="./all/Img/Untitled-3 1.png" alt="">
                                </div>
                                <div class="text">
                                    <h2>Care With Love</h2>
                                </div>
                            </div>
                        </div>
                        <div class="one">
                            <div class="support">
                                <div class="img">
                                    <img src="./all/Img/Untitled-1 1.png" alt="">
                                </div>
                                <div class="text">
                                    <h2>24 / 7 Support</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </section>

        <section class="doctor">
            <h2>24 X 7 Specialist Doctor</h2>
            <div class="swiper mySwiper container">

                <div class="swiper-wrapper all_card">
                   
					<%
                        DoctorDAOImpl dao = new DoctorDAOImpl(DBconnect.getCon());
                        List<Doctor> list = dao.getDoctorbyId();
                        		
                        for(Doctor us: list){
                        	double r=dao.DoctorStar(us.getDid());
                        	%>

                    <div class="swiper-slide">
                        <div class="card_1 swiper-slide" id="card_2">
                            <div class="doc_img_box">
                            <%
                            if(us.getPimg()!=null){
                            %>
                                <img src="Documents/<%=us.getPimg() %>" alt="XXXX">
                                <%
                            }else{
                                %>
                                <img src="./all/Img/user.png" alt="XXXX">
                                <%
                                }
                            	%>
                            </div>
                            <div class="doc_details">
                            <%if(r>0.0){ %>
                            <div class="star" style="position: relative;
    top: -20px;
    right: -28px;">
					<h4 style="font-size:1.6rem;"><%=r %><i class="fas fa-star" style="color: red;"></i></h4>
				</div>
				<%}%>
                                <div class="doc_name">
                                    <h2>Dr. <%=us.getDfname()+" "+us.getLfname() %> <br> <%if(us.getDesignation()==null){ %>
                                    <span> </span>
                                    <%}else{ %>
                                    <span>Specialist in <%=us.getDesignation() %> </span>
                                    <%} %> </h2>
                                    <div class="doc_cotact">
                                    <a href="appointdoctor.jsp?did=<%=us.getDid() %>"><button>Connect With Me</button></a>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%
                    }
                    %>
                    
                </div>
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-pagination"></div>
            </div>
            
        </section>

        <section class="advisement">
            <div class="advisement_main">
                
                <div class="right_Add">
                    <a href="grocery.jsp"><img src="./all/Img/Addv/add-food.jpg" alt=""></a>
                </div>
            </div>

        </section>
		<%@include file="all/footer.jsp"%>
	</div>
	<script type="text/javascript">
        let popup = document.getElementById("popup");
        function openPopup() {
            popup.classList.add("open-popup");
        }
        function closePopup() {
            popup.classList.remove("open-popup");
        }
        </script>
	<script src="./all/js/main.js"></script>
</body>
</html>