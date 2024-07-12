<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" type="text/css" href="useracc.css">
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

	<div class="welcome-container">
        <h1>Welcome To United Bank..!</h1> 
      
    </div>

    <form>
    	<h2>Customer Details </h2>
	
        <table class="styled-table">
         <c:forEach var="cus" items="${cusDetails}">
         <c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="username" value="${cus.userName}"/>
	<c:set var="password" value="${cus.password}"/>
	<c:set var="NIC" value="${cus.NIC}"/>
	
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
</c:forEach>



        </table>
    </form>
    
    <c:url value="updatecustomer.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
		<c:param name="NIC" value="${NIC}"/>
	</c:url>
	

	
	
  <c:url value="DeleteCus.jsp" var="cusdelete">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
		<c:param name="NIC" value="${NIC}"/>
	</c:url>
	
    <div class="button-container">
        <div class="button-row">
            <button>Pay Bills</button>
            <button>Transactions</button>
            <button>Apply Loan</button>
            <a href="${cusupdate}">
            <button type="button" name="update" value="Update My Data">Update Account</button>
			</a>
            <button>Concerns</button>
        </div>
    </div>


    <div class="footer">
        <p>&copy; 2023 United Bank. All rights reserved.</p>
    </div>
</body>
</html>
