<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default">
    <div class="container-fluid col-md-12">

        <!-- Brand and toggle get grouped for better mobile display -->
        <!-- Logo -->
        <div class="navbar-header col-md-2">
            <a class="navbar-brand" href="/ads"><i class="fa fa-desktop fa-2x" aria-hidden="true"></i></a>
            <a href="#">Home</a>
            <a href="#">Ads</a>
        </div>

        <!-- Search Bar-->
        <div class="col-md-4 col-md-offset-3">
            <input class="searchBar form-control" type="text">
        </div>

        <!-- Search icon -->
        <i class="fa fa-search fa-2x col-md-2 navbar-brand" aria-hidden="true"></i>

        <!-- Dependent data -->
            <c:choose>
                <c:when test="${sessionScope.user == null}">
                    <div class="col-md-1">
                        <a href="/register">Create Account</a>
                    </div>
                    <div class="col-md-1">
                        <a href="/login">Login</a>
                    </div>
                </c:when>
                <c:otherwise>
                    <a href="/userEdit">Edit your account</a>
                    <a href="/userDelete">Delete your account</a>
                    <a href="/ads/create">Post ad</a>
                    <a href="/logout">Logout</a>
                </c:otherwise>
            </c:choose>
    </div>  <!-- /.navbar-collapse --><!-- /.container-fluid -->
</nav>





<%--
<ul class="nav navbar-nav navbar-right col-md-2">
            <ul class="nav navbar-nav navbar-right">
            <c:choose>
                <c:when test="${sessionScope.user == null}">
                    <li><a href="/register">Create Account</a></li>
                    <li><a href="/login">Login</a></li>
                </c:when>
                <c:otherwise>
                    <li><a href="/userEdit">Edit your account</a></li>
                    <li><a href="/userDelete">Delete your account</a></li>
                    <li><a href="/ads/create">Post ad</a></li>
                    <li><a href="/logout">Logout</a></li>
                </c:otherwise>
            </c:choose>
        </ul>
        </ul>



--%>
