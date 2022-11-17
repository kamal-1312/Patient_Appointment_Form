<!DOCTYPE html>
<html>
<head>
	<title>ADD Form</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

	<link rel="stylesheet" href="style.css">

</head>
<body>
	<center>
	

	<form action="insert.jsp"> 
		
	<table class = "content-table">
		
			
		<tr>	
		<thead><th>Patient_ID : </th> </thead>	
		<tbody>
				<td>
					<input type="text" name="pid"  required>
				</td>
			</tr>
		</tbody>

			<tr>
				<thead><th>Name : </th></thead>	
		<tbody>		
				<td>
					<input type="text" name="pname" >
				</td>
			</tr>
		</tbody>

			<tr>
				<thead><th>Mobile</th></thead>	
			<tbody>	
				<td>
					<input type="text" name="pmobile">
				</td>
			</tr>
		  </tbody>

			<tr>
			<thead><th>Email </th></thead>	
		<tbody>
				<td>
					<input type="text" name="pmail">
				</td>
			</tr>
		</tbody>	
			<tr>
			<thead><th>Appointment Date </th></thead>	
		<tbody>	
			<td>
					<input type="text" name="date">
				</td>
			</tr>
		</tbody>	
			<tr align="center">
				<td colspan="2">
					<input type="submit" value="Submit Record" class="btn btn-outline-success">
				</td>				
			</tr>

		</table>

	</form>
</center>
</body>
</html>