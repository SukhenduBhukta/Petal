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
		<%@include file="all/navbar.jsp"%>
		
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
                    <div class="swiper-slide">
                        <div class="card_1" id="card_1">
                            <div class="doc_img_box">
                                <img src="./all/Img/user.png" alt="XXXX">
                            </div>
                            <div class="doc_details">
                                <div class="doc_name">
                                    <h2>Dr.Prriti Agarwal <br> <span>Specialist in BVSC</span> </h2>
                                    <div class="doc_cotact">
                                        <button>Connect With Me</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="swiper-slide">
                        <div class="card_1" id="card_2">
                            <div class="doc_img_box">
                                <img src="./all/Img/Dr.Kapil K Guho.png" alt="XXXX">
                            </div>
                            <div class="doc_details">
                                <div class="doc_name">
                                    <h2>Dr.Prriti Agarwal <br> <span>Specialist in BVSC</span> </h2>
                                    <div class="doc_cotact">
                                        <button>Connect With Me</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="swiper-slide">
                        <div class="card_1 swiper-slide" id="card_3">
                            <div class="doc_img_box">
                                <img src="./all/Img/Dr.Smriti Guho.png" alt="XXXX">
                            </div>
                            <div class="doc_details">
                                <div class="doc_name">
                                    <h2>Dr.Prriti Agarwal <br> <span>Specialist in BVSC</span> </h2>
                                    <div class="doc_cotact">
                                        <button>Connect With Me</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="swiper-slide">
                        <div class="card_1 swiper-slide" id="card_4">
                            <div class="doc_img_box">
                                <img src="./all/Img/Dr.Prriti Agarwal.png" alt="XXXX">
                            </div>
                            <div class="doc_details">
                                <div class="doc_name">
                                    <h2>Dr.Prriti Agarwal <br> <span>Specialist in BVSC</span> </h2>
                                    <div class="doc_cotact">
                                        <button>Connect With Me</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="card_1" id="card_1">
                            <div class="doc_img_box">
                                <img src="./all/Img/Dr.Prriti Agarwal.png" alt="XXXX">
                            </div>
                            <div class="doc_details">
                                <div class="doc_name">
                                    <h2>Dr.Prriti Agarwal <br> <span>Specialist in BVSC</span> </h2>
                                    <div class="doc_cotact">
                                        <button>Connect With Me</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="swiper-slide">
                        <div class="card_1" id="card_2">
                            <div class="doc_img_box">
                                <img src="./all/Img/Dr.Kapil K Guho.png" alt="XXXX">
                            </div>
                            <div class="doc_details">
                                <div class="doc_name">
                                    <h2>Dr.Prriti Agarwal <br> <span>Specialist in BVSC</span> </h2>
                                    <div class="doc_cotact">
                                        <button>Connect With Me</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="swiper-slide">
                        <div class="card_1 swiper-slide" id="card_3">
                            <div class="doc_img_box">
                                <img src="./all/Img/Dr.Smriti Guho.png" alt="XXXX">
                            </div>
                            <div class="doc_details">
                                <div class="doc_name">
                                    <h2>Dr.Prriti Agarwal <br> <span>Specialist in BVSC</span> </h2>
                                    <div class="doc_cotact">
                                        <button>Connect With Me</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="swiper-slide">
                        <div class="card_1 swiper-slide" id="card_4">
                            <div class="doc_img_box">
                                <img src="./all/Img/Dr.Prriti Agarwal.png" alt="XXXX">
                            </div>
                            <div class="doc_details">
                                <div class="doc_name">
                                    <h2>Dr.Prriti Agarwal <br> <span>Specialist in BVSC</span> </h2>
                                    <div class="doc_cotact">
                                        <button>Connect With Me</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="card_1" id="card_1">
                            <div class="doc_img_box">
                                <img src="./all/Img/Dr.Prriti Agarwal.png" alt="XXXX">
                            </div>
                            <div class="doc_details">
                                <div class="doc_name">
                                    <h2>Dr.Prriti Agarwal <br> <span>Specialist in BVSC</span> </h2>
                                    <div class="doc_cotact">
                                        <button>Connect With Me</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="swiper-slide">
                        <div class="card_1" id="card_2">
                            <div class="doc_img_box">
                                <img src="./all/Img/Dr.Kapil K Guho.png" alt="XXXX">
                            </div>
                            <div class="doc_details">
                                <div class="doc_name">
                                    <h2>Dr.Prriti Agarwal <br> <span>Specialist in BVSC</span> </h2>
                                    <div class="doc_cotact">
                                        <button>Connect With Me</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="swiper-slide">
                        <div class="card_1 swiper-slide" id="card_3">
                            <div class="doc_img_box">
                                <img src="./all/Img/Dr.Smriti Guho.png" alt="XXXX">
                            </div>
                            <div class="doc_details">
                                <div class="doc_name">
                                    <h2>Dr.Prriti Agarwal <br> <span>Specialist in BVSC</span> </h2>
                                    <div class="doc_cotact">
                                        <button>Connect With Me</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="swiper-slide">
                        <div class="card_1 swiper-slide" id="card_4">
                            <div class="doc_img_box">
                                <img src="./all/Img/Dr.Prriti Agarwal.png" alt="XXXX">
                            </div>
                            <div class="doc_details">
                                <div class="doc_name">
                                    <h2>Dr.Prriti Agarwal <br> <span>Specialist in BVSC</span> </h2>
                                    <div class="doc_cotact">
                                        <button>Connect With Me</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="swiper-slide">
                        <div class="card_1 swiper-slide" id="card_3">
                            <div class="doc_img_box">
                                <img src="./all/Img/Dr.Smriti Guho.png" alt="XXXX">
                            </div>
                            <div class="doc_details">
                                <div class="doc_name">
                                    <h2>Dr.Prriti Agarwal <br> <span>Specialist in BVSC</span> </h2>
                                    <div class="doc_cotact">
                                        <button>Connect With Me</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="swiper-slide">
                        <div class="card_1 swiper-slide" id="card_4">
                            <div class="doc_img_box">
                                <img src="./all/Img/Dr.Prriti Agarwal.png" alt="XXXX">
                            </div>
                            <div class="doc_details">
                                <div class="doc_name">
                                    <h2>Dr.Prriti Agarwal <br> <span>Specialist in BVSC</span> </h2>
                                    <div class="doc_cotact">
                                        <button>Connect With Me</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-pagination"></div>
            </div>
            <h3>100+ Doctor Available All The Time To Help You</h3>
        </section>

        <section class="advisement">
            <div class="advisement_main">
                <div class="let_Add">
                    <a href="adoption.jsp"><img src="./all/Img/Addv/add-pet.png" alt=""></a>
                </div>
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
	<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
	<script src="./all/js/main.js"></script>
</body>
</html>