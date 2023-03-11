<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PETAL: Appointment</title>
<%@include file="all/appointmentCss.jsp"%>
</head>
<body>
	<div class="maincontainer">
	<%@include file="all/navbar.jsp"%>
	<form action="post">
            <div class="form_all">
                <ul class="form-section">
                    <div class="top-form-try">
                        <li class="form-line-col-1">
                            <div><img alt="Image" class="form-image" src="./all/Img/logo.png" /> </div>
                        </li>

                        <li class="form-col-2">
                            <div class="form-input-wide">
                                <div class="form-html">
                                    <div>
                                        <div><strong>PET CARE Hospital</strong></div>
                                        <div>Canel Road, Kolaghat, East Medinipur, 721171</div>
                                        <div>
                                            <div>petal@gmail.com</div>
                                            <div>www.petal.com</div>
                                            <div>+91 73197 28373</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </div>

                    <li class="form-input-wide-2">
                        <div class="form-header-group">
                            <div class="header-text">
                                <h1>Doctor Appointment Request Form</h1>
                                <p>Fill the form below and we will get back soon to you for more updates and plan your
                                    appointment.</p>
                            </div>
                        </div>
                    </li>
                    <div class="name-input">
                        <div class="labinput">
                            <div class="text"><label for=""><span style="color: red;">*</span>Owner Name : -</label></div>
                            <input type="text" required="required" />
                        </div>
                        <div class="labinput">
                            <div class="text"><label for=""><span style="color: red;">*</span>Pet Name : -</label></div>
                            <input type="text" required="required" />
                        </div>
                    </div>

                    <div class="phone-gender">
                        <div class="inputbox">
                            <div class="labinput1">
                                <div class="text"><label for=""><span style="color: red;">*</span>Gender : -</label></div>
                                <select name="option" placeholder="select">
                                    <option value="Select">--->Select<---</option>
                                    <option value="Male">Male</option>
                                    <option value="Female">Female</option>
                                </select>
                            </div>
                        </div>

                        <div class="inputbox">
                            <div class="labinput">
                                <div class="text"><label for=""><span style="color: red;">*</span>Mobile : -</label></div>
                                <input type="number" required="required" />
                            </div>
                        </div>

                    </div>

                    <div class="address-pet">
                        <div class="labinput">
                            <div class="text"><label for=""><span style="color: red;">*</span>Address : -</label></div>
                            <input type="text" required="required" />
                        </div>
                        <div class="labinput">
                            <div class="text"><label for="">Street: -</label></div>
                            <input type="text"/>
                        </div>
                    </div>

                    <div class="address-pet-dist">
                        <div class="labinput">
                            <div class="text"><label for=""><span style="color: red;">*</span>City : -</label></div>
                            <input type="text" required="required" />
                        </div>
                        <div class="labinput">
                            <div class="text"><label for=""><span style="color: red;">*</span>State : -</label></div>
                            <input type="text" required="required" />
                        </div>
                        <div class="labinput">
                            <div class="text"><label for=""><span style="color: red;">*</span>Pin Code : -</label></div>
                            <input type="number" required="required" />
                        </div>
                    </div>
                    <div class="email-add">
                        <div class="labinput">
                            <div class="text"><label for=""><span style="color: red;">*</span>Email : -</label></div>
                            <input type="email" required="required" placeholder="example@gmail.com" />
                        </div>

                        <div class="labinput2">
                            <div class="text"><label for=""><span style="color: red;">*</span>Age: -</label></div>
                            <input type="number" required="required" />
                        </div>
                    </div>
                    <div class="appontment-section">
                        <div class="labinput">
                            <div class="text"><label for=""><span style="color: red;">*</span>Date: -</label></div>
                            <input type="date" required="required" />
                        </div>
                    </div>

                    <div class="for-submit">
                        <button type="submit">SUBMIT</button>
                    </div>



                </ul>
            </div>
        </form>
        <%@include file="all/footer.jsp"%>
		</div>
</body>
</html>
