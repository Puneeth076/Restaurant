<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.ordersEntity"%>
<%@page import="com.DAO.ordersDAO"%>
<%@page import="com.helpers.DBconfig"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>orders</title>
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
      <div style="margin-left:16.5%;" class="fs-3">
      <div class="m-5">
      <h1 class="text-center mb-5">Order's list</h1>
      
      <table class="table table-striped table-hover mt-5">
        <thead>
          <tr>
            <th scope="col">Sl.no</th>
            <th scope="col">Name</th>
            <th scope="col">Email</th>
            <th scope="col">Phone</th>
            <th scope="col">orders</th>
            <th scope="col">delivered status</th>
            <th scope="col">Actions</th>
          </tr>
        </thead>
        <tbody>
        <%
        String GET_ALL_ORDERS = "select * from orders";
		Connection conn = DBconfig.getConnection();
		PreparedStatement preparedStatement = conn.prepareStatement(GET_ALL_ORDERS);
		ResultSet resultSet = preparedStatement.executeQuery();
		int i=1;
		while(resultSet.next()) {
		
			%>
			<tr class="align-items-center">
            <th scope="row"><%=i++ %></th>
            <td><%=resultSet.getString("name") %></td>
            <td><%=resultSet.getString("email") %></td>
            <td><%=resultSet.getString("phone")%></td>
            	<td>
            		<ol>
            <%
            
            String string = resultSet.getString("foods");
            String[] parts = string.split(",");
            for(int j=0;j<parts.length;j++){
            	%>
            		<li><%=parts[j] %></li>	
            	<%
            }
            %>
            		</ol>
            	</td>
            <td >
                <%
                	boolean status = resultSet.getBoolean("delivaryStatus");
                if(status == true){
                	%>
                	
                <input type="checkbox" checked/>
                	<%
                }else{
                	%>
                	
            <form method="post" action="updatestatus?id=<%= resultSet.getInt("id") %>">
                <button class="btn">
                <input type="checkbox" />
                </button>
                	<%
                }
                
                %>
            </form>
            </td>
            <td>
              <div>
                <button class="btn">
                  <img src="./images/view.svg" alt="view" />
                </button>
                <button class="btn">
                  <img src="./images/delete.svg" alt="view" />
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