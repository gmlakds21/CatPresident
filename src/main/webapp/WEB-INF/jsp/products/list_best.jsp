<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div>
    <div class="page_header">
        <div class="page_nav">
            <span> 홈 </span>
            <span class="page_nav_bi bi bi-chevron-right"> </span>
            <span> 랭킹 </span>
        </div>
    </div>
    <div class="page_title">
        <span>랭킹</span>
    </div>
</div>

<div class="body">

    <%-- 상세 검색 --%>
    <div class="list_cateNav">
        <a href="#list_cateLeft">
            <button type="button" class="rounded-circle list_cateBtn1">
                <i class="bi bi-chevron-left"></i>
            </button>
        </a>
        <ul>
            <span id="list_cateLeft"></span>
            <li onclick="location.href='/best/list?cate=1000&order=best'">
                <button type="button" class="list_cateBtn2">전체</button>
            </li>
            <c:forEach var="cate" items="${cates}">
            <li onclick="location.href='/best/list?cate=${cate.ctno}&order=best'">
                <button type="button" class="list_cateBtn2">${cate.catename}</button>
            </li>
            </c:forEach>
            <span id="list_cateRight"></span>
        </ul>
        <a href="#list_cateRight">
            <button type="button" class="rounded-circle list_cateBtn1">
                <i class="bi bi-chevron-right"></i>
            </button>
        </a>
        <br class="clear">
    </div>

    <%-- 상세 정렬 --%>
    <div class="list_countNav">
        <span class="list_countText1">${PDCount}</span>
        <span class="list_countText2">개의 상품</span>
    </div>

    <%-- list card --%>
    <div class="pd_list">
        <ul>
            <c:set var="i" value="1"/>
            <c:forEach var="PD" items="${PDs}">
                <li onclick="location.href='/products/view?pno=${PD.pno}'">
                    <div class="badge pd_badgeBP">${i}위</div>
                    <div class="pd">
                        <img src="/img/List_img.jpg" onclick="">
                        <p class="pd_title">${PD.pname}</p>
                        <c:if test="${PD.price ne PD.totprice}">
                            <p  class="pd_price">
                                <span class="pd_noprice">
                                    <fmt:formatNumber value="${PD.price}" pattern="##,###"/>원
                                </span>
                                <span class="pd_price">
                                    <fmt:formatNumber value="${PD.totprice}" pattern="##,###"/>원
                                </span>
                            </p>
                        </c:if>
                        <c:if test="${PD.price eq PD.totprice}">
                            <p class="pd_price">
                                <fmt:formatNumber value="${PD.totprice}" pattern="##,###"/>원
                            </p>
                        </c:if>
                        <div>
                            <c:forEach var="star" begin="1" end="5" step="1">
                                <span class="bi bi-star-fill pd_star"></span>
                            </c:forEach>
                            <span class="pd_reply">(1000)</span>
                        </div>
                        <span class="badge badge-danger pd_badge">인기상품</span>
                    </div>
                </li>
                <c:set var="i" value="${i+1}"/>
            </c:forEach>
        </ul>
    </div>
</div>

<%-- 설명 모달 --%>
<button class="info_body rounded-circle" data-toggle="modal" data-target="#info_modal">
    <span> Code </span>
</button>

<div class="modal fade" id="info_modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="info_modal">
                <p>
                    랭킹 리스트에서는 판매량에 따라 제품 목록을 가져옵니다.<br>
                    ex) select * from Products order by sales desc<br>
                    <br>
                    상단의 카테고리를 선택하여 해당 카테고리에 해당하는<br>
                    제품목록을 판매량 순으로 출력합니다.<br>
                    <br>
                    리스트에 해당되는 제품들은 List(ProductsVO) 형태로<Br>
                    foreach 문을 이용하여 화면에 배열합니다.<br>
                    ex) (c:forEach var="PD" items="$(PDs)")<br>
                    <br>
                    해당 게시물들은 onclick 이벤트로 클릭시<br>
                    제품 고유번호인 pno 를 이용하여 제품 페이지로 이동합니다.
                </p>
                <p><b>Point</b></p>
                <p>
                    1. 할인시 원가 표기와 함께 할인가 표시<br>
                    2. 페이지 상단의 세부 조건<br>
                    3. 댓글, 평점 시스템 (미구현)
                </p>
            </div>
            <div class="modal_divider"></div>
            <button type="button" class="btn info_closeBtn" id="info_modalX">확인</button>
        </div>
    </div>
</div>