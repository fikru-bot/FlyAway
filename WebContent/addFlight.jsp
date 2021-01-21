
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
<li><a class="active" href="addFlight.jsp">Add Flight</a></li>
<li><a href="flightReport.jsp">Flight Report</a></li>
<li><a href="bookedFlights.jsp">Booked Flights</a></li>
<li><a href="logout.jsp">Logout</a></li>
</ul>
</nav>
<section>
<div class="status">
<%
String msg = request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">New Flight Added!</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 class="alert">Something went wrong! Try Again!</h3>
<%} %>
</div>
<div class="con">
<div class="adminf">
<form action="adminHomeAction.jsp">
<div class="left-div">
<h2>Flight No</h2>
<input class="in" type="text" name="flightNo" placeholder="Enter Flight No" required>
<br>
</div>
<div class="left-div">
<h2>Flight Name</h2>
<input class="in" type="text" name="flightName" placeholder="Enter Flight Name" required>
<br>
</div>
<div class="left-div">
<h2>From City</h2>
<input class="in" type="text" name="fromCity" placeholder="Enter Departure" required>
<br>
</div>
<div class="left-div">
<h2>To City</h2>
<input class="in" type="text" name="toCity" placeholder="Enter Destination" required>
<br>
</div>
<div class="left-div">
<h2>Travel Duration</h2>
<input class="in" type="text" name="duration" placeholder="Enter Travel Duration" required>
<br>
</div>
<div class="left-div">
<h2>Airport Name</h2>
<input class="in" type="text" name="aportName" placeholder="Enter Airport Name" required>
<br>
</div>
<div class="left-div">
<h2>Ticket Price</h2>
<input class="in" type="text" name="price" placeholder="Enter Ticket Proce" required>
<br>
</div>
<div class="left-div">
<h2>Description</h2>
<input class="in" type="text" name="desc" placeholder="Enter Description" required>
<br>
</div>
<div class="left-div">
<h2>Date</h2>
<input class="in" type="text" name="depdat" placeholder="Enter Date" required>
<br>
</div>
<div class="left-div">
<h2>Time</h2>
<input class="in" type="text" name="deptim" placeholder="Enter Time" required>
<br>
</div>
<br>
<button class="bt" type="submit">Save</button>
</form>
</div>
</div>
</section>
</body>
</html>