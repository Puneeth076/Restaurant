package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import com.DAO.foodDAO;
import com.entity.foodentity;
import com.helpers.DBconfig;


@WebServlet("/addfood")
@MultipartConfig
public class addfoodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Part part = request.getPart("food_image");
		String fileName = part.getSubmittedFileName();
		String category = request.getParameter("category");
		String foodnameString = request.getParameter("foodname");
		String foodDescString = request.getParameter("food_description");
		int foodPrizeString = Integer.parseInt(request.getParameter("food_prize"));
		
		try {
			
			foodentity foodentity = new foodentity(foodnameString, foodDescString,foodPrizeString,fileName, category);
			
			foodDAO foodDAO = new foodDAO(DBconfig.getConnection());
			boolean status =  foodDAO.addfood(foodentity);
			
			if(status) {
				
				String pathString = "C:/Users/Puneeth M k/eclipse-workspace/Restaurant/src/main/webapp/assets/"+fileName;
				System.out.println(pathString);
				try {
					
				FileOutputStream fileOutputStream = new FileOutputStream(pathString);
				InputStream inputStream = part.getInputStream();
				byte[] data = new byte[inputStream.available()];
				inputStream.read(data);
				fileOutputStream.write(data);
				fileOutputStream.close();
				} catch (Exception e) {
					// TODO: handle exception
				}
				response.sendRedirect("/Restaurant/foodlist.jsp");
			}else {
				
				response.sendRedirect("/Restaurant/addfood.jsp");
			}
			
		} catch (Exception e) {
e.printStackTrace();		}
	
	
		

	}
		

}
