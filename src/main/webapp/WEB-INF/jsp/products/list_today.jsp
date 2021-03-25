<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div>
    <div class="page_header">
        <div class="page_nav">
            <span> 홈 </span>
            <span class="page_nav_bi bi bi-chevron-right"> </span>
            <span> 오늘의 딜 </span>
        </div>
    </div>
    <div class="page_title">
        <span>오늘의 딜</span>
    </div>
</div>

<div class="body">

    <%-- 상세 정렬 --%>
    <div class="list_countNav">
        <span class="list_countText1">${PDCount}</span>
        <span class="list_countText2">개의 상품</span>
    </div>

    <%-- list card --%>
    <div class="pd_list">
        <ul>
            <c:forEach var="PD" items="${PDs}">
                <li onclick="location.href='/products/view?pno=${PD.pno}'">
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
                        <span class="badge badge-primary pd_badge">이벤트</span>
                    </div>
                </li>
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
                    오늘의 딜 리스트에서는 오늘의 딜에 설정된 제품 목록을 가져옵니다.<br>
                    ex) select products from Board where bno = ?<br>
                    <br>
                    오늘의 딜 리스트는 기획전 및 노하우 게시글과 마찬가지로<br>
                    오늘의 딜 게시글 안에 제품 목록을 포함하고 있습니다.<br>
                    <br>
                    해당 게시물에 지정된 제품들은 String 형태로<Br>
                    2027, 3013, 3029, ... 형식으로 저장되어 있습니다.<br>
                    이것을 split 하여 제품 고유 번호인 pno로 분리<br>
                    다시 pno를 이용해 모든 정보를 가져옵니다.<br>
                    ex) select * from Products where pno = ?<br>
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
                    2. 댓글, 평점 시스템 (미구현)
                </p>
            </div>
            <div class="modal_divider"></div>
            <button type="button" class="btn info_closeBtn" id="info_modalX">확인</button>
        </div>
    </div>
</div>