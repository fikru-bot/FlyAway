
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style-home.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>
<body>
<nav>
<input type="checkbox" id="check">
<label for="check" class="checkbtn">
<i class="fas fa-bars"></i>
</label>
<label class="logo">FlyAway Booking</label>
<ul>
<li><a href="homePage.jsp">Home</a></li>
<li><a class="active" href="login.jsp">Login</a></li>
<li><a href="flightDestinations.jsp">Flight Destinations</a></li>
<li><a href="bookFlight.jsp">Book Flight</a></li>
</ul>
</nav>
<section>
<div class="container">
<div class="log">
<h3>Enter username and password</h3>
<form action="loginAction.jsp" method="post">
<input class="inpus" type="email" name="email" placeholder="Enter Email" required>
<br>
<input class="inpus" type="password" name="password" placeholder="Enter Password" required>
<br>
<button class="btn" type="submit">Save</button>
</form>
<h2><a class="fin" href="signup.jsp">Create Account</a></h2>
<h2><a class="fin" href="forgotPassword.jsp">Forgot Password?</a></h2>
</div>
</div>
<div class="con">
  <%
  String msg = request.getParameter("msg");
  if("notexist".equals(msg))
  {
	  %>
	  <h2>Incorrect Username or Password</h2>
 <% }%> 
 <%
 if("invalid".equals(msg))
 {
	 %>
	 <h2>Some thing Went Wrong! Try Again !</h2>
 <% }%>
 </div>
</section>
</body>
</html>