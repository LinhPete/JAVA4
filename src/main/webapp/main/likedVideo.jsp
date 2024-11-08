<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Favorite Videos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
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
        <!-- Repeat for other favorite videos -->
    </div>
</div>
</body>
</html>
