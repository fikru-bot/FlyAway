<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String firstName = request.getParameter("firstName");
String lastName = request.getParameter("lastName");
String email = request.getParameter("email");
String phoneNumber = request.getParameter("phoneNumber");
String securityQuestion = request.getParameter("securityQuestion");
String answer = request.getParameter("answer");
String newPassword = request.getParameter("newPassword");
String cNewPassword = request.getParameter("newPassword");

int check = 0;
try
{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select *from fuser where email='"+email+"' and firstName='"+firstName+"' and securityQuestion='"+securityQuestion+"' and answer='"+answer+"'");
	while(rs.next())
	{
		check=1;
		Statement st1 = con.createStatement();
		st1.executeUpdate("update fuser set password='"+newPassword+"' where email='"+email+"'");
		Statement st2 = con.createStatement();
		st2.executeUpdate("update fuser set confirmPassword='"+newPassword+"' where email='"+email+"'");
		response.sendRedirect("forgotPassword.jsp?msg=done");
	}
	if(check==0)
	{
		response.sendRedirect("forgotPassword.jsp?msg=invalid");	
	}
	}
catch(Exception e)
{
	System.out.println(e);
	}

%>