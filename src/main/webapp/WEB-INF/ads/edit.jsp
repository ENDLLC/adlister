<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Duke
  Date: 12/20/16
  Time: 9:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Ad" />
    </jsp:include>
    <jsp:include page="../partials/navbar.jsp" />
</head>
<body>
    <h1 class="text-center">Edit ad</h1>
    <div class="container col-md-10 col-md-offset-1">
        <div class="col-md-6 col-md-offset-3">
            <form action="/ads/edit" method="post">
                <div class="form-group">
                    <label for="title">Title</label>
                    <input id="title" name="title" class="form-control" type="text" value="<c:out value="${ad.getTitle()}"/>">
                </div>
                <div class="form-group">
                    <label for="description">Description</label>
                    <textarea id="description" name="description" class="form-control" type="text"> <c:out value="${ad.getDescription()}"/> </textarea>
                </div>


                <div class="form-group btn-group">
                    <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                        Categories
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <c:forEach var="category"
                                   items="${sessionScope.categories.getAdCategories(sessionScope.ad)}">
                            <label href="/category?category=${category}"> <c:out value="${category}"/> </label>
                            <input type="checkbox" name="category[]" id="${category}" value="${category}">
                        </c:forEach>
                    </ul>
                </div>


                <div>
                    <a class="btn btn-info">Change image</a>
                </div>
                <input type="submit" class="btn btn-primary center-block pushDown">
            </form>
        </div>
    </div>
    <jsp:include page="../partials/footer.jsp"/>
    <jsp:include page="../partials/javascript.jsp"/>
</body>
</html>
