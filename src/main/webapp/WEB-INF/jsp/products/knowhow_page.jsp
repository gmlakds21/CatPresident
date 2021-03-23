<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<div>
    <div class="page_header">
        <div class="page_nav">
            <span> 홈 </span>
            <span class="list_nav_bi bi bi-chevron-right"> </span>
            <span>노하우</span>
        </div>
    </div>
    <div class="page_title">
        <span>노하우</span>
    </div>
</div>

<div class="body">
    <ul class="bd_page">
        <c:forEach var="BD" items="${BDs}">
            <li onclick="location.href='/planned/list?bno=${BD.bno}'">
                <img src="${BD.imgthum}">
                <div class="bd_text">
                    <div class="bd_title">${BD.title}</div>
                    <div class="bd_contents">${BD.contents}</div>
                    <div class="bd_tag">
                        <c:if test="${BD.tag ne ''}">
                            <c:forEach begin="0" end="4" var="i">
                                <c:if test="${fn:split(BD.tag,'[,]')[i] ne null}">
                                    <span class="tag">${fn:split(BD.tag,'[,]')[i]}</span>
                                </c:if>
                            </c:forEach>
                        </c:if>
                    </div>
                </div>
            </li>
        </c:forEach>
    </ul>
</div>
