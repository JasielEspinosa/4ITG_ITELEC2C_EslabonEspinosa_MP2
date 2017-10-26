package com.aviation.controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aviation.utility.*;
import com.aviation.utility.AircraftFactory;

import com.aviation.model.aircraft.*;
import com.aviation.model.details.*;

public class ProcessSold extends HttpServlet implements IntroTexts {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String input_aircraftType = request.getParameter("acid");
		Aircraft aircraft = new AircraftFactory().getAircraft(input_aircraftType);
		Detail detail = new DetailFactory().getDetail(input_aircraftType);

		// Number of Orders
		double orderCount = Double.parseDouble(request.getParameter("noOfOrders"));
		aircraft.setOrderCount(orderCount);

		// Calculation of the aircraft price times the number of order/s
		double finalPrice = aircraft.acPrice() * orderCount;
		aircraft.setFinalPrice(finalPrice);

		double calculate = Aircraft.getBudget() - (finalPrice);

		if (calculate < 0) {
			// If the budget reaches below 0, the order will repeat.
			aircraft.setDetail(detail);
			request.setAttribute("aircraft", aircraft);
			request.getRequestDispatcher("displayRevive.jsp").forward(request, response);

		} else {

			// Sets the calculation of the final price
			Aircraft.setBudget(calculate);

			// passes the details to the output
			aircraft.setDetail(detail);
			request.setAttribute("aircraft", aircraft);

			for (int i = 0; i < orderCount; i++) {
				SingletonDatabase.insertRecord(aircraft, detail, getServletContext().getInitParameter("jdbcDriver"),
						getServletConfig().getInitParameter("jdbcUrl"),
						getServletConfig().getInitParameter("dbUserName"),
						getServletConfig().getInitParameter("dbUserPassword"));
			}

			Connection x = SingletonDatabase.getConnection();
			Connection y = SingletonDatabase.getConnection();
			Connection z = SingletonDatabase.getConnection();

			if (x.equals(y) || y.equals(z) && x.equals(z)) {
				System.out.println("ProcessSold Connection");
				System.out.println("Connection to the database established");
			} else {
				System.out.println("ProcessSold Connection");
				System.out.println("Connection to the database failed");
			}

			request.getRequestDispatcher("displaySuccessOrder.jsp").forward(request, response);

		}

	}

}
