<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ page import="com.edit.Edit" %>


	<%
    //int userId = 1000; // Set the user ID here
    int userId=Integer.parseInt(request.getParameter("id"));
    Edit user = new Edit();
    user.setId(userId);
    user.getdata();
	%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="css/bootstrap.css"></link>
<link rel="stylesheet" href="Edit.css"></link>

</head>
<body>
	<div>
	<form action="Edit_Details?id=<%= user.getId() %>" method="post">
    
	   <div>
		<h2 class="text-center mb-5">Edit Page</h2>
		<div>
			<input type="text" placeholder="Title" value="<%= user.getTitle() %>" name="title" class="line" width="100%">
		</div>	
		<%-- <div class="mt-3">
			<textarea placeholder="write a description" value="<%= user.getDescription() %>" name="desc" cols="100" rows="4" ></textarea>
		</div> --%>
	</div>

	<div>
		<div class="row ">
			<div class="col-4">
				<p>Attach file here</p>

				<input type="file" name="">
				<div>
				<input type="text" name="assign" placeholder="Assigned to" value="<%= user.getAsigned() %>" class="line1"><br>
				<input type="text" name="dept" placeholder="Choose department" value="<%= user.getDept() %>"  class="mt-2 line1">
				</div>
			</div>


			<div class="col-4">
				<input type="text" name="priority" placeholder="Priority" value="<%= user.getPriority() %>" class="line1"><br>

				<select class="drpdwn mt-3" name="task" value="<%= user.getTasktype() %>">
					<option>Task type</option>
					<option>Bug</option>
					<option>Additional</option>
					<option>Testing</option>
					<option>API</option>
					<option>Implementation</option>
					<option>Estimation</option>
				</select><br>

<%-- 				<input type="text" name="hour" placeholder="Hour spent" value="<%= user.getHour() %>" class="line1 mt-3"><br>
 --%>			</div>


			<div class="col-4">
				<input type="text" name="due" placeholder="Due date" value="<%= user.getDue() %>" class="line1"><br>
				
				<input type="text" name="cus" placeholder="Choose customer" value="<%= user.getCus() %>" class="line1 mt-3"><br>

				<select class="drpdwn mt-3" name="status" value="<%= user.getStatus() %>">
					<option selected disabled>choosestatus</option>
					<option>Open</option>
					<option>Close</option>
					<option>Rework</option>
					<option>Testing</option>
					<option>Retesting</option>
					<option>In-Progress & Hold</option>
				</select><br>
			</div>	
		</div>	


		<div class="row mt-3">
		<div class="col-6">
			<input type="submit" value="Update">
		</div>
		
	</div>
	</div>
	</form>
	</div>
</body>
</html>