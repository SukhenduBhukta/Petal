<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Petal: Enter OTP</title>
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


.maincontainer {
  min-height: 100vh;
  width: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
  background: #727272;
}
.maincontainer .container {
  min-height: 20rem;
  width: 30rem;
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
  margin: 2rem 0;
}
.maincontainer .container button {
  width: 80%;
  height: 4rem;
  cursor: pointer;
  font-size: 1.6rem;
  font-weight: 500;
  color: #fff;
  background: #021fff;
  border-radius: 1rem;
  border: none;
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
<form action="validotp" method="post" class="container">
<%
		  			if(request.getAttribute("message")!=null)
		  			{
		  				out.print("<h3>"+request.getAttribute("message")+"</h3>");
		  			}
		  
		  %>
<div class="text">
                <label for="">Enter OTP</label>
            </div>
            <input type="number" name="otp" required="required" placeholder="Enter opt">
			<button type="submit">Reset Password</button>

</form>
</div>
</body>
</html>