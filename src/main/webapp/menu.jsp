<%@page import="java.util.Random"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="com.DAO.foodDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.helpers.DBconfig"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Menu</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <style></style>
  </head>
  
  <body class="bg-light">
 
  
    <div class=" d-flex justify-content-center align-items-center">
      <div class="w-75 h-100 gap-3">
        <div class="">
          <h1 class="text-center mt-5">Welcome to our restaurant</h1>
          <hr />
          <%
          	Connection connection = DBconfig.getConnection();
          	PreparedStatement ps = connection.prepareStatement("select id from tables");
          	ResultSet rs = ps.executeQuery();
          	String idString[]=null;
          	while(rs.next()){
          		
          	Random r = new Random();
          	int id = r.nextInt(rs.getInt("id"));
          	%>
          	
          <form id="orders" class="card p-5 gap-2" method="post" onSubmit="changeEvent()" action="orders?id=781">
          <%
          	}
          %>
            <h2>May i know your information</h2>
            <div class="form-group">
              <label for="exampleInputEmail1">Name</label>
              <input
                type="text"
                class="form-control"
                name="name"
                required
                id="exampleInputEmail1"
                aria-describedby="emailHelp"
                placeholder="Enter name"
              />
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1">Email</label>
              <input
                type="email"
                name="email"
                required
                class="form-control"
                id="exampleInputPassword1"
                placeholder="Email"
              />
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1">Phone num</label>
              <input
                type="tel"
                name="phone"
                required
                class="form-control"
                id="exampleInputPassword1"
                placeholder="Phone number"
              />
            </div>
            <div class="form-check">
              <input
                type="checkbox"
                class="form-check-input"
                id="exampleCheck1"
              />
              <label class="form-check-label" for="exampleCheck1"
                >Share your new foods</label
              >
            </div>
            <div class="menu mt-5">
              <h1 class="text-center mb-2">Takeaway Menu</h1>
              <%
              	Map<String, Integer> orders = new HashMap<>();
            		  System.out.print(orders);
  					foodDAO foodDAO = new foodDAO(DBconfig.getConnection());
            		 Map<String, Map<String,Integer>> foods =  foodDAO.getMenu();
            		  for(Map.Entry<String, Map<String, Integer>> entry : foods.entrySet()){
            			  
            			  %>
            			  <div class="card mt-3">
                <div class="card-header"><%=entry.getKey() %></div>
                <div class="card-body d-flex flex-column">
                  <%
                  Map<String, Integer> foodPrize =entry.getValue(); 
                  	for(Map.Entry<String, Integer> food:foodPrize.entrySet()  ){
                  		%>
                  		<div class="card-group cursor gap-1 d-flex justify-content-between">
                  			<div class="d-flex justify-content-center align-items-center gap-2">
                    			<input type="checkbox"  value=" <%=food.getKey() %>-<%=food.getValue() %>" name="menu" id="<%=food.getKey() %>" />
                    			<label for="<%=food.getKey() %>"><%=food.getKey() %></label>
                  			</div>
                    		<h4 name="prize" > <%=food.getValue() %> </h4>
                 		</div>
                  		<%
                  	}
                  %>
                </div>
              </div>
            			  <%
            			  
            		  }
            		 
  			  %>
              </div>
              <input type="hidden" name="selectedVehicles" id="selectedVehicles"/>
            <button class="btn btn-secondary"  >Order</button>
          </form>
        </div>
      </div>
    </div>
    <script>
       
    const changeEvent = () =>{
    	var vehicleTypes = document.getElementsByName("menu");
        var selectedVehicleTypes = [];
        for (var i = 0; i < vehicleTypes.length; i++) {
            if (vehicleTypes[i].checked) {
                selectedVehicleTypes.push(vehicleTypes[i].value);
            }
        }
        
        // Set the value of selectedVehicles to comma separated 
        // String of the selected vehicle types
        
        var hiddenSelectedVehicles = document.getElementById("selectedVehicles");
        hiddenSelectedVehicles.value = selectedVehicleTypes.join(",");
        
        // jQuery
        /* $("#selectedVehicles").value(selectedVehicleTypes.join(",")); */
        
        // Submit the form using javascript
        var form = document.getElementById("orders");
        form.submit();
    }
    
    </script>
    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
      integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
      integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
