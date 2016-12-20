<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <jsp:include page="/WEB-INF/partials/head.jsp">
            <jsp:param name="title" value="Please Log In" />
        </jsp:include>
    </head>
    <body>
        <jsp:include page="/WEB-INF/partials/navbar.jsp" />
        <div class="container">
            <div class="col-md-6 col-md-offset-3">
                <div class="col-md-12 container-fluid">
                    <form action="/login" method="POST" class="form-horizontal">
                        <legend class="text-center">Sign In</legend>
                        <div class="form-group">
                            <div class="col-lg-10 col-md-offset-1">
                                <input type="text" class="form-control" id="username" name="username" placeholder="Email">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-10 col-md-offset-1">
                                <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                            </div>
                        </div>
                        <div class="form-group col-md-12">
                            <div class="col-md-2 col-md-offset-5">
                                <input type="submit" class="btn btn-primary" value="Sign-in">
                            </div>
                        </div>


                        <div class="row col-md-12">
                            <p class="col-md-4 col-md-offset-2">Need an account?</p>
                            <div class="form-group col-md-6">
                                <div class="col-lg-10 col-lg-offset-0">
                                    <a href="/register" class="btn btn-info">Sign-up</a>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
