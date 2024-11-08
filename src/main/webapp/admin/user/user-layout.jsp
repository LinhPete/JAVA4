<%--
  Created by IntelliJ IDEA.
  User: ndhlt
  Date: 10/30/2024
  Time: 7:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url var="parentRoot" value="/admin"/>
<c:set var="root" value="${parentRoot}/users"/>
<div class="container-fluid mt-4 p-5 row">
    <div class="col-sm-8">
        <jsp:include page="user-list.jsp"/>
    </div>

    <div class="col-sm-4">
        <jsp:include page="user-form.jsp"/>
    </div>

</div>


