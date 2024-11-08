<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <!-- Bootstrap JavaScript Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-primary">
    <div class="container">
        <a class="navbar-brand" href="#">MyTube</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="accountDropdown" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="https://via.placeholder.com/30" alt="Avatar" class="rounded-circle">
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="accountDropdown">
                        <li><a class="dropdown-item" href="#">Đăng nhập</a></li>
                        <li><a class="dropdown-item" href="#">Đăng ký</a></li>
                        <li><a class="dropdown-item" href="#">Đổi mật khau</a></li>

                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container mt-4">
    <h2 class="mb-4">Popular Videos</h2>

    <div class="row row-cols-1 row-cols-md-3 g-4">
        <div class="col">
            <div class="card">
                <img src="https://via.placeholder.com/320x180" class="card-img-top" alt="Video Thumbnail">
                <div class="card-body">
                    <h5 class="card-title">Video Title 1</h5>
                    <p class="card-text">Description of the video goes here.</p>
                    <button class="btn btn-primary btn-sm">Play</button>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card">
                <img src="https://via.placeholder.com/320x180" class="card-img-top" alt="Video Thumbnail">
                <div class="card-body">
                    <h5 class="card-title">Video Title 2</h5>
                    <p class="card-text">Another description.</p>
                    <button class="btn btn-primary btn-sm">Play</button>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card">
                <img src="https://via.placeholder.com/320x180" class="card-img-top" alt="Video Thumbnail">
                <div class="card-body">
                    <h5 class="card-title">Video Title 3</h5>
                    <p class="card-text">Yet another description.</p>
                    <button class="btn btn-primary btn-sm">Play</button>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
