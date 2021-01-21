<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String firstName = request.getParameter("firstName");
String lastName = request.getParameter("lastName");
String email = request.getParameter("email");
String phoneNumber = request.getParameter("phoneNumber");
String securityQuestion = request.getParameter("securityQuestion");
String answer = request.getParameter("answer");
String password = request.getParameter("password");
String cpassword = request.getParameter("password");
try
{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into fuser values(?,?,?,?,?,?,?,?)");
	ps.setString(1, firstName);
	ps.setString(2, lastName);
	ps.setString(3, email);
	ps.setString(4, phoneNumber);
	ps.setString(5, securityQuestion);
	ps.setString(6, answer);
	ps.setString(7, password);
	ps.setString(8, cpassword);
	ps.executeUpdate();
	response.sendRedirect("uflightDestinations.jsp");
	
	}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("signup.jsp?msg=invalid");
	
	}
%>