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
</nav>
<section>
<div class="contain">
<div class="tab">
<table>
        <thead>
          <tr>
            <th scope="col">First Name</th>
            <th scope="col">Last Name</th>
            <th scope="col">Email</th>
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
          </tr>
        </thead>
        <tbody> 
       <%
       String email = session.getAttribute("email").toString();
       try
       {
    	   Connection con = ConnectionProvider.getCon();
    	   Statement st = con.createStatement();
    	   ResultSet rs = st.executeQuery("select *from bookedFlights where email='"+email+"'");
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
            <td><%=rs.getString(11) %></td>  
            <td><%=rs.getString(12) %></td> 
            <td><%=rs.getString(13) %></td> 
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
<h2>Ticket Successfully Booked</h2>
<div class="sis">
<a class="btn" href="homePage.jsp">Back To Home Page</a>
</div>
</section>
</body>
</html>