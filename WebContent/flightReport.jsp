<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style-home.css">
<link rel="stylesheet" href="css/style-report.css">
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
<li><a class="active" href="flightReport.jsp">Flight Report</a></li>
<li><a href="bookedFlights.jsp">Booked Flights</a></li>
<li><a href="logout.jsp">Logout</a></li>
</ul>
</nav>
<section>
<div class="contain">
<div class="tab">
<table>
        <thead>
          <tr>
            <th scope="col">Flight No</th>
            <th scope="col">Flight Name</th>
            <th scope="col">From City</th>
            <th scope="col">To City</th>
            <th scope="col">Travel Duration</th>
            <th scope="col">Airport Name</th>
            <th scope="col">Ticket Price</th>
            <th scope="col">Description</th>
            <th scope="col">Date</th>
            <th scope="col">Time</th>
            <th scope="col">Edit <i class='fas fa-pen-fancy'></i></th>
          </tr>
        </thead>
        <tbody> 
       <%
       try
       {
    	   Connection con = ConnectionProvider.getCon();
    	   Statement st = con.createStatement();
    	   ResultSet rs = st.executeQuery("select *from flight");
    	   while(rs.next())
    	   {
       
       %>
          <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %></td>
            <td><%=rs.getString(5) %></td>
            <td><%=rs.getString(6) %></td>
            <td><%=rs.getString(7) %></td>
            <td><%=rs.getString(8) %></td>
            <td><%=rs.getString(9) %></td>
            <td><%=rs.getString(10) %></td>
            <td><a href="editFlight.jsp?flightNo=<%=rs.getString(1) %>">Edit <i class='fas fa-pen-fancy'></i></a></td>
          </tr>
         <%
    	   }
       }
       catch(Exception e)
       {
    	   System.out.println(e);
       }
         %>
        </tbody>
      </table>
      </div>
      </div>
</section>
</body>
</html>