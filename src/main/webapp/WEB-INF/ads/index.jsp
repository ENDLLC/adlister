<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

</head>
<body>
<div class="container col-md-10 col-md-offset-1">
    <h1 class="text-center">Ads</h1>
    <c:forEach var="ad" items="${ads}">
        <c:set var="shortDesc" value="${fn:substring(ad.description,0 ,10)}"/>
        <div class="col-md-2 container-fluid adDisplay">
            <h4>${ad.getTitle()}</h4>
            <p>${shortDesc}...</p>
            <p><a href="/ads/details?id=${ad.getId()}">Details</a></p>
            <p>Contact seller at: ${AdsDao.getEmail(ad)}</p>
        </div>
    </c:forEach>
</div>
<jsp:include page="../partials/footer.jsp"/>
<jsp:include page="../partials/javascript.jsp"/>
</body>
</html>
