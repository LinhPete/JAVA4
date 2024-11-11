<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Video</title>
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
<!-- Video Section -->
<div class="row">
    <div class="col-md-8">
        <div class="single-video-left">
            <div class="single-video">
                <iframe width="100%" height="315"
                        src="https://www.youtube-nocookie.com/embed/8LWZSGNjuF0?rel=0&amp;controls=0&amp;showinfo=0"
                        frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
            </div>
            <div class="single-video-title box mb-3">
                <h2><a href="#">Iframe video</a></h2>
                <p class="mb-0"><i class="fas fa-eye"></i> (param) views</p>
                <button class="btn-success">Like</button>
                <button class="btn-primary">Share</button>
            </div>
            <div class="single-video-info-content box mb-3">
                <h6>Description</h6>
                <p>It is a long established fact that a reader will be distracted by the readable content of
                    a page when looking at its layout. The point of using Lorem Ipsum is that it has a
                    more-or-less normal distribution of letters, as opposed to using 'Content here, content
                    here', making it look like readable English. Many desktop publishing packages and web page
                    editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum'
                    will uncover many web sites still in their infancy. Various versions have evolved
                    overVarious versions have evolved over the years, sometimes </p>
            </div>
        </div>
    </div>
    <!-- Related Videos -->
    <div class="col-md-4">
        <div class="single-video-right">
            <div class="row">
                <div class="col-md-12">
                    <div class="main-title">
                        <div class="btn-group float-right right-action">
                            <a href="#" class="right-action-link text-gray" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">
                                Sort by <i class="fa fa-caret-down" aria-hidden="true"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="#"><i class="fas fa-fw fa-star"></i> &nbsp; Top
                                    Rated</a>
                                <a class="dropdown-item" href="#"><i class="fas fa-fw fa-signal"></i> &nbsp;
                                    Viewed</a>
                                <a class="dropdown-item" href="#"><i class="fas fa-fw fa-times-circle"></i>
                                    &nbsp; Close</a>
                            </div>
                        </div>
                        <h6>Up Next</h6>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="video-card video-card-list">
                        <div class="video-card-image">
                            <a class="play-icon" href="#"><i class="fas fa-play-circle"></i></a>
                            <a href="#"><img class="img-fluid" src="img/v1.png" alt=""></a>
                            <div class="time">3:50</div>
                        </div>
                        <div class="video-card-body">
                            <div class="btn-group float-right right-action">
                                <a href="#" class="right-action-link text-gray" data-toggle="dropdown"
                                   aria-haspopup="true" aria-expanded="false">
                                    <i class="fa fa-ellipsis-v" aria-hidden="true"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="#"><i class="fas fa-fw fa-star"></i> &nbsp; Top
                                        Rated</a>
                                    <a class="dropdown-item" href="#"><i class="fas fa-fw fa-signal"></i> &nbsp;
                                        Viewed</a>
                                    <a class="dropdown-item" href="#"><i class="fas fa-fw fa-times-circle"></i>
                                        &nbsp; Close</a>
                                </div>
                            </div>
                            <div class="video-title">
                                <a href="#">Here are many variati of passages of Lorem</a>
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

                    <div class="video-card video-card-list">
                        <div class="video-card-image">
                            <a class="play-icon" href="#"><i class="fas fa-play-circle"></i></a>
                            <a href="#"><img class="img-fluid" src="img/v2.png" alt=""></a>
                        </div>
                        <div class="video-card-body">
                            <div class="btn-group float-right right-action">
                                <a href="#" class="right-action-link text-gray" data-toggle="dropdown"
                                   aria-haspopup="true" aria-expanded="false">
                                    <i class="fa fa-ellipsis-v" aria-hidden="true"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="#"><i class="fas fa-fw fa-star"></i> &nbsp; Top
                                        Rated</a>
                                    <a class="dropdown-item" href="#"><i class="fas fa-fw fa-signal"></i> &nbsp;
                                        Viewed</a>
                                    <a class="dropdown-item" href="#"><i class="fas fa-fw fa-times-circle"></i>
                                        &nbsp; Close</a>
                                </div>
                            </div>
                            <div class="video-title">
                                <a href="#">Video title is here</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

<!-- Comments Section -->
<div class="mt-4">
    <h5>Comments</h5>
    <form class="mb-3">
        <div class="mb-3">
            <textarea class="form-control" placeholder="Add a comment..." rows="3"></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>

    <!-- List of Comments -->
    <div class="list-group">
        <div class="list-group-item">
            <strong>User 1</strong>
            <p>This is a comment.</p>
        </div>
        <div class="list-group-item">
            <strong>User 2</strong>
            <p>Another comment here.</p>
        </div>
    </div>
</div>

<!-- jQuery and Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>

</body>
</html>
