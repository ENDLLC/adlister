<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Ad details" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
</head> 
<body>
    <div class="col-md-8 col-md-offset-2">
        <a href="/ads"><i class="fa fa-arrow-circle-o-left fa-3x" aria-hidden="true"></i></a>
    </div>
    <div class="col-md-6 col-md-offset-3">
        <div class="col-md-6">
            <h3 class="textOverflow"><c:out value="${sessionScope.ad.getTitle()}"/></h3>
            <p><c:out value="${sessionScope.ad.getDescription()}"/> </p>
            <p>Categories: <br>
                <c:forEach var="category"
                           items="${sessionScope.categories.getAdCategories(sessionScope.ad)}">
                    <a href="/category?category=${category}">${category}</a><br>
                </c:forEach>
            </p>
        </div>
        <div class="box col-md-6 pushLeft">
            <h5>Picture of Ad</h5>
        </div>
            <c:if test="${sessionScope.user.getId() == sessionScope.ad.getUserId()}">
                <div class="col-md-10 col-md-offset-3">
                    <a href="/ads/edit?id=<c:out value="${ad.getId()}"/>" class="btn btn-primary">Edit ad</a>
                    <a href="/delete?id=<c:out value="${ad.getId()}"/>" class="btn btn-danger">Delete ad</a>
                </div>
            </c:if>
    </div>
    <jsp:include page="../partials/footer.jsp"/>
    <jsp:include page="../partials/javascript.jsp"/>
</body>
</html>
