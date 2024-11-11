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
<c:url var="root" value="/client"/>

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
    <a class="navbar-brand mr-1" href="${root}/home">
        <img class="img-fluid" alt="" src="<%= request.getContextPath() %>/main/img/netflix-icon.png" width="50px">
    </a>
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
        <li class="nav-item dropdown no-arrow osahan-right-navbar-user">
            <a class="nav-link dropdown-toggle user-dropdown-link" href="#" id="userDropdown" role="button"
               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <img alt="Avatar" src="<%= request.getContextPath() %>/main/img/user.png" width="30px" height="30px"
                     class="rounded-circle">
                <span class="ml-2">Osahan</span>
            </a>
            <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="${root}/account">
                    <i class="fas fa-fw fa-user-circle"></i> &nbsp; My Account
                </a>
                <a class="dropdown-item" href="${root}/changePass">
                    <i class="fas fa-fw fa-cog"></i> &nbsp; Change password
                </a>
                <a class="dropdown-item" href="${root}/forgetPass">
                    <i class="fas fa-fw fa-cog"></i> &nbsp; Forget password
                </a>
                <a class="dropdown-item" href="${root}/register">
                    <i class="fas fa-fw fa-cog"></i> &nbsp; Registration
                </a>
                <a class="dropdown-item" href="${root}/login">
                    <i class="fas fa-fw fa-cog"> </i> &nbsp; Login
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="${root}/login" data-toggle="modal" data-target="#logoutModal">
                    <i class="fas fa-fw fa-sign-out-alt"></i> &nbsp; Logout
                </a>
            </div>
        </li>
    </ul>
</nav>

<div class="container-fluid row p-0 m-0">
    <div class="nav nav-pills bg-dark flex-column col-md-2 p-0 sticky-top" style="max-height: 100vh;">
        <li class="nav-item">
            <a class="nav-link text-white rounded-0 ${view=='/main/detailVideo.jsp'?'active':''}"
               href="${root}/video">
                Videos
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link text-white rounded-0 ${view=='/main/likeVideo.jsp'?'active':''}"
               href="${root}/like">
                My Favorite
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link text-white rounded-0 ${view=='/main/shareVideo.jsp'?'active':''}"
               href="${root}/share">
                Share Video
            </a>
        </li>
    </div>

    <div class="col-md-10 p-0">
        <main class="pb-2" style="min-height: 93vh">
            <jsp:include page="${view}"/>
        </main>
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
                    <a class="btn btn-primary" href="${root}/login">Logout</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="<%= request.getContextPath() %>/main/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- jQuery and Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

</body>
</html>
