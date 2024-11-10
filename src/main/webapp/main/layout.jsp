<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 11/10/2024
  Time: 2:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
</head>
<body>
<nav class="navbar navbar-expand navbar-light bg-netflix-black static-top osahan-nav sticky-top">
    &nbsp;&nbsp;
    <a class="navbar-brand mr-1" href="<%= request.getContextPath() %>/client/home"><img class="img-fluid" alt=""
                                                        src="<%= request.getContextPath() %>/main/img/netflix-icon.png"
                                                        width="50px"></a>
    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-5 my-2 my-md-0">
        <div class="input-group">
            <input type="text" class="form-control" placeholder="Search for...">
                <button class="btn btn-light" type="button">
                    <i class="fas fa-search"></i>
                </button>
        </div>
    </form>

    <ul class="navbar-nav ml-auto ml-md-0 osahan-right-navbar">
        <li class="nav-item mx-1">
            <a class="nav-link" href="">
                <i class="fas fa-plus-circle fa-fw"></i>
                Upload Video
            </a>
        </li>
        <li class="nav-item dropdown no-arrow osahan-right-navbar-user">
            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
               data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <img alt="Avatar" src="<%= request.getContextPath() %>/main/img/user.png">
                Osahan
            </a>
            <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                <li><a class="dropdown-item" href="account.html"><i class="fas fa-fw fa-user-circle"></i> &nbsp; My
                    Account</a></li>
                <li><a class="dropdown-item" href="#"><i class="fas fa-fw fa-video"></i> &nbsp; Liked video</a></li>
                <li><a class="dropdown-item" href="settings.html"><i class="fas fa-fw fa-cog"></i> &nbsp; Settings</a></li>
                <li><a class="dropdown-item" href="change-password.html"><i class="fas fa-fw fa-cog"></i> &nbsp; Change
                    password</a></li>
                <li><hr class="dropdown-divider"></hr></li>
                <li><a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal"><i
                        class="fas fa-fw fa-sign-out-alt"></i> &nbsp; Logout</a></li>
            </ul>
        </li>
    </ul>
</nav>

<div class="container-fluid">
    <div class="row">
        <!-- Sidebar -->
        <div id="sidebar" class="col-md-3 col-lg-2 bg-light sidebar">
            <ul class="sidebar navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="<%= request.getContextPath() %>/client/home">
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
                    <a class="nav-link" href="<%= request.getContextPath() %>/client/video">
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
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                       aria-haspopup="true"
                       aria-expanded="false">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>Pages</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><h6 class="dropdown-header">Login Screens:</h6></li>
                        <li><a class="dropdown-item" href="login.html">Login</a></li>
                        <li><a class="dropdown-item" href="register.html">Register</a></li>
                        <li><a class="dropdown-item" href="forgot-password.html">Forgot Password</a></li>
                        <li><hr class="dropdown-divider"></hr></li>
                        <li><h6 class="dropdown-header">Other Pages:</h6></li>
                        <li><a class="dropdown-item" href="404.html">404 Page</a></li>
                        <li><a class="dropdown-item" href="blank.html">Blank Page</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="history-page.html">
                        <i class="fas fa-fw fa-history"></i>
                        <span>History Page</span>
                    </a>
                </li>
            </ul>
        </div>

        <div class="col-md-9 col-lg-10">
            <div class="content-wrapper p-4">
                <jsp:include page="${view}"/>
            </div>
        </div>
    </div>
</div>
</body>

<!-- Bootstrap core JavaScript-->
<script src="<%= request.getContextPath() %>/main/vendor/jquery/jquery.min.js"></script>
<script src="<%= request.getContextPath() %>/main/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
