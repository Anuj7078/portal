<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>B.K Air System</title>
<%@include file="/include/head.jsp"%>
<style>
@charset "ISO-8859-1";
*{
    margin: 0;
    padding: 0;
    font-family: sans-serif;
}
.banner{
    width: 100%;
    height: 100vh;
    background-image: linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),url("images/air.jpg");
    background-size: cover;
    background-position: center ;
}

.content{
    width:100%;
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    text-align: center;
    color: #fff;
}
.content h1{
font-size: 70px;
margin-top: 80px;
}
.content p{
    margin: 20px auto;
    font-weight: 100;
    line-height: 25px;
}
span{
    background: #009688;
    height: 100%;
    width: 0%;
    border-radius: 25px;
    position: absolute;
    left: 0;
    bottom: 0;
    z-index: -1;
    transition: 0.5s;
}
.container2{
height: 420px;
width: 100%;
margin-top: 10px;
/* border: 2px solid red; */
}
.box1{
height: 400px;
width: 94%;
margin-left:43px;
border: 2px solid black;
background-image: url("https://bkair.co.in/images/slider1.jpg");
background-repeat: no-repeat;
background-size: 100% 100%;
cursor: all-scroll;
animation: changeImage 30s linear infinite;
}
 @keyframes changeImage {
            0%{
                background-image: url("https://bkair.co.in/images/slider1.jpg");
            }
            22%{
                background-image: url("https://bkair.co.in/images/slider6.jpg");
            }
            49%{
                background-image: url("https://bkair.co.in/images/slider3.jpg");
            }
            73%{
                background-image: url("https://bkair.co.in/images/slider4.jpg");
            }
            100%{
                background-image: url("https://bkair.co.in/images/slider5.jpg");
            }
        }
.container3 {
height: 420px;
width: 100%;
display: flex;
margin-top: 10px;
/* border: 2px solid blueviolet; */
}
.box3{
height: 400px;
width: 48%;
border: 2px solid black;
background-image: url("https://tse4.mm.bing.net/th?id=OIP.oTvWmzSHfUF913r_VHZg1gHaEq&pid=Api&P=0");
background-repeat: no-repeat;
background-size: 100% 100%;
text-align: center;
font-family: arial;
font-size:45px;
}
.box4{
height: 400px;
width: 48%;
border: 2px solid black;
margin-left: 60px;
background-image: url("https://images.pexels.com/photos/3184430/pexels-photo-3184430.jpeg?auto=compress&cs=tinysrgb&w=600");
background-repeat: no-repeat;
background-size: 100% 100%;
text-align: center;
font-family: arial;
font-size:45px;
}
@media (max-width: 1230px) {
    .banner h1{
      font-size: 70px;
    }
  }
  @media (max-width: 1100px) {
    .banner h1{
      font-size: 55;
    }
  }
  @media (max-width: 900px) {
    .banner h1{
      font-size: 40px;
    }
  }
  @media (max-width: 868px) {
    .banner h1{
      font-size: 20px;
    }
    .box1{
    width:320px;
    marin-left:4px;
    height:400px;
    }
    .box3{
    width:160px;
    height:200px;
    font-size:17px;
    }
    .box4{
    width:160px;
    height:200px;
    font-size:17px;
    }
}
</style>
</head>
<body>
<%@include file="include/navbar.jsp" %>

    <div class="banner">
        <div class="content">
            <h1>BEST VENTILATION SYSTEM </h1>
            <P>B.K.AIR SYSTEMS is a leading supplier of energy efficient air cooling,</P>
            <p>ventilation & duct collection solutions for residential and commercial buildings, </p>
            <p>industrial applications and infrastructures</p>
            </div>
        </div>
        <div class="container2">
            <div class="box1"></div>
        </div>
        <div class="container3">
            <div class="box3">
            <div class="section1">
            <a href="Products.jsp"> Our Products</a>
            </div>
            </div>
            <div class="box4">
            <div class="section2">
            <a href="Career.jsp">Career</a>
            </div>
            </div>
        </div><br />

</body>
</html>