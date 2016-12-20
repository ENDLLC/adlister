<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default col-md-12">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header col-md-2">
            <a class="navbar-brand" href="/ads"><i class="fa fa-desktop fa-2x" aria-hidden="true"></i></a>
        </div>
        <div class="col-md-4">
            <input class="searchBar form-control" type="text">
        </div>
        <i class="fa fa-search fa-2x col-md-2 navbar-brand" aria-hidden="true"></i>
        <ul class="nav navbar-nav navbar-right col-md-2">
            <c:choose>
                <c:when test="${sessionScope.user == null}">
                    <li><a href="/login">Login</a></li>
                </c:when>
                <c:otherwise>
                    <li><a href="/ads/create">Post ad</a></li>
                    <li><a href="/logout">Logout</a></li>
                </c:otherwise>
            </c:choose>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
