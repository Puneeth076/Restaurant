<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.helpers.DBconfig"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
<%@include file="Links.html" %>
</head>
<body>
<%
	if(session.getAttribute("status") == null){
		response.sendRedirect("/Restaurant/login.jsp");
	}
%>

<%@include file="Navbar.jsp" %>
<div class="d-flex">
      <div style="width:25%;">
      	<%@include file="Sidebar.html" %>
      </div>
      <div style="margin-left:16.5%;" class="fs-2">
      <div class="m-5">
      <h1 class="text-center">Table's List</h1>
      <form method="post" action="addtable">
      <button class="btn btn-primary fs-2">Add table</button>
      </form>
      <table class="table table-striped table-hover mt-5">
        <thead>
          <tr>
            <th scope="col">Sl.no</th>
            <th scope="col">Qr code</th>
            <th scope="col">Download QR</th>
          </tr>
        </thead>
        <tbody>
        <%
        
        Connection connection = DBconfig.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement("select * from tables");
        
        ResultSet rs = preparedStatement.executeQuery();
        int i=1;
        int tableId=1;
        while(rs.next()){
        	%>
        	<tr class="align-items-center">
            <th scope="row"><%=i++  %></th>
            <td><img src="./tables/<%=rs.getString("qrcode")%>" width="40" height="40" /></td>
            

            <td>
              <div>
                <button class="btn">
                <a href="./tables/<%=rs.getString("qrcode")%>" download="table<%=tableId++ %>">
                  <img src="https://img.favpng.com/3/16/17/download-icon-png-favpng-UekFpCLkNd0xL2sS9YFK01nhX.jpg" width="40" height="40"  alt="view" />
                </a>
                </button>
               
              </div>
            </td>
          </tr>
        	<%        	
        }
        
        
        %>
        
        
          
          
        </tbody>
      </table>
    </div>
      </div>
    </div>
</body>
</html>