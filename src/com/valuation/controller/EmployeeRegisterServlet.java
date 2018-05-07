package com.valuation.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.valuation.model.Employee;
import com.valuation.service.RegisterService;

public class EmployeeRegisterServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String type = request.getParameter("type");

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		String dobString = request.getParameter("dob");
		java.util.Date dobUtil = null;
		try {
			dobUtil = sdf.parse(dobString);
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		Date dob = new Date(dobUtil.getTime());

		String joinDateString = request.getParameter("joinDate");
		java.util.Date joinDateUtil = null;
		try {
			joinDateUtil = sdf.parse(joinDateString);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Date joinDate = new Date(joinDateUtil.getTime());
		
		Integer salary = Integer.parseInt(request.getParameter("salary"));
		String mobileNumber = request.getParameter("mobileNumber");
		String address = request.getParameter("address");

		Employee user = new Employee(name, password, type, dob, joinDate, salary, mobileNumber, address);

		try {
			RegisterService registerService = new RegisterService();
			boolean result = registerService.register(user);
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Registration Successful</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<center>");
			if (result) {
				out.println("<h1>Thanks for Registering with us :</h1>");
				out.println("To login with new UserId and Password<a href=LoginPage.jsp>Click here</a>");
			} else {
				out.println("<h1>Registration Failed</h1>");
				out.println("To try again<a href=CreateEmployee.jsp>Click here</a>");
			}
			out.println("</center>");
			out.println("</body>");
			out.println("</html>");
		} finally {
			out.close();
		}
	}

}
