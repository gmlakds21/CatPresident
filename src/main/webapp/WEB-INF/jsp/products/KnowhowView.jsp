<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div>
    <div class="list_header">
        <div class="col-9 list_nav">
            <span> 홈 </span>
            <span class="list_nav_bi bi bi-chevron-right"> </span>
            <span> 노하우 </span>
            <span class="list_nav_bi bi bi-chevron-right"> </span>
            <span> ${knview.title} </span>
        </div>
    </div>
    <div class="PL_padd">
        <table class="col-9 list_title">
            <tr>
                <td class="title">&nbsp;${knview.title}</td>
                <td rowspan="2" >
                    <div class="PL_marginR">
                        <button type="button" class="snsbtn">
                            <h3><i class="bi bi-share" data-toggle="modal" data-target="#shareModal"></i></h3></button>
                    </div>
                </td>
            </tr>
            <tr>
                <td id="PL_conten">&nbsp;${knview.contents}</td>
            </tr>
            <tr>
                <td>
                    <c:if test="${knview.tag ne ''}">
                        <c:forEach begin="0" end="4" var="i">
                            <c:if test="${fn:split(knview.tag,'[,]')[i] ne null}">
                                <div class="tag2">${fn:split(knview.tag,'[,]')[i]}</div>
                            </c:if>
                        </c:forEach>
                    </c:if>
                </td>
            </tr>
        </table>
    </div>
</div> <!-- list_header -->

<div class="col-9 marginCenter">
    <div class="col-12 list_body">
        <c:if test="${knview.imgmain eq ''}">
            <hr>
        </c:if>
        <c:if test="${knview.imgmain ne ''}">
            <div class="col-12">
                <img src="${knview.imgmain}">
            </div>
        </c:if>
        <div id="PL_count">
            <span><strong>${cnt}</strong>개의 상품</span>
        </div>
        <hr>

        <div class="col-12">
            <div class="col-12">
                <ul class="list-inline">
                    <form name="pricefrm">
                        <c:forEach var="knpro" items="${knprods}">
                            <li class="list-inline-item card_list">
                                <div class="card card_list_card">
                                    <div class="cursor">
                                        <input type="checkbox" class="check-box" name="check"
                                               id="checkdPrice" onclick="javascript:clickPrice(this.form)" value="${knpro.totprice}">
                                    </div>
                                    <div class="cursor" onclick="moveProduct(${knpro.pno})">
                                        <img src="/img/List_img.jpg" class="card-img-top card_list_Img" onclick="">
                                        <div class="card-body card_body">
                                            <h5 class="card-title list_card_title">${knpro.pname}</h5>
                                            <span class="card-text list_card_text">
                                            <span class="list_card_price" id="price">${knpro.totprice}원</span>
                                        </span>
                                            <div class="list_card_text">
                                                <c:forEach var="star" begin="1" end="5" step="1">
                                                    <span class="list_card_star">★</span>
                                                </c:forEach>
                                                <span class="list_card_Reply">(1000)</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </c:forEach>
                    </form>
                </ul>
            </div>
        </div>
    </div> <!-- list_body -->
</div>

<!-- 상품 체크박스 / 장바구니 담기 -->
<div class="col-12 KH_List text-center">
    <ul class="list-inline KN_li">
        <!-- '선택한 갯수 + 개의 구매가격' 문구 출력 -->
        <li class="list-inline-item"><span class="KH_span" id="listCnt"></span>
            <!-- 체크한 상품 총가격 출력 -->
            <strong id="sumPrice"></strong>
            <span class="KH_text">|</span>
        </li>
        <li class="list-inline-item">
            <!-- '선택한 갯수 + 개 장바구니 담기' 문구 출력 -->
            <button type="button" class="btn KH_cartBtn" id="cartProd"></button>
        </li>
    </ul>
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
<div class="modal fade" id="clipok">
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

<script>
    // KnowhowView페이지가 호출되자마자 실행되어야 함
    // 하단 장바구니 <div>구역 ~개 구매가격, 총 가격, ~개 장바구니 담기 표현
    window.onload = function() {

        var cnt = ${cnt}
        var sumPrice = 0;

        document.getElementById('listCnt').innerText = cnt + '개의 구매 가격'
        document.getElementById('cartProd').innerText = cnt + '개 장바구니 담기'

        for(var i = 1; i < document.getElementsByTagName('input').length; i++){
            if(document.getElementsByTagName('input')[i].getAttribute('type') == 'checkbox'){
                document.getElementsByTagName('input')[i].checked = true;
            }
            sumPrice += parseInt(document.getElementsByTagName('input')[i].getAttribute('value'))
        }

        sumPrice = sumPrice.toLocaleString() // 천단위 (,) 찍기
      
        document.getElementById('sumPrice').innerText = sumPrice + '원'
    };
</script>