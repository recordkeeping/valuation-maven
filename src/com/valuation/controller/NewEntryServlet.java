package com.valuation.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.valuation.model.NewEntry;

/**
 * Servlet implementation class NewEntryServlet
 */
@WebServlet("/NewEntryServlet")
public class NewEntryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewEntryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		String doiString = request.getParameter("doi");
		java.util.Date doiUtil = null;
		try {
			doi = sdf.parse(doiString);
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		Date doi = new Date(doiUtil.getTime());
		Integer fileNo = Integer.parseInt(request.getParameter("fileno"));
		String bank = request.getParameter("bank");
		String branch = request.getParameter("branch");
		String clientName = request.getParameter("cname");
		String clientContact = request.getParameter("cnum");
		String propertyAt = request.getParameter("propLoc");
		String propType = request.getParameter("propType");
		String repPreparedBy = request.getParameter("repPrep");
		
		NewEntry newEntry = new NewEntry(doi, fileNo, bank, branch, clientName, 
				clientContact, propertyAt, propType, repPreparedBy);
		
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
