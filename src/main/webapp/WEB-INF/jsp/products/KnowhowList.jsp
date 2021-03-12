<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<div>
    <div class="list_header">
        <div class="col-9 list_nav">
            <span> 홈 </span>
            <span class="list_nav_bi bi bi-chevron-right"> </span>
            <span> 노하우 </span>
        </div>
    </div>
    <div class="col-9 list_title">
        <span>노하우</span>
    </div>
</div>

<div class="col-9 marginCenter">
    <div class="col-12 list_body">
        <div class="col-12 card_list">
            <ul class="list-inline">
                <c:forEach var="kn" items="${knows}">
                    <li class="list-inline-item">
                        <div class="card KH_card KH_card:hover">
                            <img src="${kn.imgthum}" class="card-img-top KH_card_img"
                                 onclick="javascript:showKnowHow('${kn.bno}')">
                            <div class="card-body">
                                <h5 class="card-title">${kn.title}</h5>
                                <span class="card-text">${kn.contents}</span>
                                <div>
                                    <c:if test="${kn.tag ne ''}">
                                        <c:forEach begin="0" end="4" var="i">
                                            <c:if test="${fn:split(kn.tag,'[,]')[i] ne null}">
                                                <span class="tag">${fn:split(kn.tag,'[,]')[i]}</span>
                                            </c:if>
                                        </c:forEach>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
</div>

