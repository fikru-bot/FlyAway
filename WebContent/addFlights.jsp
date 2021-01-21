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
	   String flightNo = request.getParameter("flightNo");
       try
       {
    	   Connection con = ConnectionProvider.getCon();
    	   Statement st = con.createStatement();
    	   ResultSet rs = st.executeQuery("select *from fuser inner join flight on flight.flightNo='"+flightNo+"' and fuser.email='"+email+"'");
    	   while(rs.next())
    	   {
       
       %>
          <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(9) %></td>
            <td><%=rs.getString(10) %></td>
            <td><%=rs.getString(11) %></td>
            <td><%=rs.getString(12) %></td>
            <td><%=rs.getString(13) %></td>
            <td><%=rs.getString(14) %></td>
            <td><%=rs.getString(15) %></td>
            <td><%=rs.getString(16) %></td>
            <td><%=rs.getString(17) %></td>
            <td><%=rs.getString(18) %></td>    
          </tr>
          <%
          Statement sta = con.createStatement();
          ResultSet rs1 = sta.executeQuery("select *from fuser inner join flight on flight.flightNo='"+flightNo+"' and fuser.email='"+email+"'");
          while(rs1.next())
          {
          %>
      </tbody>
      </table>
      </div>
      </div>
		 <form action="addFlightAction.jsp" method="post">
         <input type="hidden" name="firstName" value="<%=rs1.getString(1)%>">
         <input type="hidden" name="lastName" value="<%=rs1.getString(2)%>">
         <input type="hidden" name="email" value="<%=rs1.getString(3)%>">
         <input type="hidden" name="flightNo" value="<%=rs1.getString(9)%>">
         <input type="hidden" name="flightName" value="<%=rs1.getString(10)%>">
         <input type="hidden" name="fromCity" value="<%=rs1.getString(11)%>">
         <input type="hidden" name="toCity" value="<%=rs1.getString(12)%>">
         <input type="hidden" name="travelDuration" value="<%=rs1.getString(13)%>">
         <input type="hidden" name="aportName" value="<%=rs1.getString(14)%>">
         <input type="hidden" name="ticketPrice" value="<%=rs1.getString(15)%>">
         <input type="hidden" name="description" value="<%=rs1.getString(16)%>">
         <input type="hidden" name="depdat" value="<%=rs1.getString(17)%>">
         <input type="hidden" name="deptim" value="<%=rs1.getString(18)%>">
         <br>
         <h2>Complete The Payment Form</h2>
         <br>
         <input class="inl" type="text" name="fimel" placeholder="Card Holder Name" required>
         <input class="inl" type="number" name="fime" placeholder="Card Number" required>
         <input class="inl" type="number" name="fim" placeholder="Month" required>
         <input class="inl" type="number" name="fi" placeholder="Year" required>
         <input class="inl" type="password" name="fe" placeholder="CVV No" required>
         <br>
         <button class="bt" type="submit">Procced To Booking</button>
         </form>
         <%break;} %>     
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