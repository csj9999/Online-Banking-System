<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Customer</title>
<link rel="stylesheet" type="text/css" href="Deletecus.css">

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
     
     <div class="deleteform">
    	 <h2>User Details</h2>
    <form action="delete" method="post">
        <table class="styled-table " border="1">
            <c:forEach var="cus" items="${cusDetails}">
  
	
    <tr>
        <td>ID</td>
        <td>: - ${cus.id}</td>
    </tr>
    <tr>
        <td>Name</td>
        <td>: - ${cus.name}</td>
    </tr>
    <tr>
        <td>Username</td>
        <td>: - ${cus.userName}</td>
    </tr>
    <tr>  
        <td>Email</td>
        <td>: - ${cus.email}</td>
    </tr>
    <tr> 
        <td>Phone</td>
        <td>: - ${cus.phone}</td>
    </tr>
    <tr> 
        <td>Address</td>
        <td>: - ${cus.address}</td>
    </tr>
 
    <tr>  
        <td>Balance</td>
        <td>: - Rs.${cus.balance}</td>
    </tr>
    <tr> 
        <td>Account Type</td>
        <td>: - ${cus.acctype}</td>
    </tr>
    <tr> 
        <td>NIC</td>
        <td>: - ${cus.NIC}</td>
    </tr>
    
<input type="hidden" name="customerId" value="${cus.id}">

         </c:forEach>
        </table>
        <!-- Button to delete user -->
        <input type="submit" value="Delete User">
</form>
</div>
 <div class="footer">
        <p>&copy; 2023 United Bank . All rights reserved.</p>
    </div>
</body>
</html>