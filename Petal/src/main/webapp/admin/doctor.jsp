<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Doctor</title>
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
<c:if test="${empty userobj }">
<c:redirect url="../login.jsp"></c:redirect>
</c:if>
<div class="details">
<div class="recentorders">
<div class="cardheader">
                        <h2>Doctor</h2>
                        <a href="#" class="btn"> View All</a>
                    </div>
                    <table>
                    <thead>
                            <tr>
                                <td>Id</td>
                                <td>Name</td>
                                <td>Phone</td>
                                <td>Email</td>
                                <td>Document</td>
                                <td>Action</td>
                            </tr>
                        </thead>
                        <tbody>
                        <tr>
                                <td>1</td>
                                <td>Koushik Sarkar</td>
                                <td>9837476733</td>
                                <td>koushiksarkar@gmail.com</td>
                                <td>Document</td>
                                <td> <button>Add</button><button>Reject</button></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Koushik Sarkar</td>
                                <td>9837476733</td>
                                <td>koushiksarkar@gmail.com</td>
                                <td>Document</td>
                                <td> <button>Add</button><button>Reject</button></td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Koushik Sarkar</td>
                                <td>9837476733</td>
                                <td>koushiksarkar@gmail.com</td>
                                <td>Document</td>
                                <td> <button>Add</button><button>Reject</button></td>
                            </tr>
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
        </script>
</body>
</html>