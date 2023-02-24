<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Petal: Forgot Password</title>
<style>
   * {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
}

html {
  font-size: 62.5%;
  scroll-behavior: smooth;
}

body::-webkit-scrollbar {
  display: none;
}

input,
select {
  border: none;
  outline: none;
}

select {
  cursor: pointer;
}

a {
  text-transform: none;
  text-decoration: none;
  cursor: pointer;
}

img {
  height: 100%;
  width: 100%;
}

i {
  font-size: 2.5rem;
  cursor: pointer;
}

.maincontainer {
  min-height: 100vh;
  width: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
  background: #727272;
}
.maincontainer .container {
  min-height: 25rem;
  width: 40rem;
  background: #ffffff;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  border-radius: 1rem;
  box-shadow: 0 1rem 1rem rgba(0, 0, 0, 0.5);
}
.maincontainer .container .text {
  font-size: 2rem;
  font-weight: 700;
}
.maincontainer .container .text::after {
  content: "";
  display: flex;
  width: 0%;
  height: 2px;
  background: #000;
}
.maincontainer .container input {
  width: 80%;
  height: 3rem;
  padding-left: 1rem;
  border-bottom: 1px solid #000;
  margin: 3rem 0;
}
.maincontainer .container .btn{
	width:90%;
	display: flex;
	justify-content: center;
  align-items: center;

}
.maincontainer .container .btn button {
  width: 50%;
  margin: 1rem 0;
  height: 4rem;
  cursor: pointer;
  font-size: 1.6rem;
  font-weight: 500;
  color: #fff;
  background: #021fff;
  border-radius: 1rem;
  border: none;
   
 margin: 0 1rem;
}
.maincontainer .container .btn .login{
	background: #ff0291;
}
.maincontainer .container:hover .text::after {
  animation: animate 2s infinite;
}

@keyframes animate {
  0% {
    width: 0;
  }
  50% {
    width: 100%;
  }
  100% {
    width: 0%;
  }
}     
</style>
</head>
<body>
<div class="maincontainer">
<form action="Forgotpswd" method="post" class="container">
<div class="text">
                <label for="">Enter Email</label>
            </div>
            <input type="email" name="email" required="required" placeholder="Enter Register email id">
			<div class="btn">
			<button type="submit">Get New Password</button>
			<button type="submit" class="login">Back to Login</button>
			</div>
</form>
</div>
</body>
</html>