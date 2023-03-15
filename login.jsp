<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Login</title>
<%@include file="/include/head.jsp"%>
     <style>
      body{
      background-image: linear-gradient(21deg,
      rgba(64, 83, 206, 0.3697003234675773) 68%,
      rgba(255, 206, 196, 0.5) 163%),
      linear-gradient(163deg,rgba(49, 146, 170, 0.07944489965716128) 86%,rgba(239, 112, 138, 0.5) 40%),
    linear-gradient(30deg, rgba(230, 194, 78, 0.617) 22%, rgba(235, 110, 214, 0.5) 169%),
    linear-gradient(48deg, rgba(41, 114, 32, 0.732) 64%, rgba(221, 238, 123, 0.5) 43%);
  background-blend-mode: overlay, multiply, color, normal;
          }
          .card-body{
               background-color: rgb(250, 224, 158);
          }
          .card-header_text-center{
               background-color: rgb(170, 170, 245);
               text-align: center;
               padding: 14px;
               height: 50px;
               font-size: 20px;
          }
          .text-center{
          display:flex;
          }
          .btn-primary{
               margin-left:40px;
               width: 80px;
               height: 40px;
               font-size: 20px;
               border-radius: 7px;
               background-color: blue;
               padding: 3px;
          }
          .btn-secondary{
               margin-left:240px;
               width: 90px;
               height: 40px;
               font-size: 20px;
               border-radius: 7px;
               background-color: blue;
               padding: 3px;
          }
     </style>
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
 	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header_text-center">User Login</div>
			<div class="card-body">
				<form action="user-login" method="post">
					<div class="form-group">
						<label>Email address</label> 
						<input type="email" name="email" class="form-control" placeholder="Enter email">
					</div>
					<div class="form-group">
						<label>Password</label> 
						<input type="password" name="password" class="form-control" placeholder="Password">
					</div>
					<div class="form-group">
						<label>Choose User</label> 
						<select name="options">
                    <option value="anuj">ANUJ</option>
                    <option value="kunal">KUNAL</option>
                    <option value="nitin">NITIN</option>
                    <option value="guest">GUEST</option>
                </select>
					</div>
					<div class="text-center">
						<button type="submit" class="btn-primary">Login</button>
						<button type="" class="btn-secondary"><a href="Register.jsp">Register</a></button>
					</div>
				</form>
			</div>
		</div>
		<hr />
		To login Anuj's = email(a@gmail.com) and password(yeh)<br />
		To login Kunal's = email(k@gmail.com) and password(mai)<br />
		To login Nitin's = email(n@gmail.com) and password(woh)<br />
		also select the users in dropdown menu
	</div>
<%@include file="/include/footer.jsp"%>
</body>
</html>