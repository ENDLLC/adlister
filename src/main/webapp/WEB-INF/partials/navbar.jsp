<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand logo" href="/index.jsp"><i class="fa fa-desktop fa-2x" aria-hidden="true"></i></a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="/index.jsp">Home</a></li>
                <li><a href="/ads">Ads</a></li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <c:choose>
                    <c:when test="${sessionScope.user == null}">
                        <li><a href="/register">Create Account</a></li>
                        <li><a href="/login">Login</a></li>
                    </c:when>
                    <c:otherwise>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">${sessionScope.user.username}<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="/userEdit">Settings</a></li>
                            <li class="divider"></li>
                            <li><a href="/ads/create">Post ad</a></li>
                            <li class="divider"></li>
                            <li><a href="/logout">Logout</a></li>
                        </ul>
                    </li>
                    </c:otherwise>
                </c:choose>
            </ul>


            <form action="/search" method="get" class="navbar-form navbar-right" role="search">
                <div class="form-group">
                    <input name="search" id="search" class="searchBar form-control" type="text" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>


        </div>
    </div>
</nav>