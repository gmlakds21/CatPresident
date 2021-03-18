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
        <h2> <b>${mvo.username}</b>님 회원가입을 축하합니다!! </h2>
        <p> 고양이 대통령의 보다 많은 서비스를 이용하시기 위해 고양이 정보를 등록하실 것을 추천드립니다.</p>
    </div>

    <div class="jo_btns">
        <div>
            <button type="button" id="addPet">고양이 등록하기</button>
        </div>
        <div>
            <button type="button" id="goMain">
                <i class="bi bi-house-fill"></i>메인으로 이동
            </button>
        </div>
    </div>

    <br class="clear">
</div>