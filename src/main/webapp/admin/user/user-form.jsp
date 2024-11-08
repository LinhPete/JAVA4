<%--
  Created by IntelliJ IDEA.
  User: ndhlt
  Date: 11/1/2024
  Time: 9:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="sessionAttributes" scope="session" type="com.poly.sessionAttributes.AdminUserAttributes"/>

<c:url var="parentRoot" value="/admin"/>
<c:set var="root" value="${parentRoot}/users"/>

<c:set var="user" value="${sessionAttributes.editingUser}"/>
<h2 class="text-center">Chi tiết người dùng</h2>
<form method="post">
    <div class="my-3">
        <label class="form-label" for="id">Mã người dùng</label>
        <input type="text" class="form-control" id="id" name="id"
               value="${user.id}" ${user.id==null||user.id==''?'':'readonly'}>
    </div>

    <div class="mb-3">
        <label class="form-label" for="fullname">Họ tên người dùng</label>
        <input type="text" class="form-control" id="fullname" name="fullname"
               value="${user.fullname}">
    </div>

    <div class="mb-3">
        <label class="form-label" for="email">Email người dùng</label>
        <input type="text" class="form-control" id="email" name="email" value="${user.email}">
    </div>

    <div class="d-flex">
        <div class="form-check me-3">
            <input type="radio" class="form-check-input" id="admin"
                   name="admin" ${user.admin?'checked':''}>
            <label class="form-check-label" for="admin">Admin</label>
        </div>
        <div class="form-check me-3">
            <input type="radio" class="form-check-input" id="user"
                   name="admin" ${user.admin==false||user==null?'checked':''}>
            <label class="form-check-label" for="user">Người dùng</label>
        </div>
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