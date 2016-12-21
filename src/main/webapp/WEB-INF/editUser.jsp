<%--
  Created by IntelliJ IDEA.
  User: Duke
  Date: 12/20/16
  Time: 10:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Update your account!" />
    </jsp:include>
    <jsp:include page="partials/navbar.jsp" />
</head>
<body>
<h3 class="text-center">Settings</h3>

<div class="col-md-4 col-md-offset-4">
    <ul class="nav nav-tabs">
        <li class="active"><a href="#usernameTab" data-toggle="tab" aria-expanded="false">Username</a></li>
        <li class=""><a href="#passwordTab" data-toggle="tab" aria-expanded="true">Password</a></li>
        <li class=""><a href="#emailTab" data-toggle="tab" aria-expanded="true">Email</a></li>
        <li class=""><a href="#userDeleteTab" data-toggle="tab" aria-expanded="true">Delete Account</a></li>
    </ul>
    <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade active in" id="usernameTab">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text" value="${user.getUsername()}">
            </div>
        </div>
        <div class="tab-pane fade" id="userDeleteTab">
            <div class="userDeleteButton">
                <a href="/userDelete" class="btn btn-danger">Delete Account</a>
            </div>
        </div>
    </div>
</div>


<%--<div class="container col-md-10 col-md-offset-1">
    <div class="col-md-6">
        <h1>Update Information</h1>
        <form action="/userEdit" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text" value="${user.getUsername()}">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input id="email" name="email" class="form-control" type="text" value="${user.getEmail()}">
            </div>
            <div class="form-group">
                <label for="password">New Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm Password</label>
                <input id="confirm_password" name="confirm_password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-primary" value="Confirm Changes">
        </form>
    </div>
    <div class="col-md-6">
        <div class="col-md-8 col-md-offset-2">
            <h3>Other Settings</h3>
            <a href="/userDelete" class="btn btn-danger">Delete Account</a>
        </div>
    </div>
</div>--%>
<jsp:include page="partials/footer.jsp"/>
<jsp:include page="partials/javascript.jsp"/>
</body>
</html>


