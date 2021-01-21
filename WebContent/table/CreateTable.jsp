<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
try
{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	String sql1 = "create table flight(flightNo number(20),flightName varchar(200),fromCity varchar(200),toCity varchar(200),travelDuration varchar(20),airportName varchar(200),ticketPrice varchar(20),description varchar(200),date varchar(20),time varchar(20))";
	String sql2 = "create table fuser(firstName varchar(200),lastName varchar(200),email varchar(100),phoneNumber number(20),securityQuestion varchar(100),answer varchar(100),password varchar(100),confirmPassword varchar(100))";
	String sql3 = "create table bookedFlights(firstName varchar(200),lastName varchar(200),email varchar(100),flightNo varchar(20),flightName varchar(200),fromCity varchar(200),toCity varchar(200),travelDuration varchar(20),airportName varchar(200),ticketPrice varchar(20),description varchar(200),date varchar(20),time varchar(20))";

	st.executeUpdate(sql1);
	st.executeUpdate(sql2);
	st.executeUpdate(sql3);
	System.out.println("Table Created");
	con.close();
}catch(Exception e)
{
	System.out.println(e);
}
%>