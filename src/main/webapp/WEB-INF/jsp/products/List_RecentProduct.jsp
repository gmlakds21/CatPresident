<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<fmt:parseNumber var="cp" value="${param.cp}"/>
<fmt:parseNumber var="pp" value="30"/>

<fmt:parseNumber var="tp" value="${PPcnt/pp}" integerOnly="true"/>
<c:if test="${(PPcnt%pp) gt 0}">
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

<fmt:parseNumber var="snum" integerOnly="true" value="${PPcnt - (cp-1) * pp}"/>

<div>
    <div class="list_header">
        <div class="col-9 list_nav">
            <span> 홈 </span>
            <span class="list_nav_bi bi bi-chevron-right"> </span>
            <span> 신상품 </span>
        </div>
    </div>
    <div class="col-9 list_title">
        <span>신상품</span>
    </div>
</div>

<div class="col-9 marginCenter">
    <nav class="nav navbar-expand">
        <ul class="nav navbar-nav">
            <button type="button" class="rounded-circle PP_navbtn">
                <span class="bi bi-chevron-left"></span>
            </button>
            <li class="nav-item"><a href="/CategoryPage" class="nav-link">
                <button type="button" class="btn btn-primary"> 전체 </button>
            </a></li>
            <c:forEach var="cate" items="${cates}">
                <li class="nav-item"><a href="/Category/list?cate=${cate.ctno}&cp=1" class="nav-link">
                    <button type="button" class="btn btn-light text-muted"> ${cate.catename} </button>
                </a></li>
            </c:forEach>
            <button type="button" class="rounded-circle PP_navbtn">
                <span class="bi bi-chevron-right"></span>
            </button>
        </ul>
    </nav>

    <div class="col-12 list_count">
        <span> ${PPcnt}</span><span class="list_count_span">개의 상품</span>
        <button type="button" class="dropdown" data-toggle="dropdown">
            <span class="list_count_span">정렬</span>
            <span class="list_count_span2">대통령 랭킹순</span>
        </button>
        <div class="dropdown-menu list_count_dropdown">
            <a class="dropdown-item" data-target="#">낮은 가격순</a>
            <a class="dropdown-item" data-target="#">높은 가격순</a>
            <a class="dropdown-item" data-target="#">별점 가격순</a>
            <a class="dropdown-item" data-target="#">후기 가격순</a>
        </div>
    </div>


    <div class="col-12 marginCenter">
        <ul class="list-inline">
            <c:forEach var="PP" items="${PPs}">
                <li class="list-inline-item card_list">
                    <a href="/Products/View?pno=${PP.pno}">
                        <div class="card card_list_card">
                            <img src="/img/List_img.jpg" class="card-img-top card_list_Img" onclick="">
                            <div class="card-body card_body">
                                <h5 class="card-title list_card_title">${PP.pname}</h5>
                                <span class="card-text list_card_text">
                                    <span class="list_card_price">${PP.totprice}원</span>
                                </span>
                                <div class="list_card_text">
                                    <c:forEach var="star" begin="1" end="5" step="1">
                                        <span class="list_card_star">★</span>
                                    </c:forEach>
                                    <span class="list_card_Reply">(1000)</span>
                                </div>
                                <span class="badge badge-warning list_card_badge">신상품</span>
                            </div>
                        </div>
                    </a>
                </li>
            </c:forEach>
        </ul>
    </div>

    <%-- navigation bar --%>
    <div class="row list_underNav">
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