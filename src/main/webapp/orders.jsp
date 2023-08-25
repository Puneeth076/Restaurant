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
      <div style="margin-left:16.5%;" class="fs-3">
      <div class="m-5">
      <h1 class="text-center mb-5">Order's list</h1>
      <div
        class="d-flex justify-content-between gap-2 btn align-items-center border"
      >
        <a
          class="orders text-decoration-none text-body rounded w-50 d-flex justify-content-center align-items-center btn fs-3"
          href="#"
        >
          <h3 class="">New order's</h3>
        </a>

        <a
          href="#"
          class="orders text-body text-decoration-none rounded w-50 d-flex justify-content-center align-items-center btn fs-3"
        >
          <h3 class="">Delivered order's</h3>
        </a>
      </div>
      <table class="table table-striped table-hover mt-5">
        <thead>
          <tr>
            <th scope="col">Sl.no</th>
            <th scope="col">Name</th>
            <th scope="col">Email</th>
            <th scope="col">Phone</th>
            <th scope="col">orders</th>
            <th scope="col">payment status</th>
            <th scope="col">delivered status</th>
            <th scope="col">Actions</th>
          </tr>
        </thead>
        <tbody>
          <tr class="align-items-center">
            <th scope="row">1</th>
            <td>Otto</td>
            <td>Otto</td>
            <td>@mdo</td>
            <td>@mdo</td>
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

            <td>Otto</td>
            <td>Otto</td>
            <td>@mdo</td>
            <td>@mdo</td>
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