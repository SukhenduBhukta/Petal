<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="maincontainer">
<form action="newpassword" method="post" class="contain">

<div class="inputbox">
				<i class="fa-solid fa-user-tag"></i>
				<div class="labinput">
					<div class="text">
						<label for="">Enter Password</label>
					</div>
					<input type="text" name="password" required="required" />
				</div>

			</div>
			<div class="inputbox">
				<i class="fa-solid fa-user-tag"></i>
				<div class="labinput">
					<div class="text">
						<label for="">Re-enter Password</label>
					</div>
					<input type="password" name="repassword" required="required" />
				</div>

			</div>
			<button type="submit" value="reset">Reset Password</button>

</form>
</div>
</body>
</html>