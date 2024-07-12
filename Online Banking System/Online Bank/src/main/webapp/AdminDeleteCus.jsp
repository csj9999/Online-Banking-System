<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete User</title>
<link rel="stylesheet" type="text/css" href="Admindelete.css">
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
    
    <div class="cussearch">
	<h1>Search User</h1>
 <form action="AdminDeleteServlet" method=post>
    Enter Customer ID: <input type="text" name="customerId">
    <input type="submit" value="Search">
</form>
</div>
    <div class="footer">
        <p>&copy; 2023 United Bank. All rights reserved.</p>
    </div>
</body>
</html>