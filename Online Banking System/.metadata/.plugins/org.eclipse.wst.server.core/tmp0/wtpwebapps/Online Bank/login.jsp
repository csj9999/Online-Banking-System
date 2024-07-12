<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="login.css">
</head>
<body>
    <header>
        <nav>
          <img src="banklogo.png">
            <div class="container">
                <h1>United Web Banking</h1>
                <ul>
                    <li><a href="#">Admin Login</a></li>
                </ul>
            </div>
        </nav>
    </header>

    <div class="login-container">
        <h2>Login</h2>
        <form action="login" method="post">
            <div class="input-group">
                <label for="username">Username:</label>
                <input type="text" name="uid" required>
            </div>
            <div class="input-group">
                <label for="password">Password:</label>
                 <input class="input-group" type="password"  name="pass"  ><br><br>
             <div class="input-group">
                 <input type="submit" name="submit" value="Login">
               </div>
            </div>
          </form>
        <div class="regtag">
            Not Registered..? 
            <a href="customerinsert.jsp"> <button >Register</button> </a> 
         </div>
    </div>
    
        <div class="footer">
        <p>&copy; 2023 United Bank . All rights reserved.</p>
    </div>
</body>
</html> 