package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		
		try {
            List<Customer> cusDetails = CustomerDButill.validate(username, password);
            
            if (cusDetails != null && !cusDetails.isEmpty()) {
                // Valid user, forward to useraccount.jsp
            	
                request.setAttribute("cusDetails", cusDetails);
                RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
                dis.forward(request, response);
            } else {
         
                RequestDispatcher dis = request.getRequestDispatcher("LoginUnsucsess.jsp");
                dis.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
