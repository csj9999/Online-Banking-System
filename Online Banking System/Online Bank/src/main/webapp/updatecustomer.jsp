<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Details</title>
<link rel="stylesheet" href="updateCus.css">
</head>
<body>
	
    <header>
        <nav>
        <img src="banklogo.png">
            <div class="container">
                <h1>United Web Banking</h1>
                <ul>
                    <li class="active"><a href="useraccount.jsp">Home</a></li>
                    <li><a href="login.jsp">Logout</a></li>
                </ul>
            </div>
        </nav>
    </header>

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String userName = request.getParameter("uname");
		String NIC = request.getParameter("NIC");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String password = request.getParameter("pass");
		
	%>
	
	<form action="update" method="post">
	<table>
		<tr>
			<td>Customer ID</td>
			<td><input type="text" name="cusid" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type="text" name="name" value="<%= name %>" readonly></td>
		</tr>
		<tr>
		<td>User name</td>
		<td><input type="text" name="uname" value="<%= userName %>" readonly></td>
	</tr>
	<tr>
		<td>NIC</td>
		<td><input type="text" name="NIC" value="<%= NIC %>" readonly></td>
	</tr>
		<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%= email %>"></td>
	</tr>
	<tr>
		<td>Phone number</td>
		<td><input type="text" name="phone" value="<%= phone %>"></td>
	</tr>

	<tr>
		<td>Password</td>
		<td><input type="password" name="pass" value="<%= password %>"></td>
	</tr>		
	</table>
	<br>
	<input type="submit" name="submit" value="Update My Details">
	</form>

<div class="footer">
        <p>&copy; 2023 United Bank. All rights reserved.</p>
    </div>
</body>
</html>