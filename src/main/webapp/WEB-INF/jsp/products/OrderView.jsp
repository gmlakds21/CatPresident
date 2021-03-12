<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%--<c:if test="${empty UID}">--%>
<%--    <script>--%>
<%--        alert("로그인이 필요한 페이지 입니다.")--%>
<%--        location.href='/members/sign-in';--%>
<%--    </script>--%>
<%--</c:if>--%>

<%--<c:if test="${not empty UID}">--%>
<div>
    <!-- list header -->
    <div class="list_header">
        <div class="col-9 list_nav">
            <span> 홈 </span>
            <span class="list_nav_bi bi bi-chevron-right"> </span>
            <span> 주문결제 </span>
            <span class="list_nav_bi bi bi-chevron-right"> </span>
        </div>
    </div>
    <div class="col-9 list_title">
        <span>주문결제</span>
    </div>
    <div class="col-4 order_nav">
        <span>01 장바구니</span>
        <span class="list_nav_bi bi bi-chevron-right"> </span>
        <span>02 주문결제</span>
        <span class="list_nav_bi bi bi-chevron-right"> </span>
        <span>03 결제완료</span>
    </div>
</div><!-- list_header -->

<!-- main -->
<div class="col-9 marginCenter OR_main">
    <div class="col-10 list_body marginCenter">

        <!-- 휴대전화 인증 -->
        <div class="OR_marginTop30 OR_bottom">
            <div>
                <span class="_span">휴대전화 인증</span>
                <hr class="OR_hr">
            </div>
            <div class="row">
                <div class="col-10">
                    <div class="form-group row">
                        <label class="col-2 col-form-label text-left" for="phone">휴대전화</label>
                        <input type="text" id="phone" name="phone" class="form-control col-3"
                               placeholder="휴대전화 번호를 입력하세요.">
                        <button type="button" class="col-2 btn OR_btn" id="send" onclick="clickSend()">전송</button>
                    </div>
                    <div class="form-group row">
                        <label class="col-2 col-form-label text-left" for="checkNum">인증번호</label>
                        <input type="text" id="checkNum" name="checkNum" class="form-control col-5"
                               disabled="" placeholder="인증번호를 입력하세요.">
                        <input type="hidden" id="randomNum" value="">
                    </div>
                    <div class="form-group row">
                        <label class="col-2 col-form-label text-left"></label>
                        <button type="button" class="col-5 btn OR_btn2" id="checkNumBtn" onclick="checkNum()" disabled="">
                            인증번호 확인
                        </button>
                        <span class="falseNum" id="falseNum">인증번호를 정확하게 입력해주세요.</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- 배송정보 -->
        <div class="OR_marginTop30 OR_bottom">
            <div>
                <span class="_span">배송정보</span>
            </div>
            <div class="OR_marginTop15">
                <hr class="OR_hr">
                <table>
                    <tr>
                        <td>
                            <button type="button" class="btn">최근 배송지</button>
                        </td>
                        <td>
                            <button type="button" class="btn addrBtn" id="newAddr" onclick="newAddr()">신규 배송지</button>
                        </td>
                        <td>
                            <button type="button" class="btn" id="selectAddr" onclick="selectAddr()">배송지 선택</button>
                        </td>
                    </tr>
                </table>
                <hr>
                <div class="row" id="newAddr2">
                    <div class="col-10">
                        <div class="form-group row">
                            <label class="col-2 col-form-label text-left" for="recip">받는사람</label>
                            <input type="text" id="recip" name="recip" class="form-control col-5"
                                   placeholder="받으시는 분의 성함을 입력하세요.">
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label text-left" for="addrPhone">휴대전화</label>
                            <input type="text" id="addrPhone" name="addrPhone" class="form-control col-5"
                                   placeholder="휴대전화 번호를 입력하세요.">
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label text-left" for="postNum">배송지 주소</label>
                            <input type="text" id="postNum" name="postNum" class="form-control col-3"
                                   placeholder="우편번호를 입력하세요.">
                            <button type="button" class="col-2 btn OR_btn" data-toggle="modal" data-target="#ZIP_modal">우편번호</button>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label text-left" for="addr1"></label>
                            <input type="text" id="addr1" name="addr1" class="form-control col-5"
                                   placeholder="주소를 입력하세요.">
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label text-left" for="addr2"></label>
                            <input type="text" id="addr2" name="addr2" class="form-control col-5"
                                   placeholder="상세주소를 입력하세요.">
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label text-left">배송 요청사항</label>
                            <select class="form-control col-5" id="selbox" name="selbox">
                                <option>배송요청 사항을 선택하세요.</option>
                                <option>배송전 연락 바랍니다.</option>
                                <option>부재시 휴대전화으로 연락주세요.</option>
                                <option>부재시 경비실에 맡겨주세요.</option>
                                <option>부재시 문앞에 놓아주세요.</option>
                                <option value="selOption">직접 입력</option>
                            </select>
                        </div>

                        <%-- 홈페이지 로딩시 출력되지 않음 --%>
                        <div class="form-group row" id="selboxDirect" name="selboxDirect">
                            <label class="col-2 col-form-label text-left"></label>
                            <textarea rows="6" class="col-5 text-area OR_textarea"
                                      placeholder="배송 요청 사항을 입력하세요. (최대 50자)"></textarea>
                        </div>
                    </div>
                </div>

                <%-- 최근 배송지 버튼 클릭시 표시 --%>
                <div class="row" id="selectAddr2">
                    <div class="col-10 OR_marginbottom15">
                        <span>등록된 배송지가 없습니다</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- 주문상품 -->
        <div style="margin-top: 30px">
            <div>
                <span class="_span">주문상품</span>
            </div>

            <div class="OR_marginTop15">
                <hr class="OR_hr">
            </div>

            <div class="row OR_drag">
                <div class="col-12">
                    <div class="OR_list_title">
                        <div class="OR_list_box">
                            <div class="OR_bold">대통령 발송상품</div>
                            <div class="OR_color OR_bold">발송일 : 오늘</div>
                        </div>
                    </div>
                    <div class="row col-12 OR_list">
                        <c:forEach begin="0" end="5">
                            <div class="col-3 ">
                                <img src="#" class="OR_img">
                            </div>
                            <div class="col-6 OR_product">
                                <p>제품1</p>
                                <p>수량 : 2개</p>
                            </div>
                            <div class="col-3 OR_attr">
                                <span>38,000원</span>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>

