package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.DAO.foodDAO;
import com.helpers.DBconfig;


@WebServlet("/addcategory")
public class addcategoryservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String categoryString = request.getParameter("category_name");
		
		try {
			
			foodDAO foodDAO = new foodDAO(DBconfig.getConnection());
			
			boolean status =  foodDAO.addCategory(categoryString);
			
			if(status == true) {
				response.sendRedirect("/Restaurant/addfood.jsp");
				request.getSession().setAttribute("category", categoryString);
				System.out.println("success");
			}else {
				response.sendRedirect("/Restaurant/addCategory.jsp");
				System.out.println("error");
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
