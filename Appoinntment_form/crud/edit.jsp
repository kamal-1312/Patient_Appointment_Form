<%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html>
<head>
	<title>Update Appointment Form</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

	<link rel="stylesheet" href="style.css">
</head>
<body>

<%
	String id = request.getParameter("id");

	try
	{
		Class.forName("com.mysql.jdbc.Driver");

		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","kamal1312");

		Statement st = con.createStatement();

		ResultSet rs = st.executeQuery("Select * from patient where Patient_ID="+id);

		while(rs.next())
		{
			
%>

	<center>
		<thead><h3> Edit Patient Records</h3> </thead>
		

	<form action="update.jsp"> 
		
	<table class = "content-table">

			<tr>
				<thead><th>Patient_ID : </th> </thead>	

				<td>
					<input type="text" name="pid" placeholder="enter roll no" value="<%= rs.getString("Patient_ID") %>" >
				</td>
			</tr>
	
			<tr>
				<thead><th>Name : </th></thead>	

				<td>
					<input type="text" name="pname" value="<%= rs.getString("Patient_NAME") %>" >
				</td>
			</tr>
	
			<tr>
				<thead><th>Mobile</th></thead>	

				<td>
					<input type="number" name="pmobile" value="<%= rs.getString("Patient_MOBILE") %>">
				</td>
			</tr>
	
			<tr>
				<thead><th>Email </th></thead>	

				<td>
					<input type="text" name="pmail" value="<%= rs.getString("Patient_Email") %>">
				</td>
			</tr>
	
			<tr>
				<thead><th>Appointment Date </th></thead>	
				<td>
					<input type="text" name="date" value="<%= rs.getString("Appointment_date") %>">
				</td>
			</tr>
	
			<tr align="center">
				<td colspan="2">
					<input type="submit" value="Save Updations" class="btn btn-outline-success">
				</td>				
			</tr>
	

		</table>

	</form>

<%
		}
	}
	catch(Exception e)
	{
		out.print(e);
	}

	


%>
</center>
</body>
</html>

