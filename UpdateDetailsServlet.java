package com.costomer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateDetails")
public class UpdateDetailsServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get parameters from the form
		String id = request.getParameter("id");
        String Uname = request.getParameter("newUsername");
        String email = request.getParameter("newEmail");
        String address = request.getParameter("newAddress");
        String mobile = request.getParameter("newMobileNumber");
        
        boolean isTrue;
        isTrue = costomerDButill.updateCustomer(id, Uname, email, address, mobile);
        
        if(isTrue==true) {
        	
        	List<costomer> cusdetails = costomerDButill.getCustomerDetails(id);
        	request.setAttribute("cusdetails", cusdetails);
        	RequestDispatcher dis = request.getRequestDispatcher("userProfile.jsp");
        	dis.forward(request, response);
        }
        else {
        	RequestDispatcher dis = request.getRequestDispatcher("error.jsp");
        	dis.forward(request, response);
        }
	}
}