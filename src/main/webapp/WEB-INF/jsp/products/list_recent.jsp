<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<fmt:parseNumber var="cp" value="${param.cp}"/>
<fmt:parseNumber var="pp" value="30"/>

<fmt:parseNumber var="tp" value="${PDcnt/pp}" integerOnly="true"/>
<c:if test="${(PDcnt%pp) gt 0}">
    <fmt:parseNumber var="tp" value="${tp + 1}"/>
</c:if>

<fmt:parseNumber var="sp" integerOnly="true" value="${((cp-1)/pp)}"/>
<fmt:parseNumber var="sp" value="${sp*10+1}"/>
<fmt:parseNumber var="ep" value="${sp+9}"/>

<c:set var="navlink" value="/Recent-Product/list?cp=" />
<c:if test="${not empty param.findKey}">
    <c:set var="navlink"
           value="/Recent-Product/find?findType=${param.findType}&findKey=${param.findKey}&cp=">
    </c:set>
</c:if>

<fmt:parseNumber var="snum" integerOnly="true" value="${PDcnt - (cp-1) * pp}"/>

<div>
    <div class="page_header">
        <div class="page_nav">
            <span> 홈 </span>
            <span class="page_nav_bi bi bi-chevron-right"> </span>
            <span> 신상품 </span>
        </div>
    </div>
    <div class="page_title">
        <span>신상품</span>
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
            <li>
                <a href="#">
                    <button type="button" class="list_cateBtn2">전체</button>
                </a>
            </li>
            <c:forEach var="cate" items="${cates}">
                <li>
                    <a href="#${cate.ctno}">
                        <button type="button" class="list_cateBtn2">${cate.catename}</button>
                    </a>
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
        <span class="list_count_txt1">${PDcnt}</span>
        <span class="list_count_txt2">개의 상품</span>
        <button type="button" class="dropdown" data-toggle="dropdown">
            <span class="list_count_txt2">정렬</span>
            <span class="list_count_txt3">대통령 랭킹순</span>
            <img src="/img/CateThumb/arrow.png">
        </button>
        <div class="dropdown-menu">
            <a class="dropdown-item" href="#">낮은 가격순</a>
            <a class="dropdown-item" href="#">높은 가격순</a>
            <a class="dropdown-item" href="#">별점 가격순</a>
            <a class="dropdown-item" href="#">후기 가격순</a>
        </div>
    </div>

    <%-- list card --%>
    <div class="pd_list">
        <ul>
            <c:forEach var="PD" items="${PDs}">
                <li>
                    <a href="/Products/View?pno=${PD.pno}">
                        <div class="pd">
                            <img src="/img/List_img.jpg" onclick="">
                            <p class="pd_title">${PD.pname}</p>
                            <c:if test="${PD.price ne PD.totprice}">
                                <p  class="pd_price">
                                    <span class="pd_noprice">${PP.price}원 </span>
                                    <span class="pd_price">${PP.totprice}원 </span>
                                </p>
                            </c:if>
                            <c:if test="${PD.price eq PD.totprice}">
                                <p class="pd_price">${PD.totprice}원 </p>
                            </c:if>
                            <div>
                                <c:forEach var="star" begin="1" end="5" step="1">
                                    <span class="bi bi-star-fill pd_star"></span>
                                </c:forEach>
                                <span class="pd_reply">(1000)</span>
                            </div>
                            <span class="badge badge-info pd_badge">신상품</span>
                        </div>
                    </a>
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