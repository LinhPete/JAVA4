<%--
  Created by IntelliJ IDEA.
  User: ndhlt
  Date: 10/30/2024
  Time: 8:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url var="root" value="/admin"/>
<div class="container">
    <h1 class="mt-3">Dashboard</h1>
    <div class="container-fluid">
        <div class="row  mt-3">

            <div class="col-lg-3 col-6">
                <div class="card bg-info">
                    <div class="card-header"><h3 class="text-center"><i class="fa-solid fa-users"></i> Users</h3></div>
                    <div class="card-body p-2">
                        <h1 class="card-title text-center">150</h1>
                        <a href="${root}/users" class="card-link btn btn-info w-100">
                            More info <i class="fas fa-arrow-circle-right ms-auto"></i>
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-6">
                <div class="card bg-info">
                    <div class="card-header"><h3 class="text-center"><i class="fa-solid fa-photo-film"></i> Videos</h3>
                    </div>
                    <div class="card-body p-2">
                        <h1 class="card-title text-center">150</h1>
                        <a href="#" class="card-link btn btn-info w-100">
                            More info <i class="fas fa-arrow-circle-right ms-auto"></i>
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-6">
                <div class="card bg-info">
                    <div class="card-header"><h3 class="text-center"><i class="fa-solid fa-eye"></i> Views</h3></div>
                    <div class="card-body p-2">
                        <h1 class="card-title text-center">150</h1>
                        <a href="#" class="card-link btn btn-info w-100">
                            More info <i class="fas fa-arrow-circle-right ms-auto"></i>
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-6">
                <div class="card bg-info">
                    <div class="card-header"><h3 class="text-center"><i class="fa-solid fa-thumbs-up"></i> Likes</h3>
                    </div>
                    <div class="card-body p-2">
                        <h1 class="card-title text-center">150</h1>
                        <a href="#" class="card-link btn btn-info w-100">
                            More info <i class="fas fa-arrow-circle-right ms-auto"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row  mt-3">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header"><h3>Most views</h3></div>
                    <div class="card-body p-0">
                        <div class="list-group list-group-numbered rounded-0">
                            <a class="list-group-item list-group-item-action d-flex align-items-center" href="#"
                                style="font-size: 1.5rem">
                                <i class="fa-solid fa-trophy mx-3" style="color: #FFD43B;font-size: 2rem;"></i> Video top 1
                                <span class="badge bg-primary rounded-pill ms-auto"><i class="fa-solid fa-eye"></i>12</span>
                            </a>
                            <a class="list-group-item list-group-item-action d-flex align-items-center" href="#"
                               style="font-size: 1.5rem">
                                <i class="fa-solid fa-trophy mx-3" style="color: #74C0FC;font-size: 2rem;"></i> Video top 2
                                <span class="badge bg-primary rounded-pill ms-auto"><i class="fa-solid fa-eye"></i>12</span>
                            </a>
                            <a class="list-group-item list-group-item-action d-flex align-items-center" href="#"
                               style="font-size: 1.5rem">
                                <i class="fa-solid fa-trophy mx-3" style="color: #63E6BE;font-size: 2rem;"></i> Video top 3
                                <span class="badge bg-primary rounded-pill ms-auto"><i class="fa-solid fa-eye"></i>12</span>
                            </a>
                            <a class="list-group-item list-group-item-action d-flex align-items-center" href="#"
                               style="font-size: 1.5rem">
                                Video top 4
                                <span class="badge bg-primary rounded-pill ms-auto"><i class="fa-solid fa-eye"></i>12</span>
                            </a>
                            <a class="list-group-item list-group-item-action d-flex align-items-center" href="#"
                               style="font-size: 1.5rem">
                                Video top 5
                                <span class="badge bg-primary rounded-pill ms-auto"><i class="fa-solid fa-eye"></i>12</span>
                            </a>

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="card">
                    <div class="card-header"><h3>Most likes</h3></div>
                    <div class="card-body p-0">
                        <div class="list-group list-group-numbered rounded-0">
                            <a class="list-group-item list-group-item-action d-flex align-items-center" href="#"
                               style="font-size: 1.5rem">
                                <i class="fa-solid fa-trophy mx-3" style="color: #FFD43B;font-size: 2rem;"></i> Video top 1
                                <span class="badge bg-primary rounded-pill ms-auto"><i class="fa-solid fa-thumbs-up"></i>12</span>
                            </a>
                            <a class="list-group-item list-group-item-action d-flex align-items-center" href="#"
                               style="font-size: 1.5rem">
                                <i class="fa-solid fa-trophy mx-3" style="color: #74C0FC;font-size: 2rem;"></i> Video top 2
                                <span class="badge bg-primary rounded-pill ms-auto"><i class="fa-solid fa-thumbs-up"></i>12</span>
                            </a>
                            <a class="list-group-item list-group-item-action d-flex align-items-center" href="#"
                               style="font-size: 1.5rem">
                                <i class="fa-solid fa-trophy mx-3" style="color: #63E6BE;font-size: 2rem;"></i> Video top 3
                                <span class="badge bg-primary rounded-pill ms-auto"><i class="fa-solid fa-thumbs-up"></i>12</span>
                            </a>
                            <a class="list-group-item list-group-item-action d-flex align-items-center" href="#"
                               style="font-size: 1.5rem">
                                Video top 4
                                <span class="badge bg-primary rounded-pill ms-auto"><i class="fa-solid fa-thumbs-up"></i>12</span>
                            </a>
                            <a class="list-group-item list-group-item-action d-flex align-items-center" href="#"
                               style="font-size: 1.5rem">
                                Video top 5
                                <span class="badge bg-primary rounded-pill ms-auto"><i class="fa-solid fa-thumbs-up"></i>12</span>
                            </a>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>