<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
    <jsp:include page="partials/navbar.jsp" />
</head>
<body>
<form action="/register" method="post" class="form-horizontal col-md-6 col-md-offset-3">
    <fieldset>
        <legend class="text-center">Register</legend>
        <div class="form-group">
            <label for="username" class="col-lg-2 control-label">Username</label>
            <div class="col-lg-10">
                <input type="text" class="form-control" id="username" name="username" placeholder="Username">
            </div>
        </div>
        <div class="form-group">
            <label for="email" class="col-lg-2 control-label">Email</label>
            <div class="col-lg-10">
                <input type="email" class="form-control" id="email" name="email" placeholder="Password">
            </div>
        </div>
        <div class="form-group">
            <label for="password" class="col-lg-2 control-label">Password</label>
            <div class="col-lg-10">
                <input type="password" class="form-control" id="password" name="password" placeholder="Password">
            </div>
        </div>
        <div class="form-group">
            <label for="confirm_password" class="col-lg-2 control-label">Confirm Password</label>
            <div class="col-lg-10">
                <input type="password" class="form-control" id="confirm_password" name="confirm_password" placeholder="Confirm Password">
            </div>
        </div>
        <div class="form-group">
            <div class="col-lg-10 col-lg-offset-2">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </div>
    </fieldset>
</form>
    <jsp:include page="partials/footer.jsp"/>
    <jsp:include page="partials/javascript.jsp"/>
</body>
</html>




