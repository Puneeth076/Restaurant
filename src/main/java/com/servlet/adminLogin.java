package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.entity.adminEntity;
import com.helpers.DBconfig;

/**
 * Servlet implementation class adminLogin
 */
@WebServlet("/adminlogin")
public class adminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public adminLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		
		
		try {
			
			
			adminEntity admin = new adminEntity(email, password);
			com.DAO.adminDAO dao = new com.DAO.adminDAO(DBconfig.getConnection());
			
			boolean result = dao.addAdmin(admin);
			
			HttpSession session = request.getSession();
			if(result) {
				session.setAttribute("status", admin.getEmail());
				response.sendRedirect("/Restaurant/dashboard.jsp");
			}else {
//				session.setAttribute("status", "false");
				response.sendRedirect("/Restaurant/login.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
