<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="/css/basic.css">
    <link rel="stylesheet" href="/css/template/header.css">
    <link rel="stylesheet" href="/css/template/footer.css">
    <link rel="stylesheet" href="/css/register.css">
    <link rel="stylesheet" href="/css/category.css">
    <link rel="stylesheet" href="/css/list.css">

    <link rel="stylesheet" href="/css/plan_know.css">

    <%-- 현우 --%>
    <link rel="stylesheet" href="/css/mypage.css">
    <%-- 재선 --%>
    <link rel="stylesheet" href="/css/planned.css">
    <link rel="stylesheet" href="/css/orderview.css">
    <%-- 승희--%>
    <link rel="stylesheet" href="/css/order.css">


    <title>TeamProject</title>
</head>
<body>
<div>

    <tiles:insertAttribute name="header"/>

    <tiles:insertAttribute name="main"/>

    <tiles:insertAttribute name="footer"/>

</div>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="/js/bootstrap.bundle.min.js"></script>
<script src="/js/product.js"></script>
<script src="/js/register.js"></script>

<script src="/js/mypage.js"></script>
<script src="/js/planKnow.js"></script>
<script src="/js/order.js"></script>
</body>
</html>
