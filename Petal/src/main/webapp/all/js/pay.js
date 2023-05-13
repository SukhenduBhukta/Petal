const payment = () => {
	console.log("pay");
	let amount = $("#payment_value").val();
	let uid = $("#uid").val();
	let apid = $("#apid").val();
	console.log(amount);
	if (amount == "" || amount == null) {
		Swal.fire(
			'Please enter amount.',
			'Not possible.',
			'question'
		)
		// alert("not possible");
		return;
	}
	$.ajax(
		{
			url: '/Petal/payment',
			data: JSON.stringify({ amount: amount, uid: uid, apid: apid }),
			contentType: 'application/json',
			type: 'POST',
			dataType: 'json',
			success: function (response) {
				//var razorpayOrder = $.parseJSON(response);
				console.log(response);
				console.log(response.modelJson.map.id);
				//console.log(razorpayOrder);
				if (response.status = "created") {
					let options = {
						"key": "rzp_test_YtOxkCnyNridLG", // Enter the Key ID generated from the Dashboard
						"amount": response.modelJson.map.amount, // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise
						"currency": "INR",
						"name": "Petal",
						"description": "Test Transaction",
						"image": "https://drive.google.com/file/d/1a-zOK39ASmkNaUQhSJDq_Ij3pTRFfl6-/view?usp=share_link",
						"order_id": response.modelJson.map.id, //This is a sample Order ID. Pass the  `id` obtained in the response of Step 1
						"handler": function (response) {
							// Swal.fire(
							// 	'Payment Successfull',
							// 	'Your order generated',
							// 	'success'
							// )
							updatePaymentDetails(response.razorpay_payment_id, response.razorpay_order_id, response.razorpay_signature, "paid");
							alert("Payment Successfull!!");
							console.log(response);
							console.log(response.razorpay_payment_id);
							console.log(response.razorpay_order_id);
							console.log(response.razorpay_signature)
						},
						"prefill": {
							"name": "",
							"email": "",
							"contact": ""
						},
						"notes": {
							"address": "Petal pvt. Ltd."
						},
						"theme": {
							"color": "#3399cc"
						}
					};
					let rzp1 = new Razorpay(options);
					rzp1.on('payment.failed', function (response) {
						console.log(response.error.code);
						console.log(response.error.description);
						console.log(response.error.source);
						console.log(response.error.step);
						console.log(response.error.reason);
						console.log(response.error.metadata.order_id);
						console.log(response.error.metadata.payment_id);
						alert("Opps payment failed");
					});
					rzp1.open();
				}
			},
			error: function (error) {
				console.log(error);
				alert("Somthing went wrong.");
			}
		}
	)
};
const updatePaymentDetails = (payment, order_id, signature, statuss) => {
	$.ajax(
		{
			url: '/Petal/payUpdate',
			data: JSON.stringify({ payment_id: payment, id: order_id, signature: signature, status: statuss }),
			contentType: 'application/json',
			type: 'POST',
			dataType: 'json',
			success: function (response) {
				alert("Order done!");
			},
			error: function (error) {
				console.log(error);
				alert("Somthing went wrong.");
			}
		}
	)
};