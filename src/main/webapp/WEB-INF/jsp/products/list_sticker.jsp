<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<fmt:parseNumber var="cp" value="${param.cp}"/>
<fmt:parseNumber var="pp" value="30"/>

<fmt:parseNumber var="tp" value="${PDCount/pp}" integerOnly="true"/>
<c:if test="${(PDCount%pp) gt 0}">
    <fmt:parseNumber var="tp" value="${tp + 1}"/>
</c:if>

<fmt:parseNumber var="sp" integerOnly="true" value="${((cp-1)/pp)}"/>
<fmt:parseNumber var="sp" value="${sp*10+1}"/>
<fmt:parseNumber var="ep" value="${sp+9}"/>

<c:set var="navlink" value="/stciker/list?cate=${param.cate}&order=${param.order}&cp=" />

<fmt:parseNumber var="snum" integerOnly="true" value="${PDCount - (cp-1) * pp}"/>

<div>
    <div class="page_header">
        <div class="page_nav">
            <span> 홈 </span>
            <span class="page_nav_bi bi bi-chevron-right"> </span>
            <span> 스티커 샵 </span>
        </div>
    </div>
    <div class="page_title">
        <span>스티커 샵</span>
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
            <li onclick="location.href='/sticker/list?cate=1000&order=${param.order}&cp=1'">
                <button type="button" class="list_cateBtn2">전체</button>
            </li>
            <c:forEach var="cate" items="${cates}">
                <li onclick="location.href='/sticker/list?cate=${cate.ctno}&order=${param.order}&cp=1'">
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
        <button type="button" class="dropdown" data-toggle="dropdown">
            <span class="list_countText2">정렬</span>
            <span class="list_countText3">대통령 랭킹순</span>
            <img src="/img/CateThumb/arrow.png">
        </button>
        <div class="dropdown-menu">
            <a class="dropdown-item" href="/sticker/list?cate=${param.cate}&order=time&cp=1">제품 등록순</a>
            <a class="dropdown-item" href="/sticker/list?cate=${param.cate}&order=lowPrice&cp=1">낮은 가격순</a>
            <a class="dropdown-item" href="/sticker/list?cate=${param.cate}&order=highPrice&cp=1">높은 가격순</a>
            <a class="dropdown-item" href="/sticker/list?cate=${param.cate}&order=star&cp=1">별점 높은순</a>
            <a class="dropdown-item" href="/sticker/list?cate=${param.cate}&order=reply&cp=1">후기 많은순</a>
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
                    <div class="pd_sticker">
                        <img src="/img/List_Sticker.jpg">
                        <fmt:parseNumber var="nyang" value="${PD.totprice/100}" integerOnly="true"/>
                        <span class="pd_price">${nyang} </span>
                    </div>

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

<%-- 설명 모달 --%>
<button class="info_body rounded-circle" data-toggle="modal" data-target="#info_modal">
    <span> Code </span>
</button>

<div class="modal fade" id="info_modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="info_modal">
                <p>
                    스티커 리스트에서는 스티커로 따로 등록한 제품에서 가져옵니다..<br>
                    ex) select * from Sticker order by pno desc<br>
                    <br>
                    상단의 카테고리를 선택하여 해당 카테고리에 해당하는<br>
                    제품목록을 스티커 테이블에서 출력합니다.<br>
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
                    1. 페이지 상단의 세부 조건<br>
                    2. 페이지 상단 우측에 상세 정렬<br>
                    3. 댓글, 평점 시스템 (미구현)
                </p>
            </div>
            <div class="modal_divider"></div>
            <button type="button" class="btn info_closeBtn" id="info_modalX">확인</button>
        </div>
    </div>
</div>