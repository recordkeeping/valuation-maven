package com.valuation.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.valuation.model.Employee;
import com.valuation.model.Login;
import com.valuation.service.LoginService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String employeeType = request.getParameter("userType");
		
		Login loginCredentials = new Login(employeeType, name, password);
		
		try {
			LoginService loginService = new LoginService();
			boolean result = loginService.authenticateEmployee(loginCredentials);
			
			Employee employee = loginService.getUserByUserId(name,password);
		     if(result == true){
		         request.getSession().setAttribute("employee", employee);      
		         response.sendRedirect("CreateEntry.jsp");
		     }
		     else{
		         response.sendRedirect("Error.jsp");
		     }
		} catch(Exception e) {
			response.sendRedirect("Error.jsp");
			
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
