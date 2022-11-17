<%@ page import="java.sql.*,java.util.*" %>

<%
	String Patient_ID=request.getParameter("pid");
	int id=Integer.parseInt(Patient_ID);   

    String Patient_NAME=request.getParameter("pname");
    String Patient_Email=request.getParameter("pmail");
    String Patient_MOBILE=request.getParameter("pmobile");
    String Appointment_date=request.getParameter("date");


    try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "kamal1312");
		Statement st=conn.createStatement();

		st.executeUpdate("update patient set Patient_ID="+id+",Patient_NAME='"+Patient_NAME+"',Patient_MOBILE='"+Patient_MOBILE+"',Patient_Email='"+Patient_Email+"',Appointment_date='"+Appointment_date+"' where Patient_ID="+id);

		response.sendRedirect("../index.jsp");

    }
    catch(Exception e)
    {
    	out.print(e);
    }


%>