
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
<li><a class="active" href="homePage.jsp">Home</a></li>
<li><a href="login.jsp">Login</a></li>
</ul>
</nav>
<section>
<div class="status">
  <%
  String msg = request.getParameter("msg");
  if("invalid".equals(msg))
  {
   %> 
   <h1>Password Must match! Try Again</h1>
  <%}%>
</div>
<div class="con">
<div class="adminf">
<form action="createAccountAction.jsp">
<div class="left-div">
<h2>First Name</h2>
<input class="in" type="text" name="firstName" placeholder="Enter First Name" required>
<br>
</div>
<div class="left-div">
<h2>Last Name</h2>
<input class="in" type="text" name="lastName" placeholder="Enter Last Name" required>
<br>
</div>
<div class="left-div">
<h2>Email</h2>
<input class="in" type="email" name="email" placeholder="Enter Email" required>
<br>
</div>
<div class="left-div">
<h2>Phone Number</h2>
<input class="in" type="number" name="phoneNumber" placeholder="Enter Phone Number" required>
<br>
</div>
<div class="left-div">
<h2>Security Question</h2>
 <select class="in" name="securityQuestion" required>
  <option value="What is your nick name">What is your nick name</option>
  <option value="What is the capital of your country">What is the capital of your country</option>
  <option value="What is your first school name">What is your first school name</option>
  <option value="What is the name of your birth place">What is the name of your birth place</option>
 </select>
<br>
</div>
<div class="left-div">
<h2>Answer</h2>
<input class="in" type="text" name="answer" placeholder="Enter Answer" required>
<br>
</div>
<div class="left-div">
<h2>Password</h2>
<input class="in" type="password" name="password" placeholder="Enter Password" required>
<br>
</div>
<div class="left-div">
<h2>Confirm Password</h2>
<input class="in" type="password" name="cpassword" placeholder="Enter Password Again" required>
<br>
</div>
<br>
<button class="bt" type="submit">Create</button>
</form>
</div>
</div>
</section>
</body>
</html>