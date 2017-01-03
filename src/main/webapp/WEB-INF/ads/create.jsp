<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <script type="text/javascript">
        filepicker.setKey("AlZM2UoY6Ryekp3hoUqpgz");
        filepicker.pickAndStore(picker_options, store_options, onSuccess(Blob){}, onError(FPError){}, onProgress(FPProgress){});
    </script>
</head>
<body>
    <div class="container col-md-10 col-md-offset-1">
        <div class="col-md-6">
            <h1 class="text-center">Create a new Ad</h1>
            <form action="/ads/create" method="post">
                <div class="form-group">
                    <label for="title">Title</label>
                    <input id="title" name="title" class="form-control" type="text">
                </div>
                <div class="form-group">
                    <label for="description">Description</label>
                    <textarea id="description" name="description" class="form-control" type="text"></textarea>
                </div>
<<<<<<< Updated upstream
                <a type="submit" class="btn btn-primary">Submit</a>
=======
                <input type="filepicker-dragdrop" data-fp-multiple="true"/>
                <input type="hidden" name="filestackurl" id="filestackurl">
                <input type="submit" class="btn btn-primary center-block pushDown">
                filepicker.pickAndStore(
                {
                mimetype:"image/*",
                multiple: true
                },
                {
                location:"S3"
                },
                function(Blobs){
                console.log(JSON.stringify(Blobs));
                },
                function(error){
                //  console.log(JSON.stringify(error)); - print errors to console
                },
                function(progress){
                console.log(JSON.stringify(progress));
                }
                );
>>>>>>> Stashed changes
            </form>
        </div>
        <div class="col-md-offset-6">
            <div class="box col-md-4  col-md-offset-4 pushDown">
                <h4>Picture of Ad</h4>
            </div>
        </div>

    </div>
    <jsp:include page="../partials/footer.jsp"/>
    <jsp:include page="../partials/javascript.jsp"/>
</body>
</html>
