<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${not empty UID}">
    <script>
        location.href='/';
    </script>
</c:if>

<div>
    <div class="list_header">
        <div class="col-9 list_nav">
            <span> 홈 </span>
            <span class="list_nav_bi bi bi-chevron-right"> </span>
            <span> 로그인 </span>
        </div>
    </div>
</div>

<div class="col-9 marginCenter">

    <p class="MB_title"> 로그인</p>
    <p class="MB_text"></p>

    <hr>

    <form class="LI_form" id="logMember">
        <div>
            <div class="LI_text">
                <p id="LI_email">아이디</p>
            </div>
            <input type="text" class="LI_input" id="LI_emailInput" placeholder="이메일을 입력하세요.">
        </div>

        <div>
            <div class="LI_text">
                <p id="LI_pw">비밀번호</p>
            </div>
            <input type="password" class="LI_input" id="LI_pwInput" placeholder="비밀번호를 입력하세요.">
        </div>

        <div class="LI_check">
            <input type="checkbox" id="LI_check" name="LI_check">
            <span>자동 로그인</span>
        </div>

        <div class="LI_btn">
            <button type="button" class="LI_okbtn" id="LI_okbtn">로그인</button>
            <button type="button" class="LI_nobtn" id="LI_nobtn">회원가입</button>
        </div>

        <input type="hidden" name="email" id="email" value="${mvo.email}">
        <input type="hidden" name="passwd" id="passwd" value="${mvo.passwd}">

    </form>
</div>
