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

try
{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("update flight set flightNo='"+flightNo+"',flightName='"+flightName+"',fromCity='"+fromCity+"',toCity='"+toCity+"',travelDuration='"+duration+"',airPortName='"+aportName+"',ticketPrice='"+price+"',description='"+desc+"',depDate='"+depdat+"',depTime='"+deptim+"' where flightNo='"+flightNo+"'");
	response.sendRedirect("flightReport.jsp?msg=added");
}catch(Exception e)
{
	response.sendRedirect("flightReport.jsp?msg=notexist");
	System.out.println(e);
}
%>