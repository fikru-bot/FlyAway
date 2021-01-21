<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String flightNo = request.getParameter("flightNo");
String flightName = request.getParameter("flightName");
String fromCity = request.getParameter("fromCity");
String toCity = request.getParameter("toCity");
String duration = request.getParameter("duration");
String aportName = request.getParameter("aportName");
String price = request.getParameter("price");
String desc = request.getParameter("desc");
String depdat = request.getParameter("depdat");
String deptim = request.getParameter("deptim");

try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into flight values(?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1, flightNo);
	ps.setString(2, flightName);
	ps.setString(3, fromCity);
	ps.setString(4, toCity);
	ps.setString(5, duration);
	ps.setString(6, aportName);
	ps.setString(7, price);
	ps.setString(8, desc);
	ps.setString(9, depdat);
	ps.setString(10, deptim);
	ps.executeUpdate();
	response.sendRedirect("addFlight.jsp?msg=done");
}catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("addFlight.jsp?msg=invalid");
}
%>