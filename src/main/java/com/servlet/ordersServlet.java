package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.DAO.ordersDAO;
import com.entity.ordersEntity;
import com.helpers.DBconfig;

/**
 * Servlet implementation class ordersServlet
 */
@WebServlet("/orders")
public class ordersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter outPrintWriter = response.getWriter();
		
		String foods = request.getParameter("selectedVehicles");
		String nameString = request.getParameter("name");
		String emailString = request.getParameter("email");
		String phoneString = request.getParameter("phone");
		int tableId = Integer.parseInt(request.getParameter("id"));

		ordersEntity ordersEntity = new ordersEntity(nameString, emailString, phoneString, foods,false, tableId);
		
		ordersDAO ordersDAO = new ordersDAO(DBconfig.getConnection());
		boolean status = ordersDAO.addOrder(ordersEntity);
		HttpSession session = request.getSession();
		if(status) {
			session.setAttribute("user", nameString);
			response.sendRedirect("/Restaurant/success.jsp");
		}else {
			response.sendRedirect("/Restaurant/menu.jsp");
		}
	}

}
