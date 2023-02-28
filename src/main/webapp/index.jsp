<%@ page import="java.util.List" %>
<%@ page import="employeemanagement.dao.UserDao" %>
<%@ page import="employeemanagement.bean.User" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Employee Management System</title>

    <!-- Bootstrap CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <!-- Font CDN -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@500&family=Tilt+Warp&display=swap" rel="stylesheet">
</head>

<body>

<header>
    <div class="">
        <nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.jsp">Employee Management System</a>
                <div class="collapse navbar-collapse" id="navbarText">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="<%=request.getContextPath()%>/list">Employees List</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="#">Contact Us</a>
                        </li>
                    </ul>
                    <span class="navbar-text">
            <em>"Empowering success through continuous innovation"</em>
          </span>
                </div>
            </div>
        </nav>
    </div>
</header>

<br>

<div class="container-fluid">

    <div class="container-fluid" style="padding-left: 60px; padding-right: 60px;">

        <h2 class="text-center" style="font-family: 'Roboto Mono', monospace;">
            <small class="text-muted">List of Employees</small>
        </h2>
        <div class="text-success">
            <hr>
        </div>

        <div class="container text-left" style="padding-left: 0px; margin-left: 0px;">
            <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add New Employee</a>
        </div>

        <br>
        <!-- Users table -->
        <table class="table table-borderless table-hover">
            <thead class="table-light">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>NIC</th>
                <th>Department</th>
                <th>Designation</th>
                <th>Joined Date</th>
                <th>Controls</th>
            </tr>
            </thead>
            <tbody>
            <%
                UserDao userDao = new UserDao();
                List<User> listUser = userDao.selectAllUsers();
                for (User user : listUser) {

            %>
            <tr>
                <td><%= user.getId() %></td>
                <td><%= user.getName() %></td>
                <td><%= user.getNic() %></td>
                <td><%= user.getDepartment() %></td>
                <td><%= user.getDesignation() %></td>
                <td><%= user.getJoinDate() %></td>
                <td>
                    <a href="edit?id=<%= user.getId() %>">Edit</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="delete?id=<%= user.getId() %>">Delete</a>
                </td>
            </tr>
            <%
                }
            %>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>