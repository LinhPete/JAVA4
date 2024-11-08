<%--
  Created by IntelliJ IDEA.
  User: ndhlt
  Date: 10/30/2024
  Time: 7:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Quản trị</title>
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
<c:choose>
    <c:when test="${sessionScope.get('currUser')==null||sessionScope.get('currUser').admin==true}">
        <jsp:include page="layout.jsp"/>
    </c:when>
    <c:when test="${sessionScope.get('currUser').admin==false}">
        <div class="container">
            <h2 class="text-bg-danger">Không đủ quyền hạn truy cập</h2>
            <p>Chỉ tài khoản có quyền quản trị mới được phép truy cập</p>
            <a href="#">TRỞ VỀ TRANG CHỦ</a>
        </div>
    </c:when>
</c:choose>
</body>
</html>
