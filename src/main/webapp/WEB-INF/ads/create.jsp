<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
</head>
<body>
    <h2 class="text-center">Create a new ad</h2>
    <div class="container col-md-10 col-md-offset-1">
        <div class="col-md-6 col-md-offset-3">
            <form action="/ads/create" method="post">
                <div class="form-group">
                    <label for="title">Title</label>
                    <input id="title" name="title" class="form-control" type="text">
                </div>
                <div class="form-group">
                    <label for="description">Description</label>
                    <textarea id="description" name="description" class="form-control" type="text"></textarea>
                </div>
                <div class="form-group btn-group">
                    <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                        Categories
                        <span class="caret"></span>
                    </a>
                    <div class="dropdown-menu">
                    <c:forEach var="category" items="${sessionScope.categories}">
                        <input type="checkbox" name="category[]" id="${category}" value="${category}">
                        <label for="${category}"> <c:out value="${category}"/> </label>
                        <br>
                    </c:forEach>
                    </div>
                </div>
                <div>
                    <a class="btn btn-info">Import image</a>
                </div>
                <input type="submit" class="btn btn-primary center-block pushDown">
            </form>
        </div>
    </div>
    <jsp:include page="../partials/footer.jsp"/>
    <jsp:include page="../partials/javascript.jsp"/>
</body>
</html>
