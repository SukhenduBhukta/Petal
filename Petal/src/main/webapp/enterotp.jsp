<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Petal: Enter OTP</title>
</head>
<body>
<div class="maincontainer">
<form action="validotp" method="post" class="contain">
<%
		  			if(request.getAttribute("message")!=null)
		  			{
		  				out.print("<h3>"+request.getAttribute("message")+"</h3>");
		  			}
		  
		  %>
<div class="inputbox">
				<i class="fa-solid fa-user-tag"></i>
				<div class="labinput">
					<div class="text">
						<label for="">Enter OTP</label>
					</div>
					<input type="number" name="otp" required="required" />
				</div>

			</div>
			<button type="submit">Reset Password</button>

</form>
</div>
</body>
</html>