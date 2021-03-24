<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<div>
    <div class="page_header">
        <div class="page_nav">
            <span> 홈 </span>
            <span class="list_nav_bi bi bi-chevron-right"> </span>
            <span> 기획전</span>
        </div>
    </div>
    <div class="page_title">
        <span>기획전</span>
    </div>
</div>

<div class="body">
    <ul class="bd_page">
        <c:forEach var="BD" items="${BDs}">
            <li onclick="location.href='/planned/list?bno=${BD.bno}'">
                <img src="${BD.imgthum}">
                <div class="bd_text">
                    <div class="bd_title">${BD.title}</div>
                    <div class="bd_contents">${BD.contents}</div>
                </div>
            </li>
        </c:forEach>
    </ul>
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
                    기획전 게시물 고유 번호인 bgroup 을 이용하여<br>
                    기획전에 해당하는 게시물의 모든 정보를 가져옵니다. <br>
                    ex) select * from Board where bgroup = ?<br>
                    <br>
                    기획전 게시물에 해당되는 게시물들은 List(BoardVO) 형태로<Br>
                    foreach 문을 이용하여 화면에 배열합니다.<br>
                    ex) (c:forEach var="BD" items="$(BDs)")<br>
                    <br>
                    해당 게시물들은 onclick 이벤트로 클릭시<br>
                    게시물 고유번호인 bno 를 이용하여 게시물 페이지로 이동합니다.
                </p>
            </div>
            <div class="modal_divider"></div>
            <button type="button" class="btn info_closeBtn" id="info_modalX">확인</button>
        </div>
    </div>
</div>