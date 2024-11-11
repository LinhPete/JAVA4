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
    <link href="<%= request.getContextPath() %>/main/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
          type="text/css">

    <!-- Custom styles for this template-->
    <link href="<%= request.getContextPath() %>/main/css/osahan.css" rel="stylesheet">

</head>
<body>

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
                    <a href="#"><img class="img-fluid" src="<%= request.getContextPath() %>/main/img/v2.png"
                                     alt=""></a>
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
                    <a href="#"><img class="img-fluid" src="<%= request.getContextPath() %>/main/img/v2.png"
                                     alt=""></a>
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
                    <a href="#"><img class="img-fluid" src="<%= request.getContextPath() %>/main/img/v2.png"
                                     alt=""></a>
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
                    <a href="#"><img class="img-fluid" src="<%= request.getContextPath() %>/main/img/v2.png"
                                     alt=""></a>
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
                    <a href="#"><img class="img-fluid" src="<%= request.getContextPath() %>/main/img/v2.png"
                                     alt=""></a>
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
                    <a href="#"><img class="img-fluid" src="<%= request.getContextPath() %>/main/img/v2.png"
                                     alt=""></a>
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
                    <a href="#"><img class="img-fluid" src="<%= request.getContextPath() %>/main/img/v2.png"
                                     alt=""></a>
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

    <nav aria-label="Page navigation">
        <ul class="pagination justify-content-center pagination-sm mb-0">
            <li class="page-item disabled"><a class="page-link" href="#" tabindex="-1">Previous</a></li>
            <li class="page-item active"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">Next</a></li>
        </ul>
    </nav>
</div>
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

<!-- jQuery and Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>

</body>

</html>
