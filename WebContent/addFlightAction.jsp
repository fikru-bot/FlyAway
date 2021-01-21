<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String firstName = request.getParameter("firstName");
String lastName = request.getParameter("lastName");
String email = request.getParameter("email");
String flightNo = request.getParameter("flightNo").toString();
String flightName = request.getParameter("flightName");
String fromCity = request.getParameter("fromCity");
String toCity = request.getParameter("toCity");
String travelDuration = request.getParameter("travelDuration").toString();
String aportName = request.getParameter("aportName");
String ticketPrice = request.getParameter("ticketPrice").toString();
String description = request.getParameter("description");
String depdat = request.getParameter("depdat");
String deptim = request.getParameter("deptim");
try
{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into bookedFlights values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1, firstName);
	ps.setString(2, lastName);
	ps.setString(3, email);
	ps.setString(4, flightNo);
	ps.setString(5, flightName);
	ps.setString(6, fromCity);
	ps.setString(7, toCity);
	ps.setString(8, travelDuration);
	ps.setString(9, aportName);
	ps.setString(10, ticketPrice);
	ps.setString(11, description);
	ps.setString(12, depdat);
	ps.setString(13, deptim);
	ps.executeUpdate();
	response.sendRedirect("bill.jsp");
	}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("bill.jsp");
	
	}
%>