package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;

import com.helpers.DBconfig;

/**
 * Servlet implementation class deletefoodServlet
 */
@WebServlet("/deletefood")
public class deletefoodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id  =Integer.parseInt(request.getParameter("id"));
		
		try {
			
			String DELETE_FOOD = "delete from food where id=?";
			
			PreparedStatement preparedStatement = DBconfig.getConnection().prepareStatement(DELETE_FOOD);
			preparedStatement.setInt(1, id);
			int count = preparedStatement.executeUpdate();
			if(count>0) {
				response.sendRedirect("/Restaurant/foodlist.jsp");
			}else {
				PrintWriter out = response.getWriter();
				out.print("Error in delete this item");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
