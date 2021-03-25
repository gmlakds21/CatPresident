<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:if test="${not empty user}">
    <script>
        alert("잘못된 접근입니다.")
        location.href = '/';
    </script>
</c:if>

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
    <p class="mb_title">회원 가입</p>
    <p class="mb_text"></p>

    <hr>

    <form class="in_form" id="newMember">
        <div>
            <div class="in_text">
                <p id="in_name"><span class="in_redStar">*</span><span>이름</span></p>
            </div>
            <input type="text" class="in_input" id="in_nameInput" value="${mvo.username}"
                   placeholder=" 이름을 입력하세요.">
        </div>
        <div>
            <div class="in_text">
                <p id="in_id"><span class="in_redStar">*</span><span>아이디</span></p>
            </div>
            <input type="text" class="in_input" id="in_idInput" value="${mvo.email}"
                   placeholder=" 이메일을 입력하세요.">
        </div>
        <div>
            <div class="in_text">
                <p id="in_pw"><span class="in_redStar">*</span><span>비밀번호</span></p>
            </div>
            <input type="password" class="in_input" id="in_pwInput"
                   placeholder=" 비밀번호를 입력하세요.">
        </div>
        <div>
            <div class="in_text">
                <p id="in_rp"><span class="in_redStar">*</span><span>비밀번호 확인</span></p>
            </div>
            <input type="password" class="in_input" id="in_rpInput"
                   placeholder=" 비밀번호를 한번 더 입력하세요.">
        </div>
        <div>
            <div class="in_text">
                <p>우편번호 찾기</p>
            </div>
            <input type="text" class="in_zipInput" id="zip1"
                   value="${fn:split(mvo.zipcode,'-')[0]}" readonly>
            <span class="in_zipSpan">-</span>
            <input type="text" class="in_zipInput" id="zip2"
                   value="${fn:split(mvo.zipcode,'-')[1]}" readonly>
            <button type="button" class="in_zipbtn"
                    data-toggle="modal" data-target="#zip_modal">검 색
            </button>
        </div>
        <div>
            <div class="in_text">
                <p id="in_addr"><span class="in_redStar">*</span><span>주소</span></p>
            </div>
            <input type="text" class="in_input" id="in_adInput" value="${mvo.addr}">
        </div>

        <div class="in_alarm custom-control custom-checkbox">
            <input type="checkbox" id="in_check" class="custom-control-input">
            <label for="in_check" class="custom-control-label">
                본인은 만 14세 이상이며, 고양이대통령 이용약관,<br>
                개인정보 수집 및 이용내용을 확인 하였으며 동의합니다.
            </label>
            <br>
        </div>
        <div class="in_alarm custom-control custom-checkbox">
            <input type="checkbox" id="in_alarm" class="custom-control-input">
            <label for="in_alarm" class="custom-control-label">
                쏠쏠한 할인쿠폰, 신상품 및 이벤트 등 수신동의 (선택)
            </label>
        </div>

        <%-- 회원 정보 --%>
        <input type="hidden" name="username" id="username">
        <input type="hidden" name="passwd" id="passwd">
        <input type="hidden" name="email" id="email">
        <input type="hidden" name="zipcode" id="zipcode">
        <input type="hidden" name="addr" id="addr">
        <input type="hidden" name="alarm" id="alarm">
    </form>

    <hr>

    <div class="in_btn">
        <button type="button" class="in_okbtn" id="in_okbtn">회원가입</button>
    </div>

</div>

<%-- ZIP modal --%>
<div class="modal fade" id="zip_modal" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">우편번호 찾기</h4>
                <button type="button" class="btn zip_closeBtn" id="zip_modalX">
                    <i class="bi bi-x"></i>
                </button>
            </div>
            <hr>
            <div class="modal-body">
                <div class="form-group row justify-content-center">
                    <div class="col-8 zip_findText">
                        <span for="dong">
                            검색하실 주소의 동 이름을 입력하세요 <br>
                            지역의 읍/면/동의 이름을 공백없이 입력하신 후, [검색하기] 버튼을 클릭하세요
                        </span>
                    </div>
                </div>
                <div class="form-group row justify-content-center">
                    <div class="col-1"></div>
                    <div class="col-5">
                        <input type="text" id="dong" name="dong"
                               class="form-control border-primary">
                    </div>
                    <div class="col-3">
                        <button type="button" id="zip_find" class="btn btn-primary">
                            <i class="bi bi-search"></i>검색하기
                        </button>
                    </div>
                </div>
                <div class="form-group row justify-content-center">
                    <div class="col-8 zip_list">
                        <select id="zip_addr" name="zip_addr"
                                class="form-control" size="10">
                        </select>
                    </div>
                </div>
            </div>
            <div class="modal-footer justify-content-end">
                <button type="button" class="btn btn-primary" id="zip_sendBtn">
                    <i class="bi bi-check2-circle"></i> 선택하고 닫기
                </button>
            </div>
        </div>
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
                    해당 회원가입 페이지에서는 입력창을 통해 회원정보를 수집합니다.<br>
                    만약 빈칸 또는 조건이 맞지 않을경우 blur 이벤트와 ajax 를 통해 정보를 확인합니다.<br>
                    <br>
                    주소찾기 모달은 입력값에 따라 ajax 통신을 통해<br>
                    데이터베이스내에 저장되어있는 주소목록을 불러옵니다.<br>
                    선택된 주소값을 split 으로 나누어 다시 입력칸에 값을 넣어줍니다.<br>
                    <br>
                    로그인 정보가 있을경우 이 페이지에 접속하지 못하도록 막습니다.<br>
                </p>
            </div>
            <div class="modal_divider"></div>
            <button type="button" class="btn info_closeBtn" id="info_modalX">확인</button>
        </div>
    </div>
</div>