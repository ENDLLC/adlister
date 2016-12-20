<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
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
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
