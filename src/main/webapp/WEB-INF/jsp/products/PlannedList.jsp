<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<div>
    <div class="list_header">
        <div class="col-9 list_nav">
            <span> 홈 </span>
            <span class="list_nav_bi bi bi-chevron-right"> </span>
            <span> 기획전</span>
        </div>
    </div>
    <div class="col-9 list_title">
        <span>기획전</span>
    </div>
</div>

<div class="col-9 marginCenter">
    <div class="col-12 list_body" >
        <div class="col-12 card_list">
            <ul class="list-inline">
                <c:forEach var="pl" items="${pls}">
                    <li class="list-inline-item">
                        <div class="card PL_card PL_card:hover"
                        onclick="javascript:showPlanned('${pl.bno}')">
                            <img src="${pl.imgthum}" class="card-img-top PL_card_img">
                            <div class="card-body">
                                <h5 class="card-title">${pl.title}</h5>
                                <span class="card-text">${pl.contents}</span>
                            </div>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
</div>
