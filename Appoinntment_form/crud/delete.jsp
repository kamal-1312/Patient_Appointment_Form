<%@page import="java.sql.*,java.util.*"%>
<%
	String id = request.getParameter("id");


	try
	{
		Class.forName("com.mysql.jdbc.Driver");

		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","kamal1312");
		Statement st = con.createStatement();

		st.executeUpdate("Delete from patient where Patient_ID ='"+id+"'");

        response.sendRedirect("../index.jsp");  	

		con.close();
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>