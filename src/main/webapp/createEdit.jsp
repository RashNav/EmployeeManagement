<%@ page import="employeemanagement.bean.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>

<head>
    <title>User Management Application</title>
    <!-- Bootstrap CDN -->
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
    <!-- Font CDN -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@500&family=Tilt+Warp&display=swap" rel="stylesheet">
</head>

<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: darkslategrey">
        <div>
            <a href="index.jsp" class="navbar-brand"> Employee Management System </a>
        </div>

        <ul class="navbar-nav">
            <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Employees</a></li>
        </ul>
    </nav>
</header>

<br>

<div class="container col-md-5">

    <div class="card">

        <div class="card-body">

            <%
                User user = (User) request.getAttribute("user");

                String actionUrl;
                String caption;
                if (user != null) {
                    actionUrl = "update";
                    caption = "Edit Employee Details";
                } else {
                    actionUrl = "insert";
                    caption = "Add New Employee";
                }
            %>

            <!-- If Inserting a new user action = "insert" and caption = "Add New Employee"  -->
            <!-- If Editing a existing  user action = "update" and caption = "Edit Employee" -->
            <form action="<%= actionUrl %>" method="post">
                <caption>
                    <h2 class="text-center" style="font-family: 'Roboto Mono', monospace;">
                        <small><%= caption %></small>
                    </h2>
                </caption>

                <% if (user != null) { %>
                <input type="hidden" name="id" value="<%= user.getId() %>" />
                <% } %>

                <fieldset class="form-group">
                    <label>Employee Name</label>
                    <input type="text" value="<%= (user != null) ? user.getName() : "" %>" class="form-control" name="name" required="required">
                </fieldset>

                <fieldset class="form-group">
                    <label>Employee NIC</label>
                    <input type="text" value="<%= (user != null) ? user.getNic() : "" %>" class="form-control" name="nic">
                </fieldset>

                <fieldset class="form-group">
                    <label>Employee Department</label>
                    <input type="text" value="<%= (user != null) ? user.getDepartment() : "" %>" class="form-control" name="department">
                </fieldset>

                <fieldset class="form-group">
                    <label>Employee Designation</label>
                    <input type="text" value="<%= (user != null) ? user.getDesignation() : "" %>" class="form-control" name="designation">
                </fieldset>

                <fieldset class="form-group">
                    <label>Employee Joined Date</label>
                    <input type="text" value="<%= (user != null) ? user.getJoinDate() : "" %>" class="form-control" name="joinDate">
                </fieldset>

                <button type="submit" class="btn btn-success">Save</button>
            </form>


        </div>

    </div>

</div>

</body>

</html>