<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<fmt:parseNumber var="cp" value="${param.cp}"/>
<fmt:parseNumber var="pp" value="30"/>

<fmt:parseNumber var="tp" value="${PDCount/pp}" integerOnly="true"/>
<c:if test="${(PDCount%pp) gt 0}">
    <fmt:parseNumber var="tp" value="${tp + 1}"/>
</c:if>

<fmt:parseNumber var="sp" integerOnly="true" value="${((cp-1)/pp)}"/>
<fmt:parseNumber var="sp" value="${sp*10+1}"/>
<fmt:parseNumber var="ep" value="${sp+9}"/>

<c:set var="navlink" value="/category/list?cate=${param.cate}&order=${param.order}&cp="/>

<fmt:parseNumber var="snum" integerOnly="true" value="${PDCount - (cp-1) * pp}"/>
<fmt:parseNumber var="cate" value="${param.cate}"/>


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
    <div class="ct_cate">
        <ul>
            <li class="ct_cate_title">
                <div>
                    <span> 카테고리 </span>
            <c:forEach var="ct" items="${cates}">
                <c:if test="${(ct.ctno % 100) eq 0}">
                </div>
            </li>
            <li class="ct_cate_list">
                <button class="ct_lead" type="button">
                    <span class="ct_cate_text"> ${ct.catename} </span>
                    <img src="/img/CateThumb/arrow.png">
                </button>
                <%-- ct_subbtn 은 js 에서 사용된다. --%>
                <div class="ct_sub">
                    <div>
                        <button class="ct_subbtn ct_cate_text" type="button" value="${ct.ctno}"> 전체 </button>
                    </div>
                </c:if>
                <c:if test="${(ct.ctno % 100) ne 0}">
                    <div>
                        <button class="ct_subbtn ct_cate_text" type="button" value="${ct.ctno}"> ${ct.catename} </button>
                    </div>
                </c:if>
            </c:forEach>
                </div>
            </li>
        </ul>
    </div>

    <%-- list 목록 --%>
    <div class="ct_list">
        <div class="page_title">
            <span>${ct_title}</span>
        </div>

        <%-- 상세 정렬 --%>
        <div class="list_countNav">
            <span class="list_countText1">${PDCount}</span>
            <span class="list_countText2">개의 상품</span>
            <button type="button" class="dropdown" data-toggle="dropdown">
                <span class="list_countText2">정렬</span>
                <span class="list_countText3">대통령 랭킹순</span>
                <img src="/img/CateThumb/arrow.png">
            </button>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="/category/list?cate=${param.cate}&order=time&cp=1">제품 등록순</a>
                <a class="dropdown-item" href="/category/list?cate=${param.cate}&order=lowPrice&cp=1">낮은 가격순</a>
                <a class="dropdown-item" href="/category/list?cate=${param.cate}&order=highPrice&cp=1">높은 가격순</a>
                <a class="dropdown-item" href="/category/list?cate=${param.cate}&order=star&cp=1">별점 높은순</a>
                <a class="dropdown-item" href="/category/list?cate=${param.cate}&order=reply&cp=1">후기 많은순</a>
            </div>
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
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>


        <%-- 페이지 정렬 --%>
        <div class="row list_pageNav">
            <div class="col-12">
                <ul class="pagination justify-content-center">
                    <li class="page-item" <c:if test="${sp lt 10}"> disable </c:if>>
                        <a href="${navlink}${sp-10}" class="page-link">
                            <span class="bi bi-chevron-left"></span>
                        </a>
                    </li>
                    <c:forEach var="i" begin="${sp}" end="${ep}" step="1">
                        <c:if test="${i le tp}">
                            <li class="page-item"
                                <c:if test="${cp eq i}">active</c:if>>
                                <a href="${navlink}${i}" class="page-link">${i}</a>
                            </li>
                        </c:if>
                    </c:forEach>
                    <li class="page-item <c:if test="${ep gt 10}"> disabled </c:if>">
                        <a href="${navlink}${sp+10}" class="page-link">
                            <span class="bi bi-chevron-right"></span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <br class="clear">
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
                    카테고리 리스트에서는 고유 번호인 ctno 를 이용하여<br>
                    해당하는 카테고리의 제품 리스트를 가져옵니다.<br>
                    ex) select * from Products where ctno = ?<br>
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
                    1. 화면 좌측에 카테고리 목록 (Accordion)<br>
                    2. 세부 카테고리를 누를시, 카테고리에 해당하는 ctno 를 이용<br>
                    리스트화면 다시 출력<br>
                    3. 검색 조건이 바뀔 시 제품 정보 또한 변경<br>
                    4. 상단 우측에 상세 정렬 (DropDown)
                </p>
            </div>
            <div class="modal_divider"></div>
            <button type="button" class="btn info_closeBtn" id="info_modalX">확인</button>
        </div>
    </div>
</div>