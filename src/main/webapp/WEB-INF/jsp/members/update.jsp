<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<c:if test="${empty UID}">--%>
<%--    <script>--%>
<%--        alert("로그인이 필요한 페이지입니다.")--%>
<%--        location.href = '/members/sign-in';--%>
<%--    </script>--%>
<%--</c:if>--%>

<%--<c:if test="${not empty UID}">--%>
<div class="list_header">
    <div class="col-9 list_nav">
        <span>홈</span>
        <span class="list_nav_bi bi bi-chevron-right"></span>
        <span>마이페이지</span>
        <span class="list_nav_bi bi bi-chevron-right"></span>
        <span>회원정보 수정</span>
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
                <a class="MY_nothere" href="/mypage/mileage">
                    <span>마일리지</span>
                    <span class="bi bi-chevron-right MY_chevron"></span>
                </a>
            </li>
            <li class="MY_li">
                <a class="MY_here" href="/mypage/update">
                    <span>정보수정</span>
                    <span class="bi bi-chevron-right MY_chevron"></span>
                </a>
            </li>
        </ul>
    </div>
    <%-- 헤더 및 사이드바 --%>
    <div class="col-10 MY_maincont">
        <div>
            <h3 class="row MY_conttitle">회원정보 수정</h3>
            <div>
                <h4>나의 정보</h4>
                <br>
                <form id="MY_updateusr" style="margin-left: 15px">
                    <div class="row MY_pdupdw10">
                        <span>이름 : </span>
                        <span class="MY_pdrglf10">${UID.username}</span>
                    </div>
                    <div class="row MY_pdupdw10">
                        <span>연락처 : </span>
                        <span class="MY_pdrglf10">${UID.phone}</span>
                        <button type="button" class="btn MY_usrupdbtn" id="MY_phmodalbtn"
                                data-toggle="modal" data-target="#MY_phoneModal">수정하기
                        </button>
                    </div>
                    <div class="row MY_pdupdw10">
                        <span>비밀번호  </span>
                        <button type="button" class="btn MY_usrupdbtn" id="MY_pwmodalbtn"
                                data-toggle="modal" data-target="#MY_passwdModal">수정하기
                        </button>
                    </div>
                    <div class="row MY_pdupdw10">
                        <span>알림설정  </span>
                        <div class="MY_pdrglf10">
                            <div class="custom-control custom-switch">
                                <input type="checkbox" class="custom-control-input" id="MY_updatsw1">
                                <label class="custom-control-label" for="MY_updatsw1">이메일</label>
                            </div>
                            <div class="custom-control custom-switch">
                                <input type="checkbox" class="custom-control-input" id="MY_updatsw2">
                                <label class="custom-control-label" for="MY_updatsw2">SMS</label>
                            </div>
                        </div>
                    </div>
                    <div class="row MY_pdupdw10" style="margin-left: 15px">
                        <button type="button" class="btn MY_usrupdbtn" id="MY_updcompbtn">입력완료</button>
                        <button type="button" class="btn MY_usrupdbtn" id="MY_updcnclbtn" style="margin-left: 10px"
                                onclick="location.href='/mypage/orders'">돌아가기
                        </button>
                    </div>

                    <input type="hidden" id="uno" name="uno" value="${UID.uno}">
                    <input type="hidden" id="phone" name="phone" value="${UID.phone}">
                    <input type="hidden" id="passwd" name="passwd" value="${UID.passwd}">

                </form>

            </div>
        </div>
    </div>
    <%-- 페이지 별 내용 --%>
</div>
<%--</c:if>--%>

<%-- 비밀번호 변경 모달. --%>
<div class="modal fade" id="MY_passwdModal" tabindex="-1"
     aria-labelledby="passwdModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="passwdModalLabel">비밀번호 수정</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="MY_cngpasswdfrm">
                    <div>
                        <input type="password" id="MY_inputoldpw"
                               placeholder="기존 비밀번호를 입력하세요">
                    </div>

                    <div>
                        <input type="password" id="MY_inputnewpw"
                               placeholder="새 비밀번호를 입력하세요">
                    </div>

                    <div>
                        <input type="password" id="MY_inputnewpw_re"
                               placeholder="확인을 위해 다시 입력하세요">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="MY_updpwbtn">비밀번호 변경</button>
            </div>
        </div>
    </div>
</div>


<%-- 연락처 변경 모달. --%>
<div class="modal fade" id="MY_phoneModal" tabindex="-1"
     aria-labelledby="phoneModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="phoneModalLabel">연락처 수정</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="MY_cngphonefrm">
                    <div>
                        <input type="tel" id="MY_inputph"
                               placeholder="설정하실 연락처를 입력하세요">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="MY_updphbtn">연락처 변경</button>
            </div>
        </div>
    </div>
</div>
