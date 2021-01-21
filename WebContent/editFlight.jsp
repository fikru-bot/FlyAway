<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
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
<li><a href="addFlight.jsp">Add Flight</a></li>
<li><a class="active" href="flightReport.jsp">Edit Flight</a></li>
<li><a href="bookedFlights.jsp">Booked Flights</a></li>
<li><a href="logout.jsp">Logout</a></li>
</ul>
</nav>
<section>
<div class="status">
<%
String msg = request.getParameter("msg");
if("edited".equals(msg))
{
%>
<h3 class="alert">Flight Successfully Edited!</h3>
<%} %>
<%
if("notexist".equals(msg))
{
%>
<h3 class="alert">Something went wrong! Try Again!</h3>
<%} %>
<%
String flightNo = request.getParameter("flightNo");
try
{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select *from flight where flightNo='"+flightNo+"'");
	while(rs.next())
	{

%>
</div>
<div class="con">
<div class="adminf">
<form action="editFlightAction.jsp">
<div class="left-div">
<h2>Flight No</h2>
<input class="in" type="text" name="flightNo" value="<%=rs.getString(1)%>" required>
<br>
</div>
<div class="left-div">
<h2>Flight Name</h2>
<input class="in" type="text" name="flightName" value="<%=rs.getString(2) %>" required>
<br>
</div>
<div class="left-div">
<h2>From City</h2>
<input class="in" type="text" name="fromCity" value="<%=rs.getString(3)%>" required>
<br>
</div>
<div class="left-div">
<h2>To City</h2>
<input class="in" type="text" name="toCity" value="<%=rs.getString(4)%>" required>
<br>
</div>
<div class="left-div">
<h2>Travel Duration</h2>
<input class="in" type="text" name="duration" value="<%=rs.getString(5)%>" required>
<br>
</div>
<div class="left-div">
<h2>Airport Name</h2>
<input class="in" type="text" name="aportName" value="<%=rs.getString(6)%>" required>
<br>
</div>
<div class="left-div">
<h2>Ticket Price</h2>
<input class="in" type="text" name="price" value="<%=rs.getString(7)%>" required>
<br>
</div>
<div class="left-div">
<h2>Description</h2>
<input class="in" type="text" name="desc" value="<%=rs.getString(8)%>" required>
<br>
</div>
<div class="left-div">
<h2>Date</h2>
<input class="in" type="text" name="depdat" value="<%=rs.getString(9)%>" required>
<br>
</div>
<div class="left-div">
<h2>Time</h2>
<input class="in" type="text" name="deptim" value="<%=rs.getString(10)%>" required>
<br>
</div>
<br>
<button class="bt" type="submit">Save</button>
</form>

</div>
</div>
<%
	}	
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
%>
</section>

</body>
</html>