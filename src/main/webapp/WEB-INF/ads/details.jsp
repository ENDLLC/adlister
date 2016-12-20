<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Ad details" />
    </jsp:include>
</head>
<body>=
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="col-md-10 col-md-offset-1 details">
    <div class="col-md-6 pushRight">
        <h3>${sessionScope.ad.getTitle()}</h3>
        <p>${sessionScope.ad.getDescription()}</p>
        <c:if test="${sessionScope.user.getId() == sessionScope.ad.getUserId()}">
            <a href="/ads/edit?id=${ad.getId()}" class="btn btn-primary">Edit ad</a>
            <a href="/delete?id=${ad.getId()}" class="btn btn-danger">Delete ad</a>
        </c:if>
    </div>

    <div class="box col-md-6 pushLeft">
        <h5>Picture of Ad</h5>
    </div>

</div>
<jsp:include page="/WEB-INF/partials/footer.jsp" />
</body>
</html>
