<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Favorite Videos</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <!-- Favicon Icon -->
    <link rel="icon" type="image/png" href="<%= request.getContextPath() %>/main/img/netflix-icon.png">

    <!-- Bootstrap core CSS-->
    <link href="<%= request.getContextPath() %>/main/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="<%= request.getContextPath() %>/main/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
          type="text/css">

    <!-- Custom styles for this template-->
    <link href="<%= request.getContextPath() %>/main/css/osahan.css" rel="stylesheet">

</head>
<body>
<div class="container mt-5">
    <h3>Your Favorite Videos</h3>
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <!-- Example Card for Each Favorite Video -->
        <div class="col">
            <div class="card">
                <img src="https://via.placeholder.com/320x180" class="card-img-top" alt="Video Thumbnail">
                <div class="card-body">
                    <h5 class="card-title">Video Title 1</h5>
                    <p class="card-text">Description of the video goes here.</p>
                    <button class="btn btn-danger btn-sm">Dislike</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- jQuery and Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>

</body>
</html>
