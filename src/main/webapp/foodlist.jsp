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
<%@include file="Navbar.html" %>
<div class="d-flex">
      <div style="width:25%;">
      	<%@include file="Sidebar.html" %>
      </div>
      <div style="margin-left:16.5%;" class="fs-1">
      <div class="m-5">
      <h1 class="text-center fs-1">Food's List</h1>
      <button class="btn btn-primary fs-2">Add food</button>
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
          <tr class="align-items-center">
            <th scope="row">1</th>
            <td><img src="./images/logo.jpg" width="40" height="40" /></td>
            <td>Otto</td>
            <td>@mdo</td>
            <td>@mdo</td>
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
          <tr>
            <th scope="row">2</th>
            <td><img src="./images/logo.jpg" width="40" height="40" /></td>
            <td>Otto</td>
            <td>@mdo</td>
            <td>@mdo</td>
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
          
        </tbody>
      </table>
    </div>
      </div>
    </div>
</body>
</html>