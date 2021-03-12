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
        <div>
            <h2 style="margin: 0; font-weight: bold; font-size: 24px;">장바구니</h2>
        </div>
    </div>
    <div class="col-9 basket_order" style="bottom: 32px; margin-bottom: -20px">
        <span style="color: #A200C7;">01 장바구니 </span><span class="bi bi-chevron-right"> 02 주문결제 </span><span class="bi bi-chevron-right"> 03 결제완료</span>
    </div>
    <div class="col-9" style="margin: 0 auto;">
        <div style="border: 1px solid rgba(235, 235, 235, 1); padding: 30px 116px 0;">



            <div style="padding-bottom: 30px;">
                <div style="padding-bottom: 5px; border-bottom: 2px solid rgba(60, 60, 67, 0.6)">
                    <h2 style="font-size: 16px; font-weight: 700">대통령발송 상품</h2>
                </div>
                <div>
                    <div style="display: flex; padding: 0; border-bottom: 1px solid rgba(235, 235, 235, 1);">
                        <div style="padding-bottom: 10px; width: 587px; border-right: 1px solid rgba(235, 235, 235, 1)">
                            <div style="padding: 20px; display: flex; cursor: pointer">
                                <div>
                                    <img src="#" style="width: 110px; height: 110px;">
                                </div>
                                <div style="width: 100%; display: flex; padding-left: 14px; flex-direction: column; min-height: 110px;">
                                    <div style="margin: 0 0 4px 0; font-size: 15px; font-weight: bold">상품 이름</div>
                                    <div style="color: #389f00; font-size: 12px; font-weight: bold">재고 유무</div>
                                    <div style="color: darkgray; font-size: 10px; font-weight: bold">종류</div>
                                </div>
                            </div>
                        </div>
                        <div style="width: 550px; display: flex; padding: 0;">
                            <div style="padding: 10px; display: flex; height: 100%; border-right: 1px solid rgba(235, 235, 235, 1); flex-shrink: 0; align-items: center;">
                                <div style="width: 132px; height: 42px; margin: 0 auto;  display: flex;">
                                    <button class="bi bi-dash btn btn-outline-dark" style="width: 42px; height: 42px;" type="button"></button>
                                    <div style="padding-left: 20px; width: 52px; height: 42px; border-radius: 4px; display: flex; align-items: center; border-top: 1px solid black; border-bottom: 1px solid black;">1</div>
                                    <button class="btn btn-outline-dark bi bi-plus" style="width: 42px; height: 42px;"></button>
                                </div>
                            </div>
                            <div style="display: flex; padding: 10px; text-align: center; border-right: 1px solid rgba(235, 235, 235, 1); justify-content: center; width: 100%; height: 100%; flex-direction: column;">
                                <div style="font-size: 14px; color: darkgray;">할인 받은 금액 : 00,000(00%)</div>
                                <div style="font-size: 19px; align-items: center; justify-content: center; font-weight: bold">00,000원</div>
                            </div>
                            <div style="padding: 10px; width: 168px; height: 100%; margin: 0; display: flex; flex-shrink: 0; flex-direction: column; justify-content: center;">
                                <button style="margin: 7px 0; padding: 2px 8px; color: rgba(138, 138, 142, 1); border: 0 none; background-color: rgba(244, 244, 245, 1); font-size: 14px;">
                                    <span style="justify-content: inherit">삭제</span>
                                </button>
                                <button style="margin: 7px 0; padding: 2px 8px; color: rgba(162, 0, 199, 1); border: 0 none; background-color: rgba(248, 235, 251, 1); font-size: 14px;">
                                    <span style="justify-content: inherit">나중에 사기</span>
                                </button>
                            </div>
                        </div>
                    </div> <%-- 반복문 --%>
                </div>
            </div>
            <div style="display: flex; padding: 0 116px; border-top: 4px solid rgba(162, 0, 199, 1);border-bottom: 0 none; margin: 0 -116px">
                <div style="width: 50%; display: flex; padding: 22px 0; border-right: 1px solid rgba(235, 235, 235, 1);">
                    <div style="padding: 0 18px; flex-grow: 1; align-items: flex-start; flex-direction: column; justify-content: center;
                                    display: flex;">
                        <div style="font-size: 12px; font-weight: bold; color: rgba(60, 60, 67, 0.6); padding-left: 0;">총 상품금액</div>
                        <strong style="font-size: 16px; text-align: center">00,000원</strong>
                    </div>
                    <div style="padding: 0 18px; flex-grow: 1; align-items: flex-start; flex-direction: column; justify-content: center;
                                    display: flex; border-left: 1px solid rgba(235, 235, 235, 1);">
                        <div style="font-size: 12px; font-weight: bold; color: rgba(60, 60, 67, 0.6); padding-left: 0;">배송비</div>
                        <strong style="font-size: 16px; text-align: center">+3,000원</strong>
                    </div>
                    <div style="padding: 0 18px; flex-grow: 1; align-items: flex-start; flex-direction: column; justify-content: center;
                                    display: flex; border-left: 1px solid rgba(235, 235, 235, 1);">
                        <div style="font-size: 12px; font-weight: bold; color: rgba(60, 60, 67, 0.6); padding-left: 0;">총 결제금액</div>
                        <strong style="font-size: 16px; text-align: center">00,000원</strong>
                    </div>
                </div>
                <div style="width: 50%; padding: 22px 0; display: flex; align-items: center">
                    <div style="text-align: right; margin-left: auto; padding-right: 22px;">
                        <strong style="font-size: 20px">합계 : 00,000원</strong>
                        <div style="font-size: 13px; display: block; font-weight: 500;">원 추가 주문시 <strong>무료 배송</strong></div>
                    </div>
                    <button type="button" style="background-color: rgba(162, 0, 199, 1); width: 212px; height: 54px; color: white; border: none; border-radius: 4px">구매하기</button>
                </div>
            </div>


        </div>
    </div>
</div>