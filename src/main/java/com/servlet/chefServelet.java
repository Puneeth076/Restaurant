package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import com.DAO.chefDAO;
import com.entity.chefEntity;
import com.helpers.DBconfig;

@WebServlet("/addchef")
@MultipartConfig
public class chefServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nameString = request.getParameter("name");
		String descriptionString = request.getParameter("description");
		
		Part profilePart=request.getPart("profile");
		
		String filename = profilePart.getSubmittedFileName();
		
		chefEntity chefEntity=new chefEntity(nameString,descriptionString,filename);
		
		try {
			
			chefDAO chefDAO=new chefDAO(DBconfig.getConnection());
			boolean c= chefDAO.addchef(chefEntity);
				if(c) {
				String pathString = "C:/Users/Puneeth M k/eclipse-workspace/Restaurant/src/main/webapp/chefs/"+filename;
				System.out.println(pathString);
				try {
					System.out.println(filename);
				FileOutputStream fileOutputStream = new FileOutputStream(pathString);
				InputStream inputStream = profilePart.getInputStream();
				byte[] data = new byte[inputStream.available()];
				inputStream.read(data);
				fileOutputStream.write(data);
				fileOutputStream.close();
				} catch (Exception e) {
					// TODO: handle exception
				}
				response.sendRedirect("/Restaurant/chefs.jsp");
			}else {
				
				response.sendRedirect("/Restaurant/addchef.jsp");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

}
