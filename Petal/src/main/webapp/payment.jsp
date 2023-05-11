<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Petal: Payment</title>
<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 20px;
    background-color: #f5f5f5;
  }
  
  h1 {
    text-align: center;
  }
  
  .payment-form {
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    max-width: 300px;
    margin: 0 auto;
  }
  
  label {
    display: block;
    margin-bottom: 10px;
  }
  
  input[type="text"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-bottom: 20px;
  }
  
  button {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    width: 100%;
  }
  
  button:hover {
    background-color: #45a049;
  }
</style>
</head>
<body>
<h1>Payment Page</h1>
  <div class="payment-form">
    <h2>Select Payment Method</h2>
    <input type="radio" id="cardMethod" name="paymentMethod" checked>
    <label for="cardMethod">Credit/Debit Card</label>

    <input type="radio" id="codMethod" name="paymentMethod">
    <label for="codMethod">Cash on Delivery</label>

    <div id="cardDetails">
      <label for="cardNumber">Card Number:</label>
      <input type="text" id="cardNumber" placeholder="Enter your card number">

      <label for="expiryDate">Expiry Date:</label>
      <input type="text" id="expiryDate" placeholder="MM/YY">

      <label for="cvv">CVV:</label>
      <input type="text" id="cvv" placeholder="Enter CVV">
    </div>

    <button id="payButton">Pay Now</button>
  </div>



  <script>

var cardDetails = document.getElementById('cardDetails');
var codMethod = document.getElementById('codMethod');

document.getElementById('cardMethod').addEventListener('change', function() {
  if (this.checked) {
    cardDetails.style.display = 'block';
  } else {
    cardDetails.style.display = 'none';
  }
});

cardDetails.style.display = 'none';
codMethod.checked = true;
cardDetails.style.display = 'none';


var cardDetails = document.getElementById('cardDetails');
var codMethod = document.getElementById('codMethod');
var cardMethod = document.getElementById('cardMethod');

document.getElementById('cardMethod').addEventListener('change', function() {
  if (this.checked) {
    cardDetails.style.display = 'block';
  } else {
    cardDetails.style.display = 'none';
  }
});

document.getElementById('codMethod').addEventListener('change', function() {
  if (this.checked) {
    cardDetails.style.display = 'none';
  }
});
cardDetails.style.display = 'none';
codMethod.checked = true;
cardDetails.style.display = 'none';
  </script>
</body>
</html>