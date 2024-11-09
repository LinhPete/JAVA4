<%--
  Created by IntelliJ IDEA.
  User: ndhlt
  Date: 11/3/2024
  Time: 3:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h2>Danh sách yêu thích</h2>
<table class="table">
    <thead>
    <tr>
        <th>Tên người dùng</th>
        <th>Tiêu đề video</th>
        <th>Ngày thích</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="item" items="${favorites}">
        <tr>
            <td>${item.user.fullname}</td>
            <td>${item.video.title}</td>
            <td>${item.likedDate}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
