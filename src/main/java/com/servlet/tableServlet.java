package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.util.Random;

import com.DAO.tableDAO;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.helpers.DBconfig;


@WebServlet("/addtable")
public class tableServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		Random random = new Random();
		
		int id = random.nextInt(1000);
		String qrcodeFileName = id+"photo.jpg";
		System.out.println(qrcodeFileName);
		String data="https://portfolio-1766a.web.app/";
		String path="C:/Users/Puneeth M k/eclipse-workspace/Restaurant/src/main/webapp/tables/"+qrcodeFileName;
		
		BitMatrix matrix;
		try {
			matrix = new MultiFormatWriter().encode(data,BarcodeFormat.QR_CODE,500,500);
			MatrixToImageWriter.writeToPath(matrix,"jpg",Paths.get(path));
			
			tableDAO tableDAO = new tableDAO(DBconfig.getConnection());
			
			boolean status =  tableDAO.addtable(id, qrcodeFileName);
			HttpSession session = request.getSession();
			if(status) {
				session.setAttribute("qrode", "true");
				response.sendRedirect("/Restaurant/tables.jsp");
			}else {
				session.setAttribute("qrode", "false");
				response.sendRedirect("/Restaurant/tables.jsp");
				
			}
			
		} catch (WriterException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
