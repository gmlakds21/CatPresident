<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>

<div>
    <div class="page_header">
        <div class="page_nav">
            <span> 홈 </span>
            <span class="page_nav_bi bi bi-chevron-right"> </span>
            <span> 이용약관 </span>
            <span class="page_nav_bi bi bi-chevron-right"> </span>
            <span> 회원가입 </span>
            <span class="page_nav_bi bi bi-chevron-right"> </span>
            <span> 가입완료 </span>
        </div>
    </div>
</div>

<!-- 네비 -->
<div class="body">
    <!-- 이용약관 제작 -->
    <p class="mb_title">회원가입 완료</p>
    <p class="mb_text">고양이대통령에 오신 것은 환영합니다!</p>

    <hr>

    <div class="jo_body">
        <h2> <b>${user.username}</b>님 회원가입을 축하합니다!! </h2>
        <p> 고양이 대통령의 보다 많은 서비스를 이용하시기 위해 고양이 정보를 등록하실 것을 추천드립니다.</p>
    </div>

    <div class="jo_btns">
        <div>
            <button type="button" id="pet_add">고양이 등록하기</button>
        </div>
        <div>
            <button type="button" id="goMain">
                <i class="bi bi-house-fill"></i>메인으로 이동
            </button>
        </div>
    </div>

    <br class="clear">
</div>

<%-- 설명 모달 --%>
<button class="info_body rounded-circle" data-toggle="modal" data-target="#info_modal">
    <span> Code </span>
</button>

<div class="modal fade" id="info_modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="info_modal">
                <p>
                    해당 회원가입 페이지에서는 입력받았던 정보를 통해 자동로그인을 시켜줍니다.<br>
                    <br>
                    해당 홈페이지를 보다 효율적으로 이용할 수 있게 고양이 등록 기능을 넣어주었습니다.<br>
                </p>
            </div>
            <div class="modal_divider"></div>
            <button type="button" class="btn info_closeBtn" id="info_modalX">확인</button>
        </div>
    </div>
</div>