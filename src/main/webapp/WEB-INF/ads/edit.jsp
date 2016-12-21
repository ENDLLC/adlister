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
<div class="container">
    <h1>Edit your ad</h1>
    <form action="/ads/edit" method="post">
        <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text" value="${ad.getTitle()}">
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea id="description" name="description" class="form-control"
                      type="text">${ad.getDescription()}</textarea>
        </div>
        <input type="submit" class="btn btn-block btn-primary">
    </form>
</div>
<jsp:include page="../partials/footer.jsp"/>
<jsp:include page="../partials/javascript.jsp"/>
</body>
</html>
