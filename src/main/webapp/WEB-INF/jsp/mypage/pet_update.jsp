<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${empty user}">
    <script>
        alert("로그인이 필요한 페이지 입니다.")
        location.href='/member/login';
    </script>
</c:if>

<div>
    <div class="page_header">
        <div class="page_nav">
            <span> 홈 </span>
            <span class="page_nav_bi bi bi-chevron-right"> </span>
            <span> 마이페이지 </span>
            <span class="page_nav_bi bi bi-chevron-right"> </span>
            <span> 고양이 정보 수정 </span>
        </div>
    </div>
</div>


<div class="body">
    <!-- 이용약관 제작 -->
    <p class="mb_title">고양이 등록</p>
    <p class="mb_text">고객님의 고양이 정보를 수정해주세요</p>

    <hr>

    <form class="ap_form" id="newCat">

        <div class="ap_pic">
            <label for="ap_picInput">
                <img src="/img/mypage/AddPet_pic.png">
            </label>
            <input type="file" class="ap_picInput" id="ap_picInput">
        </div>

        <div>
            <div class="ap_text">
                <p id="ap_name">고양이 이름</p>
            </div>
            <input type="text" class="ap_input" id="ap_nameInput" value="${cat.catname}">
        </div>

        <div>
            <div class="ap_text">
                <p>고양이 종류</p>
            </div>
            <select class="ap_input" id="ap_kindInput">
                <option selected hidden value="${cat.catkind}">${cat.catkind}</option>
                <c:forEach var="kind" items="${kinds}">
                    <option>${kind.catkind} </option>
                </c:forEach>
            </select>
        </div>

        <div>
            <div class="ap_text">
                <p>고양이 생일</p>
            </div>
            <div class="ap_detail">
                <select class="ap_birthInput" id="ap_yearInput">
                    <option selected hidden value="${cat.catyear}">${cat.catyear}</option>
                    <c:forEach var="i" begin="0" end="20" step="1">
                        <option value="${2021-i}"> ${2021-i}년</option>
                    </c:forEach>
                    <option value="2000">2001년 이전</option>
                </select>

                <select class="ap_birthInput" id="ap_monthInput">
                    <option selected hidden value="${cat.catmonth}">${cat.catmonth}</option>
                    <c:forEach var="i" begin="1" end="12" step="1">
                        <option value="${i}"> ${i}월</option>
                    </c:forEach>
                </select>
            </div>
            <div class="ap_detail">
                <span class="ap_genderInput" id="ap_genderInput">
                    <input type="radio" id="ap_genderM" name="ap_genderInput"> 남아
                    <br>
                    <input type="radio" id="ap_genderF" name="ap_genderInput"> 여아
                </span>
            </div>
        </div>

        <br class="clear">

        <div>
            <div class="ap_text">
                <p>몸무게</p>
            </div>
            <input type="text" class="ap_input" id="ap_weightInput" value="${cat.catweight}">
        </div>

        <div class="ap_check">
            <input type="checkbox" id="ap_priInput" name="ap_priInput">
            <span>
                이 아이로 활동하기
            </span>
        </div>

        <%-- 데이터 전송용 --%>
        <input type="hidden" name="uno" id="uno" value="${user.uno}">
        <input type="hidden" name="catno" id="catno" value="${cat.catno}">
        <input type="hidden" name="catgender" id="catgender">
        <input type="hidden" name="prima" id="prima">
    </form>

    <div class="ap_btn">
        <button type="button" id="ap_nobtn" class="ap_nobtn">삭제하기</button>
        <button type="button" id="ap_upbtn" class="ap_okbtn">수정하기</button>
    </div>

</div>