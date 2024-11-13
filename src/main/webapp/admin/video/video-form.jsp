<%--
  Created by IntelliJ IDEA.
  User: ndhlt
  Date: 11/11/2024
  Time: 7:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="session_container" scope="session" type="com.poly.controller.requestAnalyst.SessionContainer"/>

<c:url var="parentRoot" value="/admin"/>
<c:set var="root" value="${parentRoot}/videos"/>

<c:set var="video" value="${session_container.attributeContainer.videoManageAttributes.editingVideo}"/>
<div class="container">
    <h2 class="text-center">Chi tiết Video</h2>
    <div class="row">
        <div class="col-md">
            <ul class="nav nav-tabs m-0 p-0">
                <li class="nav-item"><a class="nav-link active" data-bs-toggle="tab" href="#displayPoster">Poster</a></li>
                <li class="nav-item"><a class="nav-link" data-bs-toggle="tab" href="#displayVideo">Youtube video</a></li>
            </ul>
            <div class="tab-content m-0 p-0">
                <div class="tab-pane w-100 fade active show" id="displayPoster" style="height: 200px">
                    <img src="/Java4${video.posterPath}" alt="${video.poster}" style="width: 100%; height: 100%">
                </div>
                <div class="tab-pane w-100 fade" id="displayVideo" style="height: 200px">
                    <iframe src="https://www.youtube.com/embed/${video.ytCode}"
                            title="Testing German Restaurants in New York | Easy German 580" frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                            referrerpolicy="strict-origin-when-cross-origin" allowfullscreen
                            style="width: 100%; height: 350px"></iframe>
                    <a class="btn btn-info w-100 mt-2" href="https://youtu.be/${video.ytCode}" target="_blank">Xem trên Youtube <i class="fas fa-arrow-circle-right ms-auto"></i></a>
                </div>
            </div>
        </div>
        <div class="col-md">
            <form method="post">
                <div class="my-3">
                    <label class="form-label" for="id">Mã Video</label>
                    <input type="text" class="form-control" id="id" name="id"
                           value="${video.id}" ${video.id==null||video.id==''?'':'readonly'}>
                </div>

                <div class="mb-3">
                    <label class="form-label" for="fullname">Tiêu đề</label>
                    <input type="text" class="form-control" id="fullname" name="fullname"
                           value="${video.title}">
                </div>

                <div class="mb-3">
                    <label class="form-label" for="description">Mô tả</label>
                    <textarea name="description" id="description" cols="30" rows="10" class="form-control">${video.description}</textarea>
                </div>

                <div class="text-${mess.type} mt-3">
                    ${mess.content}
                </div>

                <div class="text-center mt-3">
                    <button formaction="${root}/create" class="btn btn-success me-2">Create</button>
                    <button formaction="${root}/update" class="btn btn-warning me-2">Update</button>
                    <button formaction="${root}/delete" class="btn btn-danger me-2">Delete</button>
                    <button formaction="${root}/reset" class="btn btn-primary">Reset</button>
                </div>
            </form>
        </div>
    </div>
</div>