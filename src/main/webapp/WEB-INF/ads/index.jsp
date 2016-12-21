<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container col-md-10 col-md-offset-1">
    <h1 class="text-center">Ads</h1>

    <div class="col-md-12 container-fluid">
    <c:forEach var="ad" items="${ads}">
            <div class="box col-md-2">
            <h4>${ad.getTitle()}</h4>
            <p>${ad.getDescription()}</p>
            <p><a href="/ads/details?id=${ad.getId()}">Details</a></p>
            <p>Contact seller at: ${AdsDao.getEmail(ad)}</p>
            </div>
    </c:forEach>
    </div>
</div>

</body>
</html>
