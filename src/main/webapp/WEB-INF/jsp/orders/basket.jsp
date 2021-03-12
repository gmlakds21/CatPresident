<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<div>
    <div class="list_header">
        <div class="col-9 list_nav">
            <span> 홈 </span>
            <span class="list_nav_bi bi bi-chevron-right"> </span>
            <span> 장바구니 </span>
        </div>
    </div>
    <div class="col-9 list_title">
        <span>장바구니</span>
    </div>
</div>



<div class="col-9 marginCenter">
    <div class="BA_body">

        <c:if test="">
            <div class="BA_noitem">
                <i class="bi bi-cart3"></i><br>
                <p>장바구니에 담긴 상품이 없습니다.</p>
                <button type="button" class="btn" onclick="location.href='/'"> 메인으로 가기 </button>
            </div>
        </c:if>
            <%--
                    <c:if test=""></c:if>
            --%>
            <div class="BA_list">
                <p>대통령 발송 상품</p>
                <form id="BA_buylst">
                    <c:set var="i" value="1"/>
                    <c:forEach var="PP" items="${PPs}">
                    <div class="BA_item">
                        <div class="BA_list1">
                            <img class="BA_img" src="/img/List_img.jpg">
                        </div>
                        <div class="BA_list2"> ${PP.pname} </div>
                        <div class="BA_list3">
                            <button class="btn bi bi-dash" id="BAMinus${i}"></button>
                            <button class="btn" id="PP_amount${i}" disabled value="${PP.amount}">1</button>
                            <button class="btn bi bi-plus" id="BAPlus${i}"></button>
                        </div>
                        <div class="BA_list4">
                            <div class="BA_disco">할인 받은 금액 : 00,000(00%)</div>
                            <div class="BA_totprice"> ${PP.totprice} 원</div>
                            <input type="hidden" id="PP_price${i}" name="PP_price${i}" value="${PP.totprice}">
                        </div>
                        <div class="BA_list5">
                            <div>
                                <button class="BA_list5_btn1">삭제</button>
                            </div>
                            <div>
                                <button class="BA_list5_btn2">나중에 사기</button>
                            </div>
                            </div>
                            <br class="clear">
                        </div>
                        <input type="hidden" id="pno${i}" name="pno${i}">
                        <input type="hidden" id="amount${i}" name="amount${i}">
                        <c:set var="i" value="${i+1}"/>
                    </c:forEach>
                </form>
            </div>
            <div class="BA_total">
                <div class="BA_totalsub">
                    <div class="BA_subtitle">총 상품금액</div>
                    <div class="BA_subtext">1000 원</div>
                </div>
                <div class="BA_totalsub">
                    <div class="BA_subtitle">배송비</div>
                    <div class="BA_subtext">1000 원</div>
                </div>
                <div class="BA_totalsub">
                    <div class="BA_subtitle">총 결제금액</div>
                    <div class="BA_subtext">1000 원</div>
                </div>
                <div class="BA_totalprice">
                    <div> 합계 : 13000 원 </div>
                </div>
                <div>
                    <button type="button" class="BA_button" id="BA_okbtn"> 구매하기 </button>
                </div>
            </div>
    </div>
</div>
