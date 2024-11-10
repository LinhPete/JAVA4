<%--
  Created by IntelliJ IDEA.
  User: ndhlt
  Date: 11/1/2024
  Time: 8:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url var="root" value="/admin"/>

<jsp:useBean id="view" scope="request" type="java.lang.String"/>
<html>
<head>
    <title>Quản trị</title>
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/2b390fd234.js" crossorigin="anonymous"></script>
</head>
<body>
<div class="container-fluid row p-0 m-0">
    <div class="nav nav-pills bg-dark flex-column col-md-2 p-0 sticky-top" style="max-height: 100vh;">
        <a class="btn rounded-0" href="#"><h1 class="text-white text-start"><i class="fa-brands fa-youtube"></i></h1>
        </a>
        <li class="nav-item">
            <a class="nav-link text-white rounded-0 ${view=='/admin/dashboard.jsp'?'active':''}"
               href="${root}/dashboard">
                <i class="fa-solid fa-house"></i> Dashboard
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link text-white rounded-0 ${view=='/admin/user/user-layout.jsp'?'active':''}"
               href="${root}/users">
                <i class="fa-solid fa-users"></i> Users
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link text-white rounded-0" href="#">
                <i class="fa-solid fa-photo-film"></i> Videos
            </a>
        </li>
    </div>

    <div class="col-md-10 p-0">
        <main class="pb-2" style="min-height: 93vh">
            <jsp:include page="${view}"/>
        </main>
        <footer class="text-bg-info" style="height: 7vh">
            <h1 class="text-center">Hello User</h1>
        </footer>
    </div>
</div>
</body>
</html>