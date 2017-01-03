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
    <div class="jumbotron text-center">
        <h1>Welcome to the TECHIElister!</h1>
        <p>A techie's dream to sell, buy, and trade all things TECHIE!</p>
    </div>
        <div class="column-header text-center">
            <h2>Featured Items</h2>
        </div>
    <div id="myCarousel" class="carousel slider" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner text-center" role="listbox">
            <div class="item active">
                <img src="/img/edwintheduck.jpeg" alt="Edwin the Duck">
                <div class="carousel-caption">
              </div>
            </div>

            <div class="item">
                <img src="/img/starwarswatch.jpeg" alt="Star Wars Watch">
                <div class="carousel-caption">
                </div>
            </div>

            <div class="item">
                <img src="/img/VR.jpeg" alt="VR">
                <div class="carousel-caption">
               </div>
            </div>

            <div class="item">
                <img src="/img/raspberrypi.jpeg" alt="Raspberry Pi">
                <div class="carousel-caption">
                </div>
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <jsp:include page="/WEB-INF/partials/footer.jsp"/>
    <jsp:include page="/WEB-INF/partials/javascript.jsp"/>
</body>
</html>