<%--        <!-- 할인쿠폰 -->--%>
<%--        <div style="margin-top: 30px">--%>
<%--            <div class="OR_fontDrag">--%>
<%--                <span class="_span">할인쿠폰</span>--%>
<%--                <button type="button" class="btn cpbtn" id="coupon" name="coupon"--%>
<%--                onclick="clickCoupon()">--%>
<%--                    보유쿠폰: 0장 >--%>
<%--                </button>--%>
<%--            </div>--%>

<%--            <div class="col-12 OR_marginTop15 OR_frame">--%>
<%--                <span class="OR_bold" id="applyCp">적용된 쿠폰이 없습니다.</span>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--        <!-- 보유현금 -->--%>
<%--        <div style="margin-top: 30px">--%>
<%--            <div>--%>
<%--                <span class="_span">보유현금</span>--%>
<%--            </div>--%>

<%--            <div class="col-12 OR_marginTop15 OR_frame OR_cash">--%>
<%--                <div>--%>
<%--                    <span>현재보유현금: </span>--%>
<%--                    <span id="realCash">700원</span>--%>
<%--                    <input type="checkbox" id="cash" name="cash" class="check-box">--%>
<%--                    전액사용--%>
<%--                </div>--%>
<%--                <div>--%>
<%--                    <input type="text" id="cash2" name="cash2" value="0" class="form-control col-3">--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>

        <!-- 최종 결제금액 -->
        <div style="margin-top: 30px">
            <div>
                <span class="_span">최종 결제금액</span>
            </div>

            <div class="col-12 OR_marginTop15 OR_pay">
                <div class="row">
                    <div class="col-3 OR_pay_first">
                        <span>총 상품 금액</span>
                    </div>
                    <div class="col-9 OR_pay_secon">
                        <span>499,400원</span>
                    </div>
                </div>
                <div class="row">
                    <div class="col-3 OR_pay_first">
                        <span>배송비</span>
                    </div>
                    <div class="col-9 OR_pay_secon">
                        <span>무료</span>
                    </div>
                </div>
                <div class="row">
                    <div class="col-3 OR_pay_first">
                        <span>쿠폰</span>
                    </div>
                    <div class="col-9 OR_pay_secon">
                        <span>0원</span>
                    </div>
                </div>
                <div class="row">
                    <div class="col-3 OR_pay_first">
                        <span>보유현금</span>
                    </div>
                    <div class="col-9 OR_pay_secon">
                        <span>0원</span>
                    </div>
                </div>
                <div class="row OR_pay_font">
                    <div class="col-3 OR_pay_first">
                        <span>총 결제금액</span>
                    </div>
                    <div class="col-9 OR_pay_secon">
                        <span id="payCash">499,400원</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- 결제방법 -->
        <div style="margin-top: 30px">
            <div>
                <span class="_span">결제방법</span>
            </div>

            <div class="col-12 OR_marginTop15 OR_frame OR_marginbottom">
                <div class="OR_payment">
                    <input type="radio" id="godae" name="radioTxt" class="radio-button" value="고대페이">
                    <img src="/img/payment_icon/godae_icon.png">
                    <span class="OR_payment_font">고대페이</span>
                </div>
                <div class="OR_payment">
                    <input type="radio" id="credit" name="radioTxt" class="radio-button" value="신용카드">
                    <img src="/img/payment_icon/credit_card_icon.png">
                    <span>신용카드</span>
                </div>
                <div class="OR_payment">
                    <input type="radio" id="naver" name="radioTxt" class="radio-button" value="네이버페이">
                    <img src="/img/payment_icon/naver_icon.png">
                    <span>네이버페이</span>
                </div>
                <div class="OR_payment">
                    <input type="radio" id="kakao" name="radioTxt" class="radio-button" value="카카오페이">
                    <img src="/img/payment_icon/kakao_icon.png">
                    <img src="/img/payment_icon/kakao_text.png" style="height: 25px; width: 100px; margin-left: 13px">
                </div>
                <div class="OR_payment">
                    <input type="radio" id="payco" name="radioTxt" class="radio-button" value="PAYCO">
                    <img src="/img/payment_icon/payco_icon.png">
                    <img src="/img/payment_icon/payco_text.png" style="height: 18px; width: 90px; margin-left: 13px">
                </div>
                <div class="OR_payment">
                    <input type="radio" id="bank" name="radioTxt" class="radio-button" value="무통장 계좌입금">
                    <img src="/img/payment_icon/bank_icon.png">
                    <span>무통장계좌입금</span>
                </div>
                <div class="OR_payment">
                    <input type="radio" id="realBank" name="radioTxt" class="radio-button" value="실시간 계좌이체">
                    <img src="/img/payment_icon/remit_icon.png">
                    <span>실시간 계좌이체</span>
                </div>
                <div class="OR_payment">
                    <input type="radio" id="phonePay" name="radioTxt" class="radio-button" value="휴대폰결제 ">
                    <img src="/img/payment_icon/mobile_icon.png">
                    <span>휴대전화</span>
                </div>
            </div>
        </div>
    </div>
</div>
<%--</c:if>--%>

<!-- footer -->
<div class="col-9 marginCenter OR_footer">
    <div class="col-10 list_body marginCenter">
        <div class="text-center OR_footer_attr">
            <span>위 주문 내용을 확인하였으며 결제에 동의합니다</span>
        </div>
        <div class="text-center">
            <button type="button" id="payok" name="payok" class="btn OR_payokBtn" onclick="payok()">
                결제하기
            </button>
        </div>
    </div>
</div>

<!-- 전송 버튼 모달 -->
<div class="modal fade " id="sendok">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header"> <!-- 헤더 -->
                <span class="modal-title OR_modal_title" id="random"></span>
            </div>
            <div class="modal-body text-center"> <!-- 본문 -->
                <span>표시된 숫자를 인증번호란에 입력주세요</span>
                <button type="button" class="btn btnAttr" id="closeSend" onclick="clickOk()">
                    확인
                </button>
            </div>
        </div>
    </div>
</div>
<!-- 전송 버튼 모달 -->

<%-- 우편 모달 --%>
<div class="modal fade" id="ZIP_modal" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">우편번호 찾기</h4>
                <button type="button" class="btn ZIP_closebtn" id="ZIP_modalx">
                    <i class="bi bi-x"></i>
                </button>
            </div>
            <hr>
            <div class="modal-body">
                <form>
                    <div class="form-group row justify-content-center">
                        <div class="col-8 ZIP_findtext">
                            <span for="dong">
                                검색하실 주소의 동 이름을 입력하세요 <br>
                                지역의 읍/면/동의 이름을 공백없이 입력하신 후, [검색하기] 버튼을 클릭하세요
                            </span>
                        </div>
                    </div>
                    <div class="form-group row justify-content-center">
                        <div class="col-1"></div>
                        <div class="col-5">
                            <input type="text" id="dong" name="dong"
                                   class="form-control border-primary">
                        </div>
                        <div class="col-3">
                            <button type="button" id="ZIP_find" class="btn btn-primary">
                                <i class="bi bi-search"></i>검색하기
                            </button>
                        </div>
                    </div>
                    <div class="form-group row justify-content-center">
                        <div class="col-8 marginCenter ZIP_list">
                            <select id="ZIP_addr" name="ZIP_addr"
                                    class="form-control" size="10">
                            </select>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer justify-content-end">
                <button type="button" class="btn btn-danger" id="ZIP_sendbtn2">
                    <i class="bi bi-check2-circle"></i> 선택하고 닫기
                </button>
            </div>
        </div>
    </div>
</div>
<!-- 우편 모달 -->

<!-- 결제하기 모달 -->
<div class="modal fade " id="sendpay">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header"> <!-- 헤더 -->
                <span class="modal-title OR_modal_pay" id="pay">결제하기</span>
            </div>
            <div class="modal-body text-center"> <!-- 본문 -->
                <span id="pay2"></span>
                <button type="button" class="btn btnAttr" id="checkPay" onclick="payOk()">
                    결제 완료
                </button>
            </div>
        </div>
    </div>
</div>
<!-- 결제하기 모달 -->

<%--<!-- 할인쿠폰 버튼 모달 -->--%>
<%--<div class="modal fade " id="sendCoupon">--%>
<%--    <div class="modal-dialog modal-dialog-centered">--%>
<%--        <div class="modal-content">--%>
<%--            <div class="modal-header"> <!-- 헤더 -->--%>
<%--                <span class="modal-title OR_modal_Coupon">할인쿠폰</span>--%>
<%--            </div>--%>
<%--            <div class="modal-body text-center"> <!-- 본문 -->--%>
<%--                <div class="OR_newCoupon1">--%>
<%--                    <div id="newCpBtn">--%>
<%--                        <button type="button" class="btn OR_newCpBtn" id="newCoupon2" onclick="openNewCoupon()">--%>
<%--                            할인쿠폰 등록--%>
<%--                        </button>--%>
<%--                    </div>--%>
<%--                    <div id="cpNumber">--%>
<%--                        <span class="" id="cpNum2" value=""></span>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div>--%>
<%--                    <div>--%>
<%--                        <button type="button" class="btn OR_applyBtn" id="couponOk" onclick="sendCpNum()">--%>
<%--                            적용하기--%>
<%--                        </button>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--<!-- 할인쿠폰 버튼 모달 -->--%>

<%--<!-- 쿠폰 등록하기 버튼 모달 -->--%>
<%--<div class="modal fade " id="couponWrite">--%>
<%--    <div class="modal-dialog modal-dialog-centered">--%>
<%--        <div class="modal-content">--%>
<%--            <div class="modal-header"> <!-- 헤더 -->--%>
<%--                <span class="modal-title OR_modal_Coupon">쿠폰등록</span>--%>
<%--            </div>--%>
<%--            <div class="modal-body text-center"> <!-- 본문 -->--%>
<%--                <div>--%>
<%--                    <span>등록하실 쿠폰번호를 입력하세요.</span>--%>
<%--                </div>--%>
<%--                <div class="OR_cou_attr">--%>
<%--                    <input type="text" class="form-control col-7" id="cpNum1" placeholder="쿠폰번호를 입력하세요.">--%>
<%--                </div>--%>
<%--                <div>--%>
<%--                    <button type="button" class="btn OR_canCoupon" id="canCoupon" onclick="canCoupon()">--%>
<%--                        취소--%>
<%--                    </button>--%>
<%--                    <button type="button" class="btn OR_okCoupon" id="okCoupon" onclick="okCoupon()">--%>
<%--                        확인--%>
<%--                    </button>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<!-- 쿠폰 등록하기 버튼 모달 -->