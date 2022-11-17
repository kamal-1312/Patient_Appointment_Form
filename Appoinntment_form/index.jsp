<%@ page import="java.sql.*" %>

<html>
<head>
	<title>Hospital Appointment Form</title>
	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="style.css">
</head>
<body>

<div class="Appointment">

<a href="crud/add_form.jsp"><button type="button" class="btn btn-outline-success">New Appointment</button></a>

</div>

	<br>
	
	<table class = "content-table" >
		<thead>
		<tr>
			<th>Patient ID</th>
			<th>Name</th>
			<th>Mobile</th>
			<th>Email</th>
			<th>Appointment Date</th>
			<th>Delete</th>
			<th>Update</th>
		</tr>
	</thead>
	<tbody>


		<%
			try
			{
				Class.forName("com.mysql.jdbc.Driver");

				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","kamal1312");


				Statement st = con.createStatement();

				ResultSet rs = st.executeQuery("Select * from patient");

				while(rs.next())
				{
					out.print("<tr>");
						out.print("<td>"+rs.getString("Patient_ID")+"</td>");
						out.print("<td>"+rs.getString("Patient_NAME")+"</td>");
						out.print("<td>"+rs.getString("Patient_MOBILE")+"</td>");
						out.print("<td>"+rs.getString("Patient_Email")+"</td>");
						out.print("<td>"+rs.getString("Appointment_date")+"</td>");
					
						

		%>
					<td>
						<a href="crud/delete.jsp?id=<%=rs.getString("Patient_ID") %>">
							<button type="button" class="btn btn-outline-info">Delete</button>
							
						</a>
					</td>

					<td>
						<a href="crud/edit.jsp?id=<%=rs.getString("Patient_ID") %>">
							<button type="button" class="btn btn-outline-info">Update</button>
						</a>
					</td>

		<%


					out.print("</tr>");
				}
				con.close();

			}
			catch(Exception e)
			{
				out.print(e);
			}
			// finally
			// {
			// 	con.close();
			// }


		%>
	</tbody>
	</table>

</body>
</html>