<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${empty UID}">
    <script>
        alert("로그인이 필요한 페이지 입니다.")
        location.href='/members/sign-in';
    </script>
</c:if>

<div>
    <div class="list_header">
        <div class="col-9 list_nav">
            <span> 홈 </span>
            <span class="list_nav_bi bi bi-chevron-right"> </span>
            <span> 이용약관 </span>
            <span class="list_nav_bi bi bi-chevron-right"> </span>
            <span> 회원가입 </span>
            <span class="list_nav_bi bi bi-chevron-right"> </span>
            <span> 가입완료 </span>
        </div>
    </div>
</div>
<!-- 네비 -->

<div class="col-9 marginCenter">
    <!-- 이용약관 제작 -->
    <p class="MB_title">고양이 등록</p>
    <p class="MB_text">고객님의 소중한 고양이를 등록해주세요</p>

    <hr>

    <form class="AP_form">

        <div class="AP_pic">
            <label for="AP_picInput">
                <img src="/img/AddPet_pic.png">
            </label>
            <input type="file" class="AP_picInput" id="AP_picInput">
        </div>

        <div>
            <div class="AP_text">
                <p id="AP_name">고양이 이름</p>
            </div>
            <input type="text" class="AP_input" id="AP_nameInput" placeholder=" 이름을 입력하세요.">
        </div>

        <div>
            <div class="AP_text">
                <p>고양이 종류</p>
            </div>
            <select class="AP_input" id="AP_kindInput">
                <option disabled selected hidden>고양이 종류를 선택하세요</option>
                <option> 1 </option>
                <c:forEach var="kind" items="${kinds}">
                    <option>${kind.catkind} </option>
                </c:forEach>
            </select>
        </div>

        <div>
            <div class="AP_text">
                <p>고양이 생일</p>
            </div>
            <div class="AP_detail">
                <select class="AP_birthInput" id="AP_yearInput">
                    <option disabled selected hidden>태어난 년도</option>
                    <c:forEach var="i" begin="0" end="20" step="1">
                        <option value="${2021-i}"> ${2021-i}년</option>
                    </c:forEach>
                    <option value="2000">2001년 이전</option>
                </select>

                <select class="AP_birthInput" id="AP_monthInput">
                    <option disabled selected hidden>태어난 월</option>
                    <c:forEach var="i" begin="1" end="12" step="1">
                        <option value="${i}"> ${i}월</option>
                    </c:forEach>
                </select>
            </div>
            <div class="AP_detail">
                <span class="AP_genderInput" id="AP_genderInput">
                    <input type="radio" value="남아" name="AP_genderInput"> 남아
                    <br>
                    <input type="radio" value="여아" name="AP_genderInput"> 여아
                </span>
            </div>
        </div>

        <br class="clear">

        <div>
            <div class="AP_text">
                <p>몸무게</p>
            </div>
            <input type="text" class="AP_input" id="AP_weightInput" placeholder=" 몸무게를 입력하세요.">
        </div>

        <div class="AP_check">
            <input type="checkbox" id="AP_priInput" name="AP_priInput">
            <span>
                이 아이로 활동하기
            </span>
        </div>

        <%-- 데이터 전송용 --%>
        <input type="hidden" name="uno" id="uno" value="${UID}">
        <input type="hidden" name="catname" id="catname">
        <input type="hidden" name="catkind" id="catkind">
        <input type="hidden" name="catyear" id="catyear">
        <input type="hidden" name="catmonth" id="catmonth">
        <input type="hidden" name="catgender" id="catgender">
        <input type="hidden" name="catweight" id="catweight">
        <input type="hidden" name="prima" id="prima">
<%--            <input type="hidden" name="ctpic" id="ctpic">--%>
    </form>

    <div class="AP_btn">
        <button type="button" id="AP_nobtn" class="AP_nobtn">나중에 하기</button>
        <button type="button" id="AP_okbtn" class="AP_okbtn">등록하기</button>
    </div>
</div>