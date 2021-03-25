<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${not empty user}">
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
    <p class="mb_text" id="mb_text"></p>

    <hr>

    <div class="li_form" id="logMember">
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
<%--        <input type="hidden" name="email" id="email" value="${mvo.email}">--%>
<%--        <input type="hidden" name="passwd" id="passwd">--%>
    </div>
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
                    로그인 페이지에서는 input 안에 들어있는 value 값<br>
                    id 와 pw를 이용해 유저를 조회합니다.<br>
                    ex) select * from Members<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;where userid = ? and passwd = ?<br>
                    <br>
                    ajax 통신을 통해 null 이 나오면 안내메시지를<br>
                    null 이 아니면 해당 정보로 유저정보를 HttpSession 에 담습니다.<br>
                    <br>
                <p>
                <p><b>Point</b></p>
                <p>
                    자동로그인 (미구현)<br>
                </p>
            </div>
            <div class="modal_divider"></div>
            <button type="button" class="btn info_closeBtn" id="info_modalX">확인</button>
        </div>
    </div>
</div>