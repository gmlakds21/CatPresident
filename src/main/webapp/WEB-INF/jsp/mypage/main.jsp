<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:if test="${empty user}">
    <script>
        alert("로그인이 필요한 페이지입니다.")
        location.href='/members/login';
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
            <div class="my_navName">${user.username}</div>
            <div class="my_navID">${user.email}</div>
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
            <p onclick="location.href='/mypage/update'">내 정보</p>
            <p onclick="location.href='/mypage/pet_add'">고양이 등록</p>
        </div>
    </div>

    <div class="my_body">
        <p class="my_title">회원 정보</p>
        <p class="my_subTitle">나의 정보</p>
        <div class="if_body">
            <div>
                <label class="if_title">이름</label>
                <span>${user.username}</span>
            </div>
            <div>
                <label class="if_title">이메일</label>
                <span>${user.email}</span>
            </div>
            <div>
                <label class="if_title">휴대전화</label>
                <span>${user.phone}</span>
                <span>
                    <button data-toggle="modal" data-target="#phone_modal">수정</button>
                </span>
            </div>
            <div>
                <label class="if_title">비밀번호</label>
                <span>
                    <c:forEach var="i" begin="1" end="${fn:length(user.passwd)}" step="1">
                        *
                    </c:forEach>
                </span>
                <span>
                    <button data-toggle="modal" data-target="#passwd_modal">수정</button>
                </span>
            </div>
            <div>
                <label class="if_title">알림설정</label>
                <span>이메일 및 SNS 알림설정</span>
                <c:if test="${user.alarm eq 'Y'}">
                    <span class="if_text">ON</span>
                </c:if>
                <c:if test="${user.alarm eq 'N'}">
                    <span class="if_text">Off</span>
                </c:if>
            </div>
            <div class="if_btns">
                <button>로그아웃</button>
                <button>회원탈퇴</button>
            </div>
        </div>

        <hr>

        <p class="my_subTitle">나의 고양이</p>
        <div class="cat_body">
            <c:forEach var="cat"  items="${cats}">
                <button class="cat_listBtn" onclick="location.href='/mypage/pet_update?catno=${cat.catno}'">
                    <div class="cat_name">
                        ${cat.catname}
                        <c:if test="${cat.catno eq user.catno}"><span class="badge badge-primary cat_badge">대표</span></c:if>
                    </div>
                    <div class="cat_info">${cat.catkind}</div>
                    <div class="cat_info">${cat.catgender}</div>
                </button>
            </c:forEach>
            <button class="cat_newBtn" onclick="location.href='/mypage/pet_add'">
                <i class="bi bi-plus"></i>
                <div> 고양이 등록하기 </div>
            </button>
        </div>
    </div>

    <br class="clear">
</div>

<%-- 비밀번호 변경 모달. --%>
<div class="modal fade" id="passwd_modal" tabindex="-1"
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
<div class="modal fade" id="phone_modal" tabindex="-1"
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
