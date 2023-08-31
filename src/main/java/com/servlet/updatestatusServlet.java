package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;

import com.helpers.DBconfig;

/**
 * Servlet implementation class updatestatusServlet
 */
@WebServlet("/updatestatus")
public class updatestatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		
		try {
			
			PreparedStatement preparedStatement = DBconfig.getConnection().prepareStatement("update orders set delivaryStatus=? where id=?");
			preparedStatement.setBoolean(1, true);
			preparedStatement.setInt(2, id);
			int count = preparedStatement.executeUpdate();
			if(count > 0) {
				response.sendRedirect("/Restaurant/orders.jsp");
			}else {
				
				response.sendRedirect("/Restaurant/orders.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
