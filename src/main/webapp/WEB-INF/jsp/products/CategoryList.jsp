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

<c:set var="navlink" value="/Category/list?" />
<c:if test="${not empty param.findKey}">
    <c:set var="navlink"
           value="/Best-Products/find?findType=${param.findType}&findKey=${param.findKey}&cp=">
    </c:set>
</c:if>

<fmt:parseNumber var="snum" integerOnly="true" value="${PDcnt - (cp-1) * pp}"/>
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

<div class="ct_body">
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
                                        <span class="pd_noprice">${PD.price}원 </span>
                                        <span class="pd_price">${PD.totprice}원 </span>
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
    <br class="clear">
</div>

