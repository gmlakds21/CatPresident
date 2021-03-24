<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<fmt:parseNumber var="cp" value="${param.cp}"/>
<%--
 PageVO 만들어서

 pg.pp = 30
 pg.tp = PDcnt/30
 if(tp > 0)  tp = tp + 1

 pg.sp = ((cp-1)/30)*10+1
 pg.ep = sp+9
 pg.snum = PDcont - (cp-1)*30

 cp = choosePage
 tp = totalPage
 sp = startPage
 ep = endPage
 snum = 현 페이지 starNumber
 --%>
<fmt:parseNumber var="pp" value="30"/>

<fmt:parseNumber var="tp" value="${PDcnt/pp}" integerOnly="true"/>
<c:if test="${(PDcnt%pp) gt 0}">
    <fmt:parseNumber var="tp" value="${tp + 1}"/>
</c:if>

<fmt:parseNumber var="sp" integerOnly="true" value="${((cp-1)/pp)}"/>
<fmt:parseNumber var="sp" value="${sp*10+1}"/>
<fmt:parseNumber var="ep" value="${sp+9}"/>

<fmt:parseNumber var="snum" integerOnly="true" value="${(cp-1) * pp}"/>
<%--  --%>

<c:set var="navlink" value="/Best-Products/list?" />
<c:if test="${not empty param.findKey}">
    <c:set var="navlink"
           value="/Best-Products/find?findType=${param.findType}&findKey=${param.findKey}&cp=">
    </c:set>
</c:if>
<%--
param 의 where, order 을 navlink 에 담아서 하단 네비를 눌렀을 때 가도록

<c:if test="${not empty param.where}">
    <c:set var="navlink"
           value="${navlink}where=${param.where}}&">
    </c:set>
</c:if>

<c:if test="${not empty param.order}">
    <c:set var="navlink"
           value="${navlink}order=${param.order}}&">
    </c:set>
</c:if>

--%>


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
        <span class="list_countText1">${PDcnt}</span>
        <span class="list_countText2">개의 상품</span>
        <button type="button" class="dropdown" data-toggle="dropdown">
            <span class="list_countText2">정렬</span>
            <span class="list_countText3">대통령 랭킹순</span>
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
            <c:set var="i" value="#{snum+1}"/>
            <c:forEach var="PD" items="${PDs}">
                <li onclick="location.href='/Products/View?pno=${PD.pno}'">
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

    <%-- 페이지 정렬 --%>
    <div class="row list_pageNav">
        <div class="col-12">
            <ul class="pagination justify-content-center">
                <li class="page-item" <c:if test="${sp lt 10}"> disable </c:if>>
                    <a href="${navlink}cp=${sp-10}" class="page-link">
                        <span class="bi bi-chevron-left"></span>
                    </a>
                </li>
                <c:forEach var="i" begin="${sp}" end="${ep}" step="1">
                    <c:if test="${i le tp}">
                        <li class="page-item"
                            <c:if test="${cp eq i}">active</c:if>>
                            <a href="${navlink}cp=${i}" class="page-link">${i}</a>
                        </li>
                    </c:if>
                </c:forEach>
                <li class="page-item <c:if test="${ep gt 10}"> disabled </c:if>">
                    <a href="${navlink}cp=${sp+10}" class="page-link">
                        <span class="bi bi-chevron-right"></span>
                    </a>
                </li>
            </ul>
        </div>
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
                    2. 페이지 상단의 세부 조건 (미구현)<br>
                    3. 페이지 상단 우측에 상세 정렬 (미구현)<br>
                    4. 댓글, 평점 시스템 (미구현)
                </p>
            </div>
            <div class="modal_divider"></div>
            <button type="button" class="btn info_closeBtn" id="info_modalX">확인</button>
        </div>
    </div>
</div>