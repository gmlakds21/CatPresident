<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="list_header">
    <div class="col-9 list_nav">
<%--
        <c:set var="cate1" value="${fn:substring(PP.cate,0,2)}"/>
        <c:set var="cate2" value="${PP.cate)}"/>
--%>
        <span> 홈 </span>
        <span class="list_nav_bi bi bi-chevron-right"> </span>
        <span> 카테1 </span>
<%--        <span> ${cate1} </span>--%>
        <span class="list_nav_bi bi bi-chevron-right"> </span>
        <span> 카테2 </span>
<%--        <span> ${cate2} </span>--%>
        <span class="list_nav_bi bi bi-chevron-right"> </span>
        <span> 제품명 </span>
<%--        <span> ${PP.pname} </span>--%>
    </div>
</div>

<div class="col-9 marginCenter">
    <div class="VI_main">
        <div class="VI_img">
            <img src="/img/List_img.jpg">
        </div>
        <div class="VI_info">
            <div class="VI_brand"> ${PP.brand} </div>
            <div class="VI_pname"> ${PP.pname} </div>
            <div class="list_card_text VI_star">
                <c:forEach var="star" begin="1" end="5" step="1">
                    <span class="list_card_star">★</span>
                </c:forEach>
                <span class="list_card_Reply">(1000)</span>
            </div>
            <div class="VI_price">
                <div class="VI_price1"> 판매가 </div>
                <div class="VI_price2" id="PP_price"> ${PP.totprice} </div>
                <br class="clear">
            </div>
            <div class="VI_setInfo">
                <img src="/img/productsView/View_setInfo1.jpg">
                <img src="/img/productsView/View_setInfo2.jpg">
                <img src="/img/productsView/View_setInfo3.jpg">
            </div>
            <div class="VI_setInfo2">
                <ul>
                    <li>
                        <b>오늘 출발</b> 마감까지 <b>6시간 44분</b>남음<br>
                    </li>
                    <li>
                        <b>저녁 6시</b> 이전 주문하면 오늘 출발! / 영업일 기준<br>
                    </li>
                    <li>
                        <b>30,000원</b> 이상 구매 시, 무료배송
                    </li>
                </ul>
            </div>
            <div class="VI_count" id="VI_count">
                <div class="VI_count1">수량</div>
                <div class="VI_count2">총 상품금액</div>
                <br class="clear">
                <button class="btn bi bi-dash" id="VIMinus"></button>
                <button class="btn" id="PP_amount" disabled> 1 </button>
                <button class="btn bi bi-plus" id="VIPlus"></button>
                <div class="VI_count3" id="PP_totprice"> ${PP.totprice} </div>
            </div>

            <form id="VI_PPInfo">
                <input type="hidden" id="pno" name="pno" value="${PP.pno}">
                <input type="hidden" id="amount" name="amount">
            </form>
            <div class="VI_button marginCenter">
                <button class="VI_button1" id="VI_goBasketbtn"> 장바구니 담기 </button>
                <span></span>
                <button class="VI_button2" id="VI_goOrderbtn"> 바로 구매 </button>
            </div>
        </div>
        <br class="clear">
    </div>

    <div>
        <div class="VI_detail">
            <h4> 상품 정보 </h4>
            <hr>
            <div class="VI_detail2">
                <h6> 설명 </h6>
                <p> 퓨리나 프리스키 파티믹스는 여러가지 맛을 동시에 즐기기를 좋아하는 고양이를 위한 다양한 맛의 스낵 제품입니다. 다양한 키블 모양으로 바삭바삭하고 재밌는 질감을 선사하며, 치아 건강에 도움을 줍니다. 풍부한 비타민 및 미네랄을 함유해 맛과 영양을 동시에 제공하는 영양간식으로 지퍼백 형태로 제작되어 개봉 후에도 신선하게 보관 가능합니다. 항상 신선한 물과 함께 급여해 주시기 바랍니다. 생후 12개월 미만의 고양이에게 급여하지 않는 것이 좋습니다.</p>
                <h6> 특징 </h6>
                <ul>
                    <li>닭고기, 칠면조, 2가지 맛을 즐길 수 있는 영양간식</li>
                    <li>바삭바삭한 질감으로 치아건강에 도움</li>
                    <li>다양한 키블 모양</li>
                    <li>풍부한 비타민 및 미네랄 함유</li>
                </ul>
            </div>
            <hr>
        </div>

        <div class="VI_contents">
            <div class="VI_pics">
                <img src="/img/productsView/View_img1.jpg">
                <img src="/img/productsView/View_img2_1.jpg">
                <img src="/img/productsView/View_img2_2.jpg">
                <img src="/img/productsView/View_img2_3.jpg">
                <img src="/img/productsView/View_img3_1.jpg">
                <img src="/img/productsView/View_img3_2.jpg">
                <img src="/img/productsView/View_img3_3.jpg">
                <img src="/img/productsView/View_img3_4.jpg">
                <img src="/img/productsView/View_img3_5.jpg">
                <img src="/img/productsView/View_img3_6.jpg">
                <img src="/img/productsView/View_img3_7.jpg">
            </div>
            <div class="VI_QnA">
                <h4> 질문 / 답변 </h4>
                <img src="/img/productsView/View_QnA.jpg">
            </div>
            <div class="VI_reply">
                <h4> 구매후기 </h4>
                <img src="/img/productsView/View_reply1.jpg">
                <img src="/img/productsView/View_reply2.jpg">
                <img src="/img/productsView/View_reply3.jpg">
                <img src="/img/productsView/View_reply4.jpg">
            </div>
        </div>

    </div>
</div>
