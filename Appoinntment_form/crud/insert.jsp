<%@page import="java.sql.*,java.util.*"%>

<%
	
	String Patient_ID = request.getParameter("pid");
	String Patient_NAME=request.getParameter("pname");
    String Patient_MOBILE=request.getParameter("pmobile");
    String Patient_Email=request.getParameter("pmail");
    String Appointment_date=request.getParameter("date");



	try
	{
		Class.forName("com.mysql.jdbc.Driver");

		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","kamal1312");
		Statement st = con.createStatement();

		st.executeUpdate("insert into patient values('"+Patient_ID+"','"+Patient_NAME+"','"+Patient_MOBILE+"','"+Patient_Email+"','"+Appointment_date+"')");

        response.sendRedirect("../index.jsp");  	

		con.close();
	}
	catch(Exception e)
	{
		out.print(e);
	}

%>

