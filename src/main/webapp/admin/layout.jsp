<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ndhlt
  Date: 11/1/2024
  Time: 8:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<c:url var="root" value="/admin"/>
<jsp:useBean id="view" scope="request" type="java.lang.String"/>
<nav class="navbar navbar-expand-sm navbar-dark bg-dark sticky-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="${root}/home">
            Logo
        </a>
        <!-- Nút hiện nav bị ẩn -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <!-- Tự động ẩn khi thu nhỏ màn hình -->
        <div class="collapse navbar-collapse" id="mynavbar">
            <!-- Links -->
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link ${view=='/admin/home.jsp'?'active':''}" href="${root}/home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link ${view=='/admin/user/user-layout.jsp'?'active':''}" href="${root}/users">Users</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link ${view=='/admin/favorite.jsp'?'active':''}" href="${root}/favorites">Favorites</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<main>
    <jsp:include page="${view}"/>
</main>
<div class="container-fluid text-bg-dark">
    <h1 class="text-center">Hello User</h1>
</div>

