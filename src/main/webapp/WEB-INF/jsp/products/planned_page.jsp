<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<div>
    <div class="page_header">
        <div class="page_nav">
            <span> 홈 </span>
            <span class="list_nav_bi bi bi-chevron-right"> </span>
            <span> 기획전</span>
        </div>
    </div>
    <div class="page_title">
        <span>기획전</span>
    </div>
</div>


<div class="body">
    <ul class="bd_page">
        <c:forEach var="BD" items="${BDs}">
            <li>
                <a href="/planned/list?bno=${BD.bno}">
                    <img src="${BD.imgthum}">
                    <div class="bd_title">${BD.title}</div>
                    <div class="bd_text">${BD.contents}</div>
                </a>
            </li>
        </c:forEach>
    </ul>
</div>
<%--                <div class="card PL_card PL_card:hover"--%>
<%--                onclick="javascript:showPlanned('${BD.bno}')">--%>
<%--                    <img src="${BD.imgthum}" class="card-img-top PL_card_img">--%>
<%--                    <div class="card-body">--%>
<%--                        <h5 class="card-title">${BD.title}</h5>--%>
<%--                        <span class="card-text">${BD.contents}</span>--%>
<%--                    </div>--%>
<%--                </div>--%>
