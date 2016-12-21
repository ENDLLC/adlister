<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
</head>
<body>
    <div class="container">
        <h1>Welcome to the Adlister!</h1>
    </div>
    <div class="flex-container">
        <div class="photo text-center">
            <img class="pic" src="img/edwintheduck1.jpeg"/>
            <img class="pic" src="img/starwarswatch.jpeg"/>
            <img class="pic" src="img/VR.jpeg"/>
        </div>
    </div>
    <jsp:include page="/WEB-INF/partials/footer.jsp"/>
    <jsp:include page="/WEB-INF/partials/javascript.jsp"/>
</body>
</html>
