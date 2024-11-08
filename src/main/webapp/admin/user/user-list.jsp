<%--
  Created by IntelliJ IDEA.
  User: ndhlt
  Date: 11/1/2024
  Time: 9:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="users_pages" scope="session" type="java.util.Map"/>
<jsp:useBean id="curr_users_page_number" scope="session" type="java.lang.Integer"/>

<c:url var="parentRoot" value="/admin"/>
<c:set var="root" value="${parentRoot}/users"/>

<c:set var="currPageNumber" value="${curr_users_page_number}"/>
<c:set var="currPage" value="${sessionScope.curr_users_page}"/>
<c:set var="pages" value="${users_pages}"/>

<h2>Danh sách User</h2>
<form action="${root}/filter" method="get">
    <div class="row">
        <div class="col-sm-8">
            <label class="form-label" for="name">Tên người dùng</label>
            <input class="form-control" type="text" id="name" name="filter_name" value="${sessionScope.filter_name}" placeholder="Tìm kiếm tên người dùng..."/>
        </div>
        <div class="col-sm-4">
            <label class="form-label" for="role">Loại người dùng</label>
            <select class="form-select" name="filter_role" id="role">
                <option value="null" ${sessionScope.filter_role=='null'?'selected':''}>Tất cả</option>
                <option value="true" ${sessionScope.filter_role=='true'?'selected':''}>Admin</option>
                <option value="false" ${sessionScope.filter_role=='false'?'selected':''}>Khách hàng</option>
            </select>
        </div>
    </div>
    <button class="btn btn-primary mt-3" type="submit">Lọc</button>
</form>
<table class="table">
    <thead>
    <tr>
        <th>Mã người dùng</th>
        <th>Họ tên người dùng</th>
        <th>Email người dùng</th>
        <th>Loại người dùng</th>
        <th>Thao tác</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="index" begin="0" end="4" step="1">
        <c:choose>
            <c:when test="${currPage!=null && index<currPage.size()}">
                <tr>
                    <td>${currPage.get(index).id}</td>
                    <td>${currPage.get(index).fullname}</td>
                    <td>${currPage.get(index).email}</td>
                    <td>${currPage.get(index).admin?'Admin':'Khách hàng'}</td>
                    <td><a class="btn btn-outline-primary" href="${root}/edit/${currPage.get(index).id}">Edit</a></td>
                </tr>
            </c:when>
            <c:otherwise>
                <tr>
                    <td> </td>
                    <td> </td>
                    <td> </td>
                    <td> </td>
                    <td><a class="btn btn-outline-primary" href="#" style="visibility: hidden">Edit</a></td>
                </tr>
            </c:otherwise>
        </c:choose>
    </c:forEach>
    </tbody>
</table>
<ul class="pagination justify-content-center">
    <li class="page-item ${currPageNumber==1?'disabled':''}"><a class="page-link"
                                                                href="${root}/page/${currPageNumber-1}">Previous</a>
    </li>
    <c:if test="${pages.keySet()!=null}">
        <c:forEach items="${pages.keySet()}" varStatus="vs">
            <li class="page-item ${vs.count==currPageNumber?'active':''}"><a class="page-link"
                                                                             href="${root}/page/${vs.count}">${vs.count}</a>
            </li>
        </c:forEach>
    </c:if>
    <c:if test="${pages.keySet()==null}">
        <li class="page-item active"><a class="page-link"
                                                                         href="${root}/page/1">1</a>
        </li>
    </c:if>
    <li class="page-item ${currPageNumber==users_pages.size()||users_pages.size()==0?'disabled':''}"><a class="page-link"
                                                                                 href="${root}/page/${currPageNumber+1}">Next</a>
    </li>
</ul>