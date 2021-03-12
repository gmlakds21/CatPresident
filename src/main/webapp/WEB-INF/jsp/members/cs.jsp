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
        <span>고객센터</span>
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
                <a class="MY_here" href="/mypage/cs">
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
                <a class="MY_nothere" href="/mypage/mileage">
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
        <h3 class="row MY_conttitle">고객센터</h3>
        <p style="margin:0; font-weight:bold">운영시간 : 오전 9시 ~ 오후 6시 (주말/공휴일 휴무)</p>
        <p style="font-weight: bold">채팅문의를 이용하시면 보다 빠른 상담이 가능합니다.</p>

        <div class="row" style="height: 150px">

            <div class="col-3 MY_roundbox">
                <div class="MY_csboxtxt">
                    <div class="bi bi-file-text"></div>
                    <div>공지사항</div>
                </div>
            </div>

            <div class="col-3 MY_roundbox">
                <div class="MY_csboxtxt">
                    <div class="bi bi-chat-left-dots"></div>
                    <div>채팅문의</div>
                </div>
            </div>

            <div class="col-3 MY_roundbox">
                <div class="MY_csboxtxt">
                    <div class="bi bi-info-circle"></div>
                    <div>1:1문의</div>
                </div>
            </div>

            <div class="col-3 MY_roundbox">
                <div class="MY_csboxtxt">
                    <div class="bi bi-headset"></div>
                    <div>전화문의</div>
                </div>
            </div>

        </div>
        <%-- 고객상담 버튼 --%>
        <hr>
        <div class="row MY_cssrch input-group mb-3" style="margin: 0 auto">
            <input type="text" class="form-control MY_noborder" placeholder="검색어를 입력하세요">
            <div class="input-group-append">
                <button class="btn btn-outline-secondary MY_noborder MY_cssrchbtn" type="button">
                    <i class="bi bi-search"></i>
                </button>
            </div>
        </div> <%-- 고객상담 검색 --%>
        <div>
            <hr>
            <ul class="nav nav-pills" id="MY_cstab" role="tablist">
                <li class="nav-item" role="presentation" style="margin: 0">
                    <a class="btn MY_csslctbtn" data-toggle="pill"
                       href="#MY_freqQNA" role="tab"
                       aria-controls="MY_QNA" aria-selected="true">자주 묻는 질문</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="btn MY_csslctbtn" data-toggle="pill"
                       href="#MY_cssrv" role="tab"
                       aria-controls="pills-profile" aria-selected="false">회원서비스</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="btn MY_csslctbtn" data-toggle="pill"
                       href="#MY_cspay" role="tab"
                       aria-controls="pills-contact" aria-selected="false">주문/결제</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="btn MY_csslctbtn" data-toggle="pill"
                       href="#MY_csdeliv" role="tab"
                       aria-controls="pills-contact2" aria-selected="false">배송</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="btn MY_csslctbtn" data-toggle="pill"
                       href="#MY_csrefund" role="tab"
                       aria-controls="pills-contact3" aria-selected="false">취소/반품교환</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="btn MY_csslctbtn" data-toggle="pill"
                       href="#MY_csmerit" role="tab"
                       aria-controls="pills-contact4" aria-selected="false">사이트 이용/혜택</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="btn MY_csslctbtn" data-toggle="pill"
                       href="#MY_csdc" role="tab"
                       aria-controls="pills-contact5" aria-selected="false">할인쿠폰</a>
                </li>
            </ul>
            <br>
            <div class="tab-content" id="MY_cstbcontents" style="min-height: 500px">
                <div class="tab-pane fade" id="MY_freqQNA" role="tabpanel" >
                    <div class="accordion" id="freqQNAtb">
                        <div class="card">
                            <div class="card-header" id="MY_q1">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_a1"
                                            aria-expanded="true" aria-controls="MY_a1">
                                       질문1
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_a1" class="collapse" aria-labelledby="MY_q1" data-parent="#freqQNAtb">
                                <div class="card-body">
                                    답변1
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_q2">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_a2"
                                            aria-expanded="true" aria-controls="MY_a2">
                                        질문2
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_a2" class="collapse" aria-labelledby="MY_q2" data-parent="#freqQNAtb">
                                <div class="card-body">
                                    답변2
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_q3">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_a3"
                                            aria-expanded="true" aria-controls="MY_a3">
                                        질문3
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_a3" class="collapse" aria-labelledby="MY_q3" data-parent="#freqQNAtb">
                                <div class="card-body">
                                    답변1
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_q4">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_a4"
                                            aria-expanded="true" aria-controls="MY_a4">
                                        질문4
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_a4" class="collapse" aria-labelledby="MY_q4" data-parent="#freqQNAtb">
                                <div class="card-body">
                                    답변4
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_q5">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_a5"
                                            aria-expanded="true" aria-controls="MY_a5">
                                        질문1
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_a5" class="collapse" aria-labelledby="MY_q5" data-parent="#freqQNAtb">
                                <div class="card-body">
                                    답변5
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_q6">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_a6"
                                            aria-expanded="true" aria-controls="MY_a6">
                                        질문6
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_a6" class="collapse" aria-labelledby="MY_q6" data-parent="#freqQNAtb">
                                <div class="card-body">
                                    답변6
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_q7">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_a7"
                                            aria-expanded="true" aria-controls="MY_a7">
                                        질문7
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_a7" class="collapse" aria-labelledby="MY_q7" data-parent="#freqQNAtb">
                                <div class="card-body">
                                    답변7
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="MY_cssrv" role="tabpanel" >
                    <div class="accordion" id="cssrvtb">
                        <div class="card">
                            <div class="card-header" id="MY_csq1">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_csa1"
                                            aria-expanded="true" aria-controls="MY_csa1">
                                        질문1
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_csa1" class="collapse" aria-labelledby="MY_csq1" data-parent="#cssrvtb">
                                <div class="card-body">
                                    답변1
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_csq2">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_csa2"
                                            aria-expanded="true" aria-controls="MY_csa2">
                                        질문2
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_csa2" class="collapse" aria-labelledby="MY_csq2" data-parent="#cssrvtb">
                                <div class="card-body">
                                    답변2
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_csq3">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_csa3"
                                            aria-expanded="true" aria-controls="MY_csa3">
                                        질문3
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_csa3" class="collapse" aria-labelledby="MY_csq3" data-parent="#cssrvtb">
                                <div class="card-body">
                                    답변1
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_csq4">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_csa4"
                                            aria-expanded="true" aria-controls="MY_csa4">
                                        질문4
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_csa4" class="collapse" aria-labelledby="MY_csq4" data-parent="#cssrvtb">
                                <div class="card-body">
                                    답변4
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_csq5">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_csa5"
                                            aria-expanded="true" aria-controls="MY_csa5">
                                        질문1
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_csa5" class="collapse" aria-labelledby="MY_csq5" data-parent="#cssrvtb">
                                <div class="card-body">
                                    답변5
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_csq6">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_csa6"
                                            aria-expanded="true" aria-controls="MY_csa6">
                                        질문6
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_csa6" class="collapse" aria-labelledby="MY_csq6" data-parent="#cssrvtb">
                                <div class="card-body">
                                    답변6
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_csq7">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_csa7"
                                            aria-expanded="true" aria-controls="MY_csa7">
                                        질문7
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_csa7" class="collapse" aria-labelledby="MY_csq7" data-parent="#cssrvtb">
                                <div class="card-body">
                                    답변7
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="MY_cspay" role="tabpanel" >
                    <div class="accordion" id="cspaytb">
                        <div class="card">
                            <div class="card-header" id="MY_pyq1">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_pya1"
                                            aria-expanded="true" aria-controls="MY_pya1">
                                        질문1
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_pya1" class="collapse" aria-labelledby="MY_pyq1" data-parent="#cssrvtb">
                                <div class="card-body">
                                    답변1
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_pyq2">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_pya2"
                                            aria-expanded="true" aria-controls="MY_pya2">
                                        질문2
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_pya2" class="collapse" aria-labelledby="MY_pyq2" data-parent="#cssrvtb">
                                <div class="card-body">
                                    답변2
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_pyq3">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_pya3"
                                            aria-expanded="true" aria-controls="MY_pya3">
                                        질문3
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_pya3" class="collapse" aria-labelledby="MY_pyq3" data-parent="#cssrvtb">
                                <div class="card-body">
                                    답변3
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_pyq4">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_pya4"
                                            aria-expanded="true" aria-controls="MY_pya4">
                                        질문4
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_pya4" class="collapse" aria-labelledby="MY_pyq4" data-parent="#cssrvtb">
                                <div class="card-body">
                                    답변4
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_pyq5">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_pya5"
                                            aria-expanded="true" aria-controls="MY_pya5">
                                        질문1
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_pya5" class="collapse" aria-labelledby="MY_pyq5" data-parent="#cssrvtb">
                                <div class="card-body">
                                    답변5
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_pyq6">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_pya6"
                                            aria-expanded="true" aria-controls="MY_pya6">
                                        질문6
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_pya6" class="collapse" aria-labelledby="MY_pyq6" data-parent="#cssrvtb">
                                <div class="card-body">
                                    답변6
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_pyq7">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_pya7"
                                            aria-expanded="true" aria-controls="MY_pya7">
                                        질문7
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_pya7" class="collapse" aria-labelledby="MY_pyq7" data-parent="#cssrvtb">
                                <div class="card-body">
                                    답변7
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="MY_csdeliv" role="tabpanel" >
                    <div class="accordion" id="csdelivtb">
                        <div class="card">
                            <div class="card-header" id="MY_delivq1">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_deliva1"
                                            aria-expanded="true" aria-controls="MY_deliva1">
                                        질문1
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_deliva1" class="collapse" aria-labelledby="MY_delivq1" data-parent="#csdelivtb">
                                <div class="card-body">
                                    답변1
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_delivq2">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_deliva2"
                                            aria-expanded="true" aria-controls="MY_deliva2">
                                        질문2
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_deliva2" class="collapse" aria-labelledby="MY_delivq2" data-parent="#csdelivtb">
                                <div class="card-body">
                                    답변2
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_delivq3">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_deliva3"
                                            aria-expanded="true" aria-controls="MY_deliva3">
                                        질문3
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_deliva3" class="collapse" aria-labelledby="MY_delivq3" data-parent="#csdelivtb">
                                <div class="card-body">
                                    답변3
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_delivq4">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_deliva4"
                                            aria-expanded="true" aria-controls="MY_deliva4">
                                        질문4
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_deliva4" class="collapse" aria-labelledby="MY_delivq4" data-parent="#csdelivtb">
                                <div class="card-body">
                                    답변4
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_delivq5">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_deliva5"
                                            aria-expanded="true" aria-controls="MY_deliva5">
                                        질문1
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_deliva5" class="collapse" aria-labelledby="MY_delivq5" data-parent="#csdelivtb">
                                <div class="card-body">
                                    답변5
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_delivq6">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_deliva6"
                                            aria-expanded="true" aria-controls="MY_deliva6">
                                        질문6
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_deliva6" class="collapse" aria-labelledby="MY_delivq6" data-parent="#csdelivtb">
                                <div class="card-body">
                                    답변6
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_delivq7">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_deliva7"
                                            aria-expanded="true" aria-controls="MY_deliva7">
                                        질문7
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_deliva7" class="collapse" aria-labelledby="MY_delivq7" data-parent="#csdelivtb">
                                <div class="card-body">
                                    답변7
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="MY_csrefund" role="tabpanel" >
                    <div class="accordion" id="csreftb">
                        <div class="card">
                            <div class="card-header" id="MY_refq1">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_refa1"
                                            aria-expanded="true" aria-controls="MY_refa1">
                                        질문1
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_refa1" class="collapse" aria-labelledby="MY_refq1" data-parent="#csreftb">
                                <div class="card-body">
                                    답변1
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_refq2">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_refa2"
                                            aria-expanded="true" aria-controls="MY_refa2">
                                        질문2
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_refa2" class="collapse" aria-labelledby="MY_refq2" data-parent="#csreftb">
                                <div class="card-body">
                                    답변2
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_refq3">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_refa3"
                                            aria-expanded="true" aria-controls="MY_refa3">
                                        질문3
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_refa3" class="collapse" aria-labelledby="MY_refq3" data-parent="#csreftb">
                                <div class="card-body">
                                    답변3
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_refq4">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_refa4"
                                            aria-expanded="true" aria-controls="MY_refa4">
                                        질문4
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_refa4" class="collapse" aria-labelledby="MY_refq4" data-parent="#csreftb">
                                <div class="card-body">
                                    답변4
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_refq5">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_refa5"
                                            aria-expanded="true" aria-controls="MY_refa5">
                                        질문1
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_refa5" class="collapse" aria-labelledby="MY_refq5" data-parent="#csreftb">
                                <div class="card-body">
                                    답변5
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_refq6">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_refa6"
                                            aria-expanded="true" aria-controls="MY_refa6">
                                        질문6
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_refa6" class="collapse" aria-labelledby="MY_refq6" data-parent="#csreftb">
                                <div class="card-body">
                                    답변6
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_refq7">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_refa7"
                                            aria-expanded="true" aria-controls="MY_refa7">
                                        질문7
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_refa7" class="collapse" aria-labelledby="MY_refq7" data-parent="#csreftb">
                                <div class="card-body">
                                    답변7
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="MY_csmerit" role="tabpanel" >
                    <div class="accordion" id="csmertb">
                        <div class="card">
                            <div class="card-header" id="MY_merq1">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_mera1"
                                            aria-expanded="true" aria-controls="MY_mera1">
                                        질문1
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_mera1" class="collapse" aria-labelledby="MY_merq1" data-parent="#csmertb">
                                <div class="card-body">
                                    답변1
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_merq2">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_mera2"
                                            aria-expanded="true" aria-controls="MY_mera2">
                                        질문2
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_mera2" class="collapse" aria-labelledby="MY_merq2" data-parent="#csmertb">
                                <div class="card-body">
                                    답변2
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_merq3">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_mera3"
                                            aria-expanded="true" aria-controls="MY_mera3">
                                        질문3
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_mera3" class="collapse" aria-labelledby="MY_merq3" data-parent="#csmertb">
                                <div class="card-body">
                                    답변3
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_merq4">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_mera4"
                                            aria-expanded="true" aria-controls="MY_mera4">
                                        질문4
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_mera4" class="collapse" aria-labelledby="MY_merq4" data-parent="#csmertb">
                                <div class="card-body">
                                    답변4
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_merq5">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_mera5"
                                            aria-expanded="true" aria-controls="MY_mera5">
                                        질문5
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_mera5" class="collapse" aria-labelledby="MY_merq5" data-parent="#csmertb">
                                <div class="card-body">
                                    답변5
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_merq6">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_mera6"
                                            aria-expanded="true" aria-controls="MY_mera6">
                                        질문6
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_mera6" class="collapse" aria-labelledby="MY_merq6" data-parent="#csmertb">
                                <div class="card-body">
                                    답변6
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_merq7">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_mera7"
                                            aria-expanded="true" aria-controls="MY_mera7">
                                        질문7
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_mera7" class="collapse" aria-labelledby="MY_merq7" data-parent="#csmertb">
                                <div class="card-body">
                                    답변7
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="MY_csdc" role="tabpanel" >
                    <div class="accordion" id="csdctb">
                        <div class="card">
                            <div class="card-header" id="MY_dcq1">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_dca1"
                                            aria-expanded="true" aria-controls="MY_dca1">
                                        질문1
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_dca1" class="collapse" aria-labelledby="MY_dcq1" data-parent="#csdctb">
                                <div class="card-body">
                                    답변1
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_dcq2">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_dca2"
                                            aria-expanded="true" aria-controls="MY_dca2">
                                        질문2
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_dca2" class="collapse" aria-labelledby="MY_dcq2" data-parent="#csdctb">
                                <div class="card-body">
                                    답변2
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_dcq3">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_dca3"
                                            aria-expanded="true" aria-controls="MY_dca3">
                                        질문3
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_dca3" class="collapse" aria-labelledby="MY_dcq3" data-parent="#csdctb">
                                <div class="card-body">
                                    답변3
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_dcq4">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_dca4"
                                            aria-expanded="true" aria-controls="MY_dca4">
                                        질문4
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_dca4" class="collapse" aria-labelledby="MY_dcq4" data-parent="#csdctb">
                                <div class="card-body">
                                    답변4
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_dcq5">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_dca5"
                                            aria-expanded="true" aria-controls="MY_dca5">
                                        질문5
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_dca5" class="collapse" aria-labelledby="MY_dcq5" data-parent="#csdctb">
                                <div class="card-body">
                                    답변5
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_dcq6">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_dca6"
                                            aria-expanded="true" aria-controls="MY_dca6">
                                        질문6
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_dca6" class="collapse" aria-labelledby="MY_dcq6" data-parent="#csdctb">
                                <div class="card-body">
                                    답변6
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="MY_dcq7">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button"
                                            data-toggle="collapse" data-target="#MY_dca7"
                                            aria-expanded="true" aria-controls="MY_dca7">
                                        질문7
                                    </button>
                                </h2>
                            </div>
                            <div id="MY_dca7" class="collapse" aria-labelledby="MY_dcq7" data-parent="#csdctb">
                                <div class="card-body">
                                    답변7
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><%-- 자주묻는 질문 등 --%>
    </div><%-- 페이지 별 내용 --%>
</div>
</c:if>