package com.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CustomerInsert")
public class CustomerInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("name");
		String username= request.getParameter("uid");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String password = request.getParameter("psw");
		String amount = request.getParameter("balance");
		String acctype = request.getParameter("acctype");
		String NIC = request.getParameter("NIC");
		
	
        if (name.isEmpty() || username.isEmpty() || email.isEmpty() || phone.isEmpty() || address.isEmpty() || password.isEmpty() || amount.isEmpty() || acctype.isEmpty() || NIC.isEmpty()) {
         
            RequestDispatcher dis = request.getRequestDispatcher("InsertUnsuccess.jsp");
            dis.forward(request, response);
        } else {
            boolean isTrue;
            isTrue = CustomerDButill.insertcustomer(name, username, email, phone, address, password, amount, acctype, NIC);

            if (isTrue) {
                RequestDispatcher dis = request.getRequestDispatcher("InsertSuccess.jsp");
                dis.forward(request, response);
            } else {
                RequestDispatcher dis2 = request.getRequestDispatcher("InsertUnsuccess.jsp");
                dis2.forward(request, response);
            }
        }
    }
}
