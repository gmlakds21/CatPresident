<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${not empty UID}">
    <script>
        location.href='/';
    </script>
</c:if>

<div>
    <div class="page_header">
        <div class="page_nav">
            <span> 홈 </span>
            <span class="page_nav_bi bi bi-chevron-right"> </span>
            <span> 로그인 </span>
        </div>
    </div>
</div>

<div class="body">

    <p class="mb_title"> 로그인</p>
    <p class="mb_text"></p>

    <hr>

    <form class="li_form" id="logMember">
        <div>
            <div class="li_text">
                <p id="li_email">아이디</p>
            </div>
            <input type="text" class="li_input" id="li_emailInput" placeholder="이메일을 입력하세요.">
        </div>

        <div>
            <div class="li_text">
                <p id="li_pw">비밀번호</p>
            </div>
            <input type="password" class="li_input" id="li_pwInput" placeholder="비밀번호를 입력하세요.">
        </div>

        <div class="li_check">
            <input type="checkbox" id="li_input">
            <span>자동 로그인</span>
        </div>

        <div class="li_btn">
            <button type="button" class="li_okbtn" id="li_okbtn">로그인</button>
            <button type="button" class="li_newbtn" id="li_newbtn">회원가입</button>
        </div>

        <input type="hidden" name="email" id="email" value="${mvo.email}">
        <input type="hidden" name="passwd" id="passwd">

    </form>
</div>