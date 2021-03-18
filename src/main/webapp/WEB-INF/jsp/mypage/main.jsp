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

    <br class="clear">
</div>