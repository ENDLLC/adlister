<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
</head>
<body>
    <!-- Title -->
    <div class="container">
        <h1 class="title text-center">Welcome!</h1>
    </div>

    <div class="col-md-10 col-md-offset-1 container-fluid">
        <!-- Ads Display -->
        <div class="col-md-6 container-fluid">

            <!--My ads-->
            <h2 class="row col-md-12 title underscore text-center">My Ads</h2>
            <c:forEach var="ad" items="${ads}">
                <c:set var="shortDesc" value="${fn:substring(ad.description,0 ,10)}"/>
                <div class="col-md-3 adDisplay">
                    <h4>${ad.title}</h4>
                    <p>${shortDesc}...</p>
                    <p><a href="/ads/details?id=${ad.getId()}">Details</a></p>
                </div>
            </c:forEach>
        </div>


        <!-- Profile Details-->
        <div class="col-md-6 container-fluid">
            <h2 class="underscore text-right text-center">${sessionScope.user.username}</h2>


            <div class="col-md-12 box floatRight">
                <h6>Profile Picture ??</h6>
            </div>
            <div class="col-md-12">
                <a href="/userEdit" class="btn btn-success floatRight">Settings</a>
            </div>
        </div>
    </div>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />
    <jsp:include page="partials/javascript.jsp"/>
</body>
</html>
