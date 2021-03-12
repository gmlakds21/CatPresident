<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- 로그인 하지 않았다면 list 페이지로 강제전환. --%>
<%--<c:if test="${empty UID}">--%>
<%--    <c:redirect url="/" />--%>
<%--</c:if>--%>

<div class="list_header">
    <div class="col-9 list_nav">
        <span>홈</span>
        <span class="list_nav_bi bi bi-chevron-right"></span>
        <span>관리자</span>
    </div>
</div>
<div id="main" class="row col-9 justify-content-center MY_pad0mgn0">
    <div class="row col-11" style="padding: 0">
        <button type="button" class="btn">
            <i class="bi bi-plus-circle-fill" style="position: relative; top: -3px; font-size: 25px"></i>
            &nbsp;&nbsp;<span style="font-size: 25px; font-weight: bold;">상품 등록</span>
        </button>
    </div>
    <form id="ADM_frm">
        <div class="card card-body bg-light text-right">
            <div class="col-11 offset-1">
                <div class="form-group row">
                    <label for="ADM_ctno" class="col-form-label text-danger"
                           style="margin-right: 18px;">분&nbsp;&nbsp;&nbsp;류</label>
                    <select id="ADM_ctno" name="ADM_ctno"
                            class="form-control col-9 border-danger">
                        <c:forEach var="CATE" items="${CATE}">
                            <option value="${CATE.ctno}"> ${CATE.ctno} </option>
                        </c:forEach>
                    </select>
                </div>

                <div class="form-group row">
                    <label for="ADM_brand" class="col-form-label text-danger"
                           style="margin-right: 15px;">브랜드</label>
                    <select id="ADM_brand" name="ADM_brand"
                            class="form-control col-9 border-danger">
                        <c:forEach var="PRD" items="${PRD}">
                            <option value="${PRD.brand}"> ${PRD.brand} </option>
                        </c:forEach>
                    </select>
                </div>

                <div class="form-group row">
                    <label for="ADM_event" class="col-form-label text-danger"
                           style="margin-right: 18px;">행&nbsp;&nbsp;&nbsp;사</label>
                    <input type="text" id="ADM_event" name="ADM_event"
                           class="form-control col-9 border-danger">
                </div>

                <div class="form-group row">
                    <label for="ADM_pname" class="col-form-label text-danger"
                           style="margin-right: 15px;">상품명</label>
                    <input type="text" id="ADM_pname" name="ADM_pname"
                           class="form-control col-9 border-danger">
                </div>

                <div class="form-group row">
                    <label for="ADM_price" class="col-form-label text-danger"
                           style="margin-right: 18px;">가&nbsp;&nbsp;&nbsp;격</label>
                    <input type="text" id="ADM_price" name="ADM_price"
                           class="form-control col-9 border-danger">
                </div>

                <div class="form-group row">
                    <label for="ADM_disco" class="col-form-label text-danger"
                           style="margin-right: 15px;">할인율</label>
                    <input type="text" id="ADM_disco" name="ADM_disco"
                           class="form-control col-9 border-danger">
                </div>

                <div class="form-group row">
                    <label for="ADM_explain"
                           class="col-form-label text-danger marginR5 text-right">상품설명</label>
                    <textarea type="text" id="ADM_explain" name="ADM_explain"
                              rows="8" class="form-control col-9 border-danger"></textarea>
                </div>

                <div class="form-group row">
                    <label for="ADM_signat"
                           class="col-form-label text-danger marginR5 text-right">부가설명</label>
                    <textarea type="text" id="ADM_signat" name="ADM_signat"
                              rows="8" class="form-control col-9 border-danger"></textarea>
                </div>


            <%-- 파일첨부 시작 --%>
                <div class="form-group row col-11 justify-content-center">
                    <div class="custom-file col-10">
                        <input type="file" id="ADM_file1" name="img"
                               class="custom-file-input">
                        <label class="custom-file-label text-left">첨부파일을 선택하세요</label>
                    </div>
                    <div class="custom-file col-10">
                        <input type="file" id="ADM_file2" name="img"
                               class="custom-file-input">
                        <label class="custom-file-label text-left">첨부파일을 선택하세요</label>
                    </div>
                    <div class="custom-file col-10">
                        <input type="file" id="ADM_file3" name="img"
                               class="custom-file-input">
                        <label class="custom-file-label text-left">첨부파일을 선택하세요</label>
                    </div>
                </div>

                <div class="form-group row col-11 justify-content-center">
                    <button type="button" class="btn btn-primary" style="margin-right: 15px;" id="ADM_okbtn">
                        <i class="bi bi-check"></i>입력하기
                    </button>
                    <button type="button" class="btn btn-danger" id="ADM_canclbtn">
                        <i class="bi bi-x"></i>취소하기
                    </button>
                </div>
            </div>
        </div>
    </form>
</div>
<!--메인 끝-->
