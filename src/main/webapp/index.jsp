<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="ENDlister" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="jumbotron text-center">
        <h1>Welcome To TECHIElister!</h1>
        <p>A techie's dream to sell, buy, and trade all things Techie!</p>
        <p><a class="btn btn-primary btn-lg">Learn more</a></p>
    </div>
    <div class="flex-container">
        <div class="photo text-center">
            <img class="pic" src="img/edwintheduck1.jpeg"/>
            <img class="pic" src="img/starwarswatch.jpeg"/>
            <img class="pic" src="img/VR.jpeg"/>
        </div>
    </div>
</body>
</html>
