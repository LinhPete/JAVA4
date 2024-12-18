<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Share Video</title>
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
<div class="container mt-5 col-4 align-content-center">
    <h3>Share Video</h3>
    <form action="share" method="post">
        <div class="mb-3">
            <label for="email" class="form-label">Enter Email to Share</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="example@example.com" required>
        </div>
        <button type="submit" class="btn btn-primary">Share</button>
    </form>
</div>
<!-- jQuery and Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>
