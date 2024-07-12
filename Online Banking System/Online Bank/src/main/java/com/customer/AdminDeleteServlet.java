package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdminDeleteServlet")
public class AdminDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String customerId = request.getParameter("customerId");

        // Call a method from CustomerDButill to fetch customer details by ID
        List<Customer> cusDetails = CustomerDButill.getCustomerDetails(customerId);

        // Set the retrieved customer details in the request attribute
        request.setAttribute("cusDetails", cusDetails);

        // Forward the request to DeleteCus.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("DeleteCus.jsp");
        dispatcher.forward(request, response);
    }
}