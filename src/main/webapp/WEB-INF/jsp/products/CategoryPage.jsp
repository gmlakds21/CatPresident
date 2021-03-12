<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div>
    <div class="list_header">
        <div class="col-9 list_nav">
            <span> 홈 </span>
            <span class="list_nav_bi bi bi-chevron-right"> </span>
            <span> 카테고리 </span>
        </div>
    </div>
</div>

<ul class="CT_page">
    <c:forEach var="cate" items="${cates}">
        <li>
            <a href="/Category/list?cate=${cate.ctno}&cp=1">
                <img src="/img/CateThumb/${cate.ctno}.jpg">
                <span>${cate.catename}</span>
            </a>
        </li>
    </c:forEach>
</ul>