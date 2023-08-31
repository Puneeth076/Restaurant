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
<body><%
	if(session.getAttribute("status") == null){
		response.sendRedirect("/Restaurant/login.jsp");
	}
%>

<%@include file="Navbar.jsp" %>
<div class="d-flex">
      <div style="width:25%;">
      	<%@include file="Sidebar.html" %>
      </div>
      <div style="margin-left:16.5%;" class="fs-1">
      <div class="m-5">
      <h1 class="text-center fs-1">Food's List</h1>
      <a href="/Restaurant/addfood.jsp"><button class="btn btn-primary fs-2">Add food</button><a/>
      
      <table class="table table-striped table-hover mt-5">
        <thead>
          <tr>
            <th scope="col">Sl.no</th>
            <th scope="col">Food image</th>
            <th scope="col">Food name</th>
            <th scope="col">food description</th>
            <th scope="col">food prize</th>
            <th scope="col">Actions</th>
          </tr>
        </thead>
        <tbody>
        <%
			Connection conn = DBconfig.getConnection();
        	PreparedStatement preparedStatement = conn.prepareStatement("select * from food");
        	ResultSet resultSet = preparedStatement.executeQuery();
        	int i=1;
        	while(resultSet.next()){
        		%>
        		
        		<tr class="align-items-center">
            		<th scope="row"><%=i++ %></th>
            		<td><img style="border-radius:50%" src="./assets/<%=resultSet.getString("foodImage")%>" width="40" height="40" /></td>
            		<td><%=resultSet.getString("foodName") %></td>
           			 <td class="fs-3"><%=resultSet.getString("foodDescription") %></td>
            		<td><%=resultSet.getString("foodPrize") %></td>
            		<td>
             			 <div class="d-flex">
             			 <a href="/Restaurant/updatefood.jsp?id=<%=resultSet.getInt("id")%>">
                			<button class="btn">
                 				 <img src="./images/view.svg" alt="view" />
                			</button>
             			 </a>
             			 <form action="deletefood?id=<%=resultSet.getInt("id")%>" method="post">
                			<button class="btn">
                 				 <img src="./images/delete.svg" alt="view" />
                			</button>
             			 </form>
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