<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${empty UID}">
    <script>
        alert("로그인이 필요한 페이지입니다.")
        location.href = '/member/login';
    </script>
</c:if>

<div class="page_header">
    <div class="page_nav">
        <span>홈</span>
        <span class="page_nav_bi bi bi-chevron-right"></span>
        <span>마이페이지</span>
    </div>
</div>

<div class="body">

    <div class="my_nav">
        <img src="/img/mypage/AddPet_pic.png">
        <div class="my_navInfo">
            <div class="my_navName">조승희${mvo.username}</div>
            <div class="my_navID">binary_one21@naver.com${mvo.email}</div>
        </div>


        <div class="my_navBtns">
            <button class="my_navBtn" onclick="location.href='/mypage/frequent'">
                <b>자주구매</b>
                <div class="">
                    <i class="bi bi-bag"></i>
                    <span class="my_navNum">0</span>
                </div>
            </button>

            <button class="my_navBtn" onclick="location.href='/mypage/wishlist'">
                <b>관심</b>
                <div class="">
                    <i class="bi bi-heart"></i>
                    <span class="my_navNum">0</span>
                </div>
            </button>

            <button class="my_navBtn" onclick="location.href='/mypage/recentview'">
                <b>최근본 </b>
                <div class="">
                    <i class="bi bi-stopwatch"></i>
                    <span class="my_navNum">0</span>
                </div>
            </button>
        </div>
    </div>

    <div class="my_side">
        <p> 구매 후기 </p>
        <div class="my_side1">
            <div class="my_sideText">작성 가능한</div>
            <div class="my_sideNum">0</div>
            <div class="my_side1Divider"></div>
            <div class="my_sideText">이미 작성한</div>
            <div class="my_sideNum">0</div>
        </div>
        <p> 나의 쇼핑 </p>
        <div class="my_side1Divider"></div>
        <div class="my_sideSub">
            <p onclick="location.href='/mypage/order'">주문 <i class="bi bi-dot"></i> 배송</p>
            <p onclick="location.href='/mypage/cs'">고객센터</p>
            <p onclick="location.href='/mypage/sticker'">스티커</p>
        </div>
        <p> 내 정보 </p>
        <div class="my_side1Divider"></div>
        <div class="my_sideSub">
            <p onclick="location.href='/mypage/update'">정보 수정</p>
            <p onclick="location.href='/mypage/add-pet'">고양이 등록</p>
        </div>
    </div>


    <%-- 헤더 및 사이드바 --%>
    <div class="col-10 MY_maincont">
        <h3 class="row MY_conttitle">주문 · 배송</h3>
        <hr>
        <ul class="nav nav-tabs" id="MY_orders" role="tablist">
            <li class="nav-item" role="presentation" style="margin: 0">
                <a class="nav-link active" id="MY_ordstat"
                   data-toggle="tab" href="#ordstattb" role="tab" aria-controls="ordstattb"
                   aria-selected="true">주문 · 배송</a>
            </li>
            <li class="nav-item" role="presentation">
                <a class="nav-link" id="MY_ordcancl"
                   data-toggle="tab" href="#ordcancltb" role="tab" aria-controls="ordcancltb"
                   aria-selected="false">주문취소</a>
            </li>
            <li class="nav-item" role="presentation">
                <a class="nav-link" id="MY_ordexchan"
                   data-toggle="tab" href="#exchantb" role="tab" aria-controls="exchantb"
                   aria-selected="false">교환하기</a>
            </li>
            <li class="nav-item" role="presentation">
                <a class="nav-link" id="MY_ordrefund"
                   data-toggle="tab" href="#refundtb" role="tab" aria-controls="refundtb"
                   aria-selected="false">반품하기</a>
            </li>
        </ul>
        <div class="tab-content" id="ordstatcont"  style="min-height: 500px">
            <div class="tab-pane fade show active" id="ordstattb" role="tabpanel" aria-labelledby="MY_ordstat">
                <div class="MY_ordlstNON">
                    <span class="bi bi-bag" style="font-size: 50px"></span>
                    <strong style="display: block;">주문 및 배송조회 가능한 내역이 없습니다.</strong>
                </div>
            </div>
            <div class="tab-pane fade" id="ordcancltb" role="tabpanel" aria-labelledby="MY_ordcancl">
                <div class="MY_ordlstNON">
                    <span class="bi bi-bag" style="font-size: 50px"></span>
                    <strong style="display: block;">주문취소 가능한 내역이 없습니다.</strong>
                </div>
            </div>
            <div class="tab-pane fade" id="exchantb" role="tabpanel" aria-labelledby="MY_ordexchan">
                <div class="MY_ordlstNON">
                    <span class="bi bi-bag" style="font-size: 50px"></span>
                    <strong style="display: block;">교환 가능한 내역이 없습니다.</strong>
                </div>
            </div>
            <div class="tab-pane fade" id="refundtb" role="tabpanel" aria-labelledby="MY_ordrefund">
                <div class="MY_ordlstNON">
                    <span class="bi bi-bag" style="font-size: 50px"></span>
                    <strong style="display: block;">반품 가능한 내역이 없습니다.</strong>
                </div>
            </div>
        </div>


    </div>
    <%-- 페이지 별 내용 --%>
    <br class="clear">
</div>
