<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div>
    <div class="page_header">
        <div class="page_nav">
            <span> 홈 </span>
            <span class="page_nav_bi bi bi-chevron-right"> </span>
            <span> 카테고리 </span>
        </div>
    </div>
</div>

<div class="body">
    <ul class="ct_page">
        <c:forEach var="cate" items="${cates}">
            <li>
                <a href="/category/list?cate=${cate.ctno}&cp=1">
                    <img src="/img/CateThumb/${cate.ctno}.jpg">
                    <span class="ct_pageText">${cate.catename}</span>
                </a>
            </li>
        </c:forEach>
    </ul>
</div>
