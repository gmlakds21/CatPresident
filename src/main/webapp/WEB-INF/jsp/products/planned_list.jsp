<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<div>
    <div class="page_header">
        <div class="page_nav">
            <span> 홈 </span>
            <span class="page_nav_bi bi bi-chevron-right"> </span>
            <span> 기획전 </span>
            <span class="page_nav_bi bi bi-chevron-right"> </span>
            <span> ${BD.title} </span>
        </div>
    </div>
    <div class="page_title">
        <div class="bd_header">
            <div class="bd_title">${BD.title}</div>
            <div class="bd_contents">${BD.contents}</div>
        </div>
        <div class="bd_sns" data-toggle="modal" data-target="#share_modal">
            <button type="button" class="rounded-circle">
                <i class="bi bi-share"></i>
            </button>
        </div>
    </div>
    <br class="clear">
</div>

<div class="body">
    <c:if test="${BD.imgmain ne ''}">
        <img class="list_BDimg" src="${BD.imgmain}">
    </c:if>
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

    <div class="pd_list">
        <ul>
            <c:forEach var="PD" items="${PDs}">
                <li onclick="location.href='/Products/View?pno=${PD.pno}'">
                    <div class="pd">
                        <img src="/img/List_img.jpg">
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
                </li>
            </c:forEach>
        </ul>
    </div>
</div>

<!-- 공유 모달 -->
<div class="modal fade" id="share_modal" data-backdr="static" data-keyboard="false">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header"> <!-- 헤더 -->
                <h4 class="modal-title">공유하기</h4>
                <button type="button" class="btn share_closeBtn" id="share_modalX">
                    <i class="bi bi-x"></i>
                </button>
            </div>
            <div class="modal-body"> <!-- 본문 -->
                <div class="row share_snsBtns">
                    <div class="col-3">
                        <button type="button" class="share_snsBtn" onclick="window.open('https://play.google.com/store/apps/details?id=com.kakao.talk')">
                            <img src="/img/sns/kakao.png">
                        </button>
                        <div class="share_snsText">카카오톡</div>
                    </div>
                    <div class="col-3">
                        <button type="button" class="share_snsBtn" onclick="window.open('https://www.facebook.com/')">
                            <img src="/img/sns/facebook.png">
                        </button>
                        <div class="share_snsText">페이스북</div>
                    </div>
                    <div class="col-3">
                        <button type="button" class="share_snsBtn" onclick="window.open('https://www.instagram.com/')">
                            <img src="/img/sns/insta.png">
                        </button>
                        <div class="share_snsText">인스타그램</div>
                    </div>
                    <div class="col-3">
                        <button type="button" class="share_snsBtn" id="clip">
                            <img src="/img/sns/url.jpg" data-toggle="modal" data-target="#url_modal">
                        </button>
                        <div class="share_snsText">URL</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- url 복사 모달 -->
<div class="modal fade url_modal" id="url_modal" data-backdr="static" data-keyboard="false">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <span class="url_text">URL 이 클립보드에 복사되었습니다.</span>
                <span>
                    <button type="button" class="btn url_closeBtn" id="url_modalX">확인</button>
                </span>
            </div>
        </div>
    </div>
</div>