<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<div>
    <div class="list_header">
        <div class="col-9 list_nav">
            <span> 홈 </span>
            <span class="list_nav_bi bi bi-chevron-right"> </span>
            <span> 기획전 </span>
            <span class="list_nav_bi bi bi-chevron-right"> </span>
            <span> ${plview.title} </span>
        </div>
    </div>
    <div class="PL_padd">
        <table class="col-9 list_title">
            <tr>
                <td class="title">&nbsp;${plview.title}</td>
                <td rowspan="2">
                    <div class="PL_marginR">
                        <button type="button" class="snsbtn">
                            <h3><i class="bi bi-share" data-toggle="modal" data-target="#shareModal"></i></h3></button>
                    </div>
                </td>
            </tr>
            <tr>
                <td id="PL_conten">&nbsp;&nbsp;${plview.contents}</td>
            </tr>
        </table>
    </div>
</div> <!-- list_header -->

<div class="col-9 marginCenter">
    <div class="col-12 list_body">
        <c:if test="${plview.imgmain eq ''}">
            <hr>
        </c:if>
        <c:if test="${plview.imgmain ne ''}">
            <div class="col-12">
                <img src="${plview.imgmain}">
            </div>
        </c:if>
        <div id="PL_count">
            <span><strong>${cnt}</strong>개의 상품</span>
        </div>
        <hr>

        <div class="col-12 marginCenter">
                <ul class="list-inline">
                    <c:forEach var="prod" items="${prods}">
                        <li class="list-inline-item card_list">
                            <div class="card card_list_card cursor" onclick="moveProduct(${prod.pno})">
                                <img src="/img/List_img.jpg" class="card-img-top card_list_Img">
                                <div class="card-body card_body">
                                    <h5 class="card-title list_card_title">${prod.pname}</h5>
                                    <span class="card-text list_card_text">
                                    <span class="list_card_price">${prod.totprice}원</span>
                                </span>
                                    <div class="list_card_text">
                                        <c:forEach var="star" begin="1" end="5" step="1">
                                            <span class="list_card_star">★</span>
                                        </c:forEach>
                                        <span class="list_card_Reply">(1000)</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
        </div>
    </div> <!-- list_body -->
</div>

<!-- 공유 모달 -->
<div class="modal fade" id="shareModal">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header"> <!-- 헤더 -->
                <h3 class="modal-title" id="PL_mFont">공유하기</h3>
                <button type="button" class="close" id="modalx">&times;</button>
            </div>
            <div class="modal-body"> <!-- 본문 -->
                <div class="row" id="PL_mRight">
                    <div class="col-md-4">
                        <button type="button" class="snsbtn" >
                            <img src="/img/plannedview/iconfinder_Kakaotalk_986948.png">
                        </button>
                    </div>
                    <div class="col-md-4">
                        <button type="button" class="snsbtn" onclick="showFacebook()">
                            <img src="/img/plannedview/facebook_icon.png">
                        </button>
                    </div>
                    <div class="col-md-4">
                        <button type="button" class="snsbtn" id="clip">
                            <img src="/img/plannedview/url_icon.png" data-toggle="modal" data-target="#clipok">
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- url 복사완료 모달 -->
<div class="modal fade " id="clipok">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header"> <!-- 헤더 -->
                <span class="modal-title" id="PL_Url">URL이 클립보드에 복사되었습니다.</span>
            </div>
            <div class="modal-body text-center"> <!-- 본문 -->
                <button type="button" class="btn btnAttr" id="close">
                    확인
                </button>
            </div>
        </div>
    </div>
</div>