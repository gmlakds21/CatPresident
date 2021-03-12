<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%--
기획전 뷰와 노하우 뷰를 여기에 하나로 같이 만들어 주세요
제목
설명
    // 태그
사진파일

목록 list

이렇게 동일 합니다.
--%>
<div>
    <div id="list_header">
        <div class="col-9" id="list_nav">
            <span> 카테고리1&nbsp;&nbsp;>&nbsp;&nbsp;카테고리2&nbsp;&nbsp;>&nbsp;&nbsp;제품 title </span>
        </div>
    </div>
    <div class="col-9" id="list_title">

        <%-- 추가1 --%>
        <span>제목</span>
        설명
    </div>
</div>


<div class="col-9" id="list_body">

    <div class="col-12">

        <%-- 추가2 --%>
        사진 파일이 들어가는 곳

    </div>

    <%-- list card --%>
    <div class="col-12" id="card_list">
        <ul class="list-inline">
            <c:forEach var="i" begin="1" end="30" step="1">
                <li class="list-inline-item">
                    <span class="badge" id="BP_cardBadge">${i}위</span>
                    <div class="card" id="card_list_card">
                        <img src="" class="card-img-top" onclick="">
                        <div class="card-body">
                            <h5 class="card-title">제품${i}</h5>
                            <span class="card-text">
                                    <span>${i*1000}원</span>
                                </span>
                            <br>
                            <c:forEach var="i" begin="1" end="5" step="1">
                                <span id="BP_cardStar">★</span>
                            </c:forEach>
                            <span id="BP_cardReply">(1000)</span>
                        </div>
                    </div>
                </li>
            </c:forEach>
        </ul>
    </div>
</div>

