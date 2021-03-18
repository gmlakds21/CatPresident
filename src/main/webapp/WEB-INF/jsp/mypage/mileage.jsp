<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${empty UID}">
    <script>
        alert("로그인이 필요한 페이지입니다.")
        location.href = '/members/sign-in';
    </script>
</c:if>

<c:if test="${not empty UID}">
<div class="list_header">
    <div class="col-9 list_nav">
        <span>홈</span>
        <span class="list_nav_bi bi bi-chevron-right"></span>
        <span>마이페이지</span>
        <span class="list_nav_bi bi bi-chevron-right"></span>
        <span>마일리지</span>
    </div>
</div>
<!-- 네비 -->
    <br>
<div id="main" class="row col-9 justify-content-center MY_pad0mgn0">

    <div id="mypghd" class="row col-12 justify-content-center MY_head MY_roundbox"
         style="padding: 0">

        <div class="row col-12" style="padding: 20px">
            <div class="col-5" style="float: left; padding: 0 0 0 20px">
                <div id="MY_hdcatpic">
                    <div class="row">
                        <img src="/img/AddPet_pic.png">
                        <div style="padding: 25px 0 0 15px">
                            <div>
                                <span style="font-size: 20px; font-weight: bold">이름</span>
                            </div>
                            <div>
                                <span style="clear: both; font-size: 17px">이메일</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-7 text-center MY_hdmenu" id="MY_hdmenu">
                <button class="MY_hmbtn" style="margin: 0 20px 0 0" onclick="location.href='/mypage/frequent'">
                    <span style="font-size: 15px;">
                        <span>자주구매</span>
                    </span>
                    <span class="MY_hmbtntxt">
                        <span class="bi bi-bag"></span>
                        <strong id="MY_hdcnt1">0</strong>
                    </span>
                </button>

                <span class="bi-chevron-right" style="margin: 0 30px 0 30px"> </span>

                <button class="MY_hmbtn" style="padding: 0 20px 0 20px" onclick="location.href='/mypage/wishlist'">
                    <span style="font-size: 15px">관심</span>
                    <span class="MY_hmbtntxt">
                        <span class="bi bi-heart"></span>
                        <strong id="MY_hdcnt2">0</strong>
                    </span>
                </button>

                <span class="bi-chevron-right" style="margin: 0 30px 0 30px"> </span>

                <button class="MY_hmbtn" style="margin: 0 0 0 20px" onclick="location.href='/mypage/recentview'">
                    <span style="font-size: 15px">최근본 </span>
                    <span class="MY_hmbtntxt">
                        <span class="bi bi-stopwatch"></span>
                        <strong id="MY_hdcnt3">0</strong>
                    </span>
                </button>
            </div>
        </div>
    </div>
</div>

<div id="mypgmn" class="row col-9 MY_pad0mgn0">
    <div class="col-2 MY_mainsidebr">
        <p>구매후기</p>
        <ul class="MY_pad0mgn0 MY_roundbox">
            <li class="MY_reviewbox" style="margin-top:5px">
                <a class="MY_revfnt" href="#"><span>작성 가능한</span>
                    <span class="MY_revcnt">0</span>
                </a>
            </li>
            <hr style="margin:5px 0 5px 0">
            <li class="MY_reviewbox">
                <a class="MY_revfnt" href="#"><span>이미 작성한</span>
                    <span class="MY_revcnt">0</span>
                </a>
            </li>
        </ul>
        <br>
        <p>나의 쇼핑</p>
        <hr>
        <ul class="MY_pad0mgn0">
            <li class="MY_li">
                <a class="MY_nothere" href="/mypage/orders">
                    <span>주문 · 배송</span>
                    <span class="bi bi-chevron-right MY_chevron"></span>
                </a>
            </li>
            <li class="MY_li">
                <a class="MY_nothere" href="/mypage/cs">
                    <span>고객센터</span>
                    <span class="bi bi-chevron-right MY_chevron"></span>
                </a>
            </li>
            <li class="MY_li">
                <a class="MY_nothere" href="/mypage/stickers">
                    <span>스티커</span>
                    <span class="bi bi-chevron-right MY_chevron"></span>
                </a>
            </li>
            <li class="MY_li">
                <a class="MY_here" href="/mypage/mileage">
                    <span>마일리지</span>
                    <span class="bi bi-chevron-right MY_chevron"></span>
                </a>
            </li>
            <li class="MY_li">
                <a class="MY_nothere" href="/mypage/update">
                    <span>정보수정</span>
                    <span class="bi bi-chevron-right MY_chevron"></span>
                </a>
            </li>
        </ul>
    </div>
    <%-- 헤더 및 사이드바 --%>
    <div class="col-10 MY_maincont">
        <h3 class="row MY_conttitle">마일리지</h3>
        <hr>
        <ul class="nav nav-tabs" id="MY_mileagestat" role="tablist">

            <li class="nav-item" role="presentation" style="margin: 0">
                <a class="nav-link active" id="MY_usablept" data-toggle="tab" href="#usablepttb" role="tab"
                   aria-controls="usablepttb" aria-selected="true">보유점수</a>
            </li>

            <li class="nav-item" role="presentation">
                <a class="nav-link" id="MY_expiredpt" data-toggle="tab" href="#expiredpttb" role="tab"
                   aria-controls="expiredpttb" aria-selected="false">소멸예정</a>
            </li>

        </ul>
        <div class="tab-content" id="mileagestatcont" style="min-height: 500px">
            <div class="tab-pane fade show active" id="usablepttb" role="tabpanel" aria-labelledby="MY_usablept">
                <div class="MY_ordlstNON">
                    <span class="bi bi-wallet-fill" style="font-size: 50px"></span>
                    <strong style="display: block;">사용 가능한 마일리지가 없습니다.</strong>
                </div>
            </div>
            <div class="tab-pane fade" id="expiredpttb" role="tabpanel" aria-labelledby="MY_expiredpt">
                <div class="MY_ordlstNON">
                    <span class="bi bi-wallet-fill" style="font-size: 50px"></span>
                    <strong style="display: block;">사용 만료된 마일리지가 없습니다.</strong>
                </div>
            </div>
        </div>

    </div>
    <%-- 페이지 별 내용 --%>
</div>
</c:if>