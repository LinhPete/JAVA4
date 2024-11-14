<%--
  Created by IntelliJ IDEA.
  User: ndhlt
  Date: 11/10/2024
  Time: 7:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="session_container" scope="session" type="com.poly.controller.requestAnalyst.SessionContainer"/>

<c:url var="parentRoot" value="/admin"/>
<c:set var="root" value="${parentRoot}/videos"/>
<c:set var="imgPath" value="${parentRoot}/"/>

<c:set var="videos" value="${session_container.attributeContainer.videoManageAttributes.listVideos}"/>
<div class="container">
    <h2>Danh sách Video</h2>
    <div class="row row-cols-5 p-5">
        <c:forEach var="video" items="${videos}" varStatus="vs">
            <div class="col p-2">
                <div class="card" style="height: 250px">
                    <img src="/Java4${video.posterPath}" alt="${video.poster}" class="card-img-top"
                         style="height: 141px">
                    <div class="card-body">
                        <h4 class="card-title">${video.title}</h4>
                        <p class="card-text"><span class="mr-3"><i
                                class="fa-solid fa-eye"></i> ${video.views}</span>
                            <span><i class="fa-solid fa-thumbs-up"></i> ${video.likes}</span></p>
                    </div>
                    <a href="${root}/edit/${video.id}"
                       class="text-center pt-5 text-white"
                       style="
                       display: block;
                       position: absolute;
                       top: 0;
                       left: 0;
                       width: 100%;
                       height: 100%;">
                        <i class="fa-regular fa-circle-play" style="font-size: 2.5rem"></i>
                    </a>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
