<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <!-- Favicon Icon -->
    <link rel="icon" type="image/png" href="<%= request.getContextPath() %>/main/img/netflix-icon.png">

    <!-- Bootstrap core CSS-->
    <link href="<%= request.getContextPath() %>/main/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="<%= request.getContextPath() %>/main/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="<%= request.getContextPath() %>/main/css/osahan.css" rel="stylesheet">

    <!-- Owl Carousel -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/main/vendor/owl-carousel/owl.carousel.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/main/vendor/owl-carousel/owl.theme.css">

    <style>
        .pagination {
            position: fixed;
            bottom: 20px;
            left: 50%;
            transform: translateX(-50%);
            z-index: 1000;
            background-color: white; /* Màu nền nếu cần */
            padding: 10px;
            box-shadow: 0px 2px 8px rgba(0, 0, 0, 0.1); /* Hiệu ứng đổ bóng */
            border-radius: 8px; /* Góc bo tròn */
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand navbar-light bg-netflix-black static-top osahan-nav sticky-top">
    &nbsp;&nbsp;
    <a class="navbar-brand mr-1" href="index.html"><img class="img-fluid" alt="" src="<%= request.getContextPath() %>/main/img/netflix-icon.png"
                                                        width="50px"></a>
    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-5 my-2 my-md-0 osahan-navbar-search">
        <div class="input-group">
            <input type="text" class="form-control" placeholder="Search for...">
            <div class="input-group-append">
                <button class="btn btn-light" type="button">
                    <i class="fas fa-search"></i>
                </button>
            </div>
        </div>
    </form>
    <ul class="navbar-nav ml-auto ml-md-0 osahan-right-navbar">
        <li class="nav-item mx-1">
            <a class="nav-link" href="upload.html">
                <i class="fas fa-plus-circle fa-fw"></i>
                Upload Video
            </a>
        </li>
        <li class="nav-item dropdown no-arrow osahan-right-navbar-user">
            <a class="nav-link dropdown-toggle user-dropdown-link" href="#" id="userDropdown" role="button"
               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <img alt="Avatar" src="<%= request.getContextPath() %>/main/img/user.png">
                Osahan
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="account.html"><i class="fas fa-fw fa-user-circle"></i> &nbsp; My
                    Account</a>
                <a class="dropdown-item" href="#"><i class="fas fa-fw fa-video"></i> &nbsp; Liked video</a>
                <a class="dropdown-item" href="settings.html"><i class="fas fa-fw fa-cog"></i> &nbsp; Settings</a>
                <a class="dropdown-item" href="change-password.html"><i class="fas fa-fw fa-cog"></i> &nbsp; Change
                    password</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal"><i
                        class="fas fa-fw fa-sign-out-alt"></i> &nbsp; Logout</a>
            </div>
        </li>
    </ul>
</nav>
<div id="wrapper">
    <!-- Sidebar -->
    <ul class="sidebar navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="index.html">
                <i class="fas fa-fw fa-home"></i>
                <span>Home</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="single-channel.html">
                <i class="fas fa-fw fa-user-alt"></i>
                <span>Admin</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="video-page.html">
                <i class="fas fa-fw fa-video"></i>
                <span>Video Page</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="upload-video.html">
                <i class="fas fa-fw fa-cloud-upload-alt"></i>
                <span>Upload Video</span>
            </a>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
               aria-expanded="false">
                <i class="fas fa-fw fa-folder"></i>
                <span>Pages</span>
            </a>
            <div class="dropdown-menu">
                <h6 class="dropdown-header">Login Screens:</h6>
                <a class="dropdown-item" href="login.html">Login</a>
                <a class="dropdown-item" href="register.html">Register</a>
                <a class="dropdown-item" href="forgot-password.html">Forgot Password</a>
                <div class="dropdown-divider"></div>
                <h6 class="dropdown-header">Other Pages:</h6>
                <a class="dropdown-item" href="404.html">404 Page</a>
                <a class="dropdown-item" href="blank.html">Blank Page</a>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="history-page.html">
                <i class="fas fa-fw fa-history"></i>
                <span>History Page</span>
            </a>
        </li>
    </ul>
    <div id="content-wrapper">
        <div class="container-fluid pb-0">
            <div class="top-mobile-search">
                <div class="row">
                    <div class="col-md-12">
                        <form class="mobile-search">
                            <div class="input-group">
                                <input type="text" placeholder="Search for..." class="form-control">
                                <div class="input-group-append">
                                    <button type="button" class="btn btn-dark"><i class="fas fa-search"></i></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="video-block section-padding">
                <div class="row">
                    <div class="col-md-12">
                        <div class="main-title">
                            <div class="btn-group float-right right-action">
                                <a href="#" class="right-action-link text-gray" data-toggle="dropdown"
                                   aria-haspopup="true"
                                   aria-expanded="false">
                                    Sort by <i class="fa fa-caret-down" aria-hidden="true"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="#"><i class="fas fa-fw fa-star"></i> &nbsp; Top Rated</a>
                                    <a class="dropdown-item" href="#"><i class="fas fa-fw fa-signal"></i> &nbsp; Viewed</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 mb-3">
                        <div class="video-card">
                            <div class="video-card-image">
                                <a class="play-icon" href="#"><i class="fas fa-play-circle"></i></a>
                                <a href="#"><img class="img-fluid" src="<%= request.getContextPath() %>/main/img/v1.png" alt=""></a>
                                <div class="time">3:50</div>
                            </div>
                            <div class="video-card-body">
                                <div class="video-title">
                                    <a href="#">There are many variations of passages of Lorem</a>
                                </div>
                                <div class="video-page text-success">
                                    Education <a title="" data-placement="top" data-toggle="tooltip" href="#"
                                                 data-original-title="Verified"><i
                                        class="fas fa-check-circle text-success"></i></a>
                                </div>
                                <div class="video-view">
                                    1.8M views &nbsp;<i class="fas fa-calendar-alt"></i> 11 Months ago
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 mb-3">
                        <div class="video-card">
                            <div class="video-card-image">
                                <a class="play-icon" href="#"><i class="fas fa-play-circle"></i></a>
                                <a href="#"><img class="img-fluid" src="<%= request.getContextPath() %>/main/img/v2.png" alt=""></a>
                            </div>
                            <div class="video-card-body">
                                <div class="video-title">
                                    <a href="#">There are many variations of passages of Lorem</a>
                                </div>
                                <button class="btn-success">Like</button>
                                <button class="btn-primary">Share</button>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-3 col-sm-6 mb-3">
                        <div class="video-card">
                            <div class="video-card-image">
                                <a class="play-icon" href="#"><i class="fas fa-play-circle"></i></a>
                                <a href="#"><img class="img-fluid" src="<%= request.getContextPath() %>/main/img/v2.png" alt=""></a>
                            </div>
                            <div class="video-card-body">
                                <div class="video-title">
                                    <a href="#">There are many variations of passages of Lorem</a>
                                </div>
                                <button class="btn-success">Like</button>
                                <button class="btn-primary">Share</button>
                            </div>
                        </div>
                    </div> <div class="col-xl-3 col-sm-6 mb-3">
                    <div class="video-card">
                        <div class="video-card-image">
                            <a class="play-icon" href="#"><i class="fas fa-play-circle"></i></a>
                            <a href="#"><img class="img-fluid" src="<%= request.getContextPath() %>/main/img/v2.png" alt=""></a>
                        </div>
                        <div class="video-card-body">
                            <div class="video-title">
                                <a href="#">There are many variations of passages of Lorem</a>
                            </div>
                            <button class="btn-success">Like</button>
                            <button class="btn-primary">Share</button>
                        </div>
                    </div>
                </div> <div class="col-xl-3 col-sm-6 mb-3">
                    <div class="video-card">
                        <div class="video-card-image">
                            <a class="play-icon" href="#"><i class="fas fa-play-circle"></i></a>
                            <a href="#"><img class="img-fluid" src="<%= request.getContextPath() %>/main/img/v2.png" alt=""></a>
                        </div>
                        <div class="video-card-body">
                            <div class="video-title">
                                <a href="#">There are many variations of passages of Lorem</a>
                            </div>
                            <button class="btn-success">Like</button>
                            <button class="btn-primary">Share</button>
                        </div>
                    </div>
                </div> <div class="col-xl-3 col-sm-6 mb-3">
                    <div class="video-card">
                        <div class="video-card-image">
                            <a class="play-icon" href="#"><i class="fas fa-play-circle"></i></a>
                            <a href="#"><img class="img-fluid" src="<%= request.getContextPath() %>/main/img/v2.png" alt=""></a>
                        </div>
                        <div class="video-card-body">
                            <div class="video-title">
                                <a href="#">There are many variations of passages of Lorem</a>
                            </div>
                            <button class="btn-success">Like</button>
                            <button class="btn-primary">Share</button>
                        </div>
                    </div>
                </div> <div class="col-xl-3 col-sm-6 mb-3">
                    <div class="video-card">
                        <div class="video-card-image">
                            <a class="play-icon" href="#"><i class="fas fa-play-circle"></i></a>
                            <a href="#"><img class="img-fluid" src="<%= request.getContextPath() %>/main/img/v2.png" alt=""></a>
                        </div>
                        <div class="video-card-body">
                            <div class="video-title">
                                <a href="#">There are many variations of passages of Lorem</a>
                            </div>
                            <button class="btn-success">Like</button>
                            <button class="btn-primary">Share</button>
                        </div>
                    </div>
                </div> <div class="col-xl-3 col-sm-6 mb-3">
                    <div class="video-card">
                        <div class="video-card-image">
                            <a class="play-icon" href="#"><i class="fas fa-play-circle"></i></a>
                            <a href="#"><img class="img-fluid" src="<%= request.getContextPath() %>/main/img/v2.png" alt=""></a>
                        </div>
                        <div class="video-card-body">
                            <div class="video-title">
                                <a href="#">There are many variations of passages of Lorem</a>
                            </div>
                            <button class="btn-success">Like</button>
                            <button class="btn-primary">Share</button>
                        </div>
                    </div>
                </div>

                </div>
            </div>
        </div>

    </div>
    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center pagination-sm mb-0">
            <li class="page-item disabled">
                <a class="page-link" href="#" tabindex="-1">Previous</a>
            </li>
            <li class="page-item active"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item">
                <a class="page-link" href="#">Next</a>
            </li>
        </ul>
    </nav>
</div>
<!-- /#wrapper -->
<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>
<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="login.html">Logout</a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="<%= request.getContextPath() %>/main/vendor/jquery/jquery.min.js"></script>
<script src="<%= request.getContextPath() %>/main/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="<%= request.getContextPath() %>/main/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Owl Carousel -->
<script src="<%= request.getContextPath() %>/main/vendor/owl-carousel/owl.carousel.js"></script>

<!-- Custom scripts for all pages-->
<script src="<%= request.getContextPath() %>/main/js/custom.js"></script>
</body>

</html>
