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
<h1 class="text-center">Ads</h1>
<div class="col-md-10 col-md-offset-2 contentContainerAdsIndex">
<div class="container categoryDropdownAdsIndex">
    <ul class="nav nav-tabs">
        <li class="active"><a href="/ads">All</a></li>
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                Categories <span class="caret"></span>
            </a>
            <ul class="dropdown-menu">
                <c:forEach var="category" items="${sessionScope.categories}">
                    <li><a href="/category?category=${category}">${category}</a></li>
                    <li class="divider"></li>
                </c:forEach>
            </ul>
        </li>
    </ul>
</div>
</div>
<div class="container-fluid">
    <div class="row">
        <span class="emptySpace"></span>
    </div>
</div>
<div class="container col-md-10 col-md-offset-1 adsContainer">
    <c:forEach var="ad" items="${ads}">
        <div class="col-md-2 container-fluid adDisplay">
            <h4> <c:out value="${fn:substring(ad.title,0 , 5)}"/> ...</h4>
            <p> <c:out value="${fn:substring(ad.description,0 ,10)}"/> ...</p>
            <p><a href="/ads/details?id=${ad.getId()}">Details</a></p>
            <p>Contact seller at: <c:out value="${AdsDao.getEmail(ad)}"/> </p>
        </div>
    </c:forEach>
</div>
<jsp:include page="../partials/footer.jsp"/>
<jsp:include page="../partials/javascript.jsp"/>
</body>
</html>
