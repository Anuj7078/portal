<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Info</title>
<style>
.contact{
margin-top:90px;
}
.contact h1{
text-align: center;
font-size: 40px;
}
.box{
display: flex;
height:300px;
}
.box1{
margin: 7px 7px;
width:40%
}
.box2{
width: 50%;
height: 400px;
}
#heading{
text-align: center;}
.title{
font-size: 25px}
.contact-details{
font-size: 21px}
.form{
text-align: center;
margin-top: 7px;
}
.input{
width: 350px;
text-align: center;
padding: 10px;
border-radius: 10px; 
margin:4px;
font-size: 18px;
}
.btn{
width:350px;
font-size:18px;
margin:3px;
background-color:orange;
}
.btn:hover{
background-color:rgb(241, 208, 145);}
</style>
</head>
<body>
<div class="nav">
<%@include file="include/navbar.jsp" %>
</div>
<div class="contact">
<h1><i><u>Contact Us</u></i></h1>
</div>
<div class="box">
<div class="box1">
<div class="col-md-6">
	<p class="title"><u>Contact Details</u></p>
	<ul class="contact-details">
	<li class="company">
	<div><b>B.K.AIR SYSTEMS</b>
		</div>
	<p>Plot no. 19-20,  Ganeshra Road,  Behind Nidhivan Heights, Mathura, Uttar Pradesh, India - 281004</p>
	</li>
	<li class="person">R.K.Chaudhary (Proprietor)</li>
					<li class="website"><a href="javascript:void(0)" onclick="window.open('http://www.airwashermanufacturer.in', '_blank')">View Website</a></li> 
	</ul>
	</div>
</div>
<div class="box2">
<div id="heading"><b><h5>Send Enquiry to BK Air System</h5></b></div>
<form action="user-data" method="post" class="form">
<input type="text" class="input" name="product-name" placeholder="Enter your Product/Service name"><br />
<input type="number" class="input" name="quantity" placeholder="Enter Quantity"><br />
<input type="email" class="input" name="email" placeholder="Enter your Email"><br />
<input type="text" class="input" name="name" placeholder="Enter your Name"><br />
<input type="number" class="input" name="number" placeholder="Enter your mobile number"><br />
<button type="submit" class="btn">Submit Enquiry</button>
</form>
</div>
</div>
</body>
</html>