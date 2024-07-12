<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link rel="stylesheet" type="text/css" href="insert.css">

</head>
<body>
 <header>
        <nav>
          <img src="banklogo.png">
            <div class="container">
                <h1>United Web Banking</h1>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Logout</a></li>
                   
                </ul>
            </div>
        </nav>
    </header>


	<div >
	<form action="insert" method="post">
	<div>
	<h2>Discover the Future of Banking with United Bank!<br> 
	Sign up now for a Smart and Easy banking experience. 
	</h2>
</div>
		 <label for="fullName">Full Name:</label>
		 <input type="text" name="name"><br>
		 
		 <label for="username">User Name:</label>
		 <input type="text" name="uid"><br>
		 
		 <label for="password">Password:</label>
		 <input type="password" name="psw"><br>
		 
		 <label for="nic">NIC:</label>
		 <input type="text" name="NIC"><br>
		 
		<label for="email">Email:</label>
		 <input type="text" name="email"><br>
		 
		<label for="phone">Phone Number:</label>
		 <input type="text" name="phone"><br>
		 
		 <label for="address">Address:</label>
		 <input type="text" name="address"><br>
		 
		<label for="accountType">Account Type:</label>
		<input type="text" name="acctype"><br>
		
		<label for="depositAmount">Deposit Amount:</label>
		 <input type="text" name="balance"><br>
		 
		
		
		
		<input type="submit" name="submit" value="Register">
	</form>
	</div>
	 <div class="footer">
        <p>&copy; 2023 United Bank . All rights reserved.</p>
    </div>
</body>
</html>