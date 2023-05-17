<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Peta: Rating</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style type="text/css">
    @charset "UTF-8";
* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}

html, body {
  background: #000;
  display: grid;
  height: 100%;
  place-items: center;
  text-align: center;
}

.container {
  position: relative;
  width: 400px;
  background: #111;
  padding: 20px 30px;
  border: 1px solid #444;
  border-radius: 5px;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
}
.container .star-widget input {
  display: none;
}
.container .star-widget label {
  font-size: 40px;
  color: #444;
  padding: 10px;
  float: right;
  transition: all 0.2s ease;
}
.container .star-widget header {
  width: 100%;
  font-size: 25px;
  color: #fe7;
  font-weight: 500;
  margin: 5px 0 20px 0;
  text-align: center;
  transition: all 0.2s ease;
}
.container .star-widget .textarea {
  height: 100px;
  width: 100%;
  overflow: hidden;
}
.container .star-widget .textarea textarea {
  height: 100%;
  width: 100%;
  outline: none;
  border: 1px solid #333;
  background: #222;
  padding: 10px;
  font-size: 17px;
  color: #eee;
  resize: none;
}
.container .star-widget .btn {
  height: 45px;
  width: 100%;
  margin: 15px 0;
}
.container .star-widget .btn button {
  height: 100%;
  width: 100%;
  border: 1px solid #444;
  outline: none;
  background: #222;
  color: #999;
  font-size: 17px;
  font-weight: 500;
  text-transform: uppercase;
  cursor: pointer;
  transition: all 0.3s ease;
}
.container .star-widget .btn button:hover {
  background: #1b1b1b;
}
.container input:checked ~ label {
  color: #fd4;
}
.container input#rate-5:checked ~ label {
  color: #fe7;
  text-shadow: 0 0 20px #952;
}
.container #rate-1:checked ~ form header:before {
  content: "I just hate it 😠";
}
.container #rate-2:checked ~ form header:before {
  content: "I don't like it 😒";
}
.container #rate-3:checked ~ form header:before {
  content: "I like it 😄";
}
.container #rate-4:checked ~ form header:before {
  content: "It is awesome 😎";
}
.container #rate-5:checked ~ form header:before {
  content: "I just love it 😍";
}
.container .post {
  display: none;
}
.container .post .text {
  font-size: 25px;
  color: #666;
  font-weight: 500;
}
.container .post .edit {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  top: 10px;
  height: 35px;
  background: #222;
  font-size: 16px;
  color: #9d9d9d;
  font-weight: 500;
  border: 1px solid #444;
}
.container .post .edit:hover {
  cursor: pointer;
  background: #1b1b1b;
}

input:not(:checked) ~ label:hover,
input:not(:checked) ~ label:hover ~ label {
  color: #fd4;
}

.container form {
  display: block;
}

input:checked ~ form {
  display: block;
}
    </style>
</head>
<body>

    <div class="container">
    <c:if test="${empty userobj }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>
<%
User u=(User)session.getAttribute("userobj");
int did=Integer.parseInt(request.getParameter("did"));
%>
        <div class="post">
            <div class="text">
                Thanks for rating us!
            </div>
            <div class="edit">
                EDIT
            </div>
        </div>

        
        <form class="star-widget" action="rating" method="post">
            <input type="radio" name="rate" id="rate-5" value="5">
            <label for="rate-5" class="fas fa-star"></label>

            <input type="radio" name="rate" id="rate-4" value="4">
            <label for="rate-4" class="fas fa-star"></label>

            <input type="radio" name="rate" id="rate-3" value="3">
            <label for="rate-3" class="fas fa-star"></label>

            <input type="radio" name="rate" id="rate-2" value="2">
            <label for="rate-2" class="fas fa-star"></label>

            <input type="radio" name="rate" id="rate-1" value="1">
            <label for="rate-1" class="fas fa-star"></label>
			
            <div>
                <header></header>
                <div class="textarea">
                <input type="text" name="id" value="<%=u.getUserid() %>">
                <input type="text" name="did" value="<%=did %>">
                    <textarea cols="30" placeholder="Describe Your Experince..." name="des"></textarea>
                </div>
                <div class="btn">
                    <button type="submit">Post</button>
                </div>
                </div>
            </form>
        

    </div>

    
    
</body>
</html>