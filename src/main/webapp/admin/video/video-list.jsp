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

<c:set var="currPageNumber" value="${session_container.attributeContainer.adminVideoAttributes.currentPageNumber}"/>
<c:set var="currPage" value="${session_container.attributeContainer.adminVideoAttributes.currentPage}"/>
<c:set var="pages" value="${session_container.attributeContainer.adminVideoAttributes.pageMap}"/>
<div class="container">
    <table class="table">
        <thead>
        <tr>
            <th>Mã Video</th>
            <th>Poster</th>
            <th>Title</th>
            <th>Views</th>
            <th>Likes</th>
            <th>PostedDate</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="index" begin="0" end="4" step="1">
            <c:choose>
                <c:when test="${currPage!=null && index<currPage.size()}">
                    <tr>
                        <td>${currPage.get(index).id}</td>
                        <td>
                            <img src="/Java4${currPage.get(index).posterPath}" alt="${currPage.get(index).title}" width="160px" height="100px">
                        </td>
                        <td>${currPage.get(index).title}</td>
                        <td>${currPage.get(index).views}</td>
                        <td>${currPage.get(index).likes}</td>
                        <td>${currPage.get(index).postedDate}</td>
                        <td><a class="btn btn-outline-primary" href="${root}/edit/${currPage.get(index).id}">Edit</a></td>
                    </tr>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
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
        <li class="page-item ${currPageNumber==pages.size()||pages.size()==0?'disabled':''}"><a
                class="page-link"
                href="${root}/page/${currPageNumber+1}">Next</a>
        </li>
    </ul>
</div>
