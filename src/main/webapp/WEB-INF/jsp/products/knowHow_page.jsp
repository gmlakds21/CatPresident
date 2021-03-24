<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<div>
    <div class="page_header">
        <div class="page_nav">
            <span> 홈 </span>
            <span class="list_nav_bi bi bi-chevron-right"> </span>
            <span>노하우</span>
        </div>
    </div>
    <div class="page_title">
        <span>노하우</span>
    </div>
</div>

<div class="body">
    <ul class="bd_page">
        <c:forEach var="BD" items="${BDs}">
            <li onclick="location.href='/knowHow/list?bno=${BD.bno}'">
                <img src="${BD.imgthum}">
                <div class="bd_text">
                    <div class="bd_title">${BD.title}</div>
                    <div class="bd_contents">${BD.contents}</div>
                    <div class="bd_tags">
                        <c:if test="${BD.tag ne ''}">
                            <c:forEach begin="0" end="4" var="i">
                                <c:if test="${fn:split(BD.tag,'[,]')[i] ne null}">
                                    <span>${fn:split(BD.tag,'[,]')[i]}</span>
                                </c:if>
                            </c:forEach>
                        </c:if>
                    </div>
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
                    노하우 게시물 고유 번호인 bgroup 을 이용하여<br>
                    노하우에 해당하는 게시물의 모든 정보를 가져옵니다. <br>
                    ex) select * from Board where bgroup = ?<br>
                    <br>
                    노하우 게시물에 해당되는 게시물들은 List(BoardVO) 형태로<Br>
                    foreach 문을 이용하여 화면에 배열합니다.<br>
                    ex) (c:forEach var="BD" items="$(BDs)")<br>
                    <br>
                    해당 게시물에 지정된 태그들은 String 형태로<Br>
                    #고양이, #너무, #귀여워, ... 형식으로 저장되어 있습니다.<br>
                    이것을 split 하여 각각의 태그로 분리합니다.<br>
                    <br>
                    해당 게시물들은 onclick 이벤트로 클릭시<br>
                    게시물 고유번호인 bno를 이용하여 게시물 페이지로 이동합니다.
                </p>
            </div>
            <div class="modal_divider"></div>
            <button type="button" class="btn info_closeBtn" id="info_modalX">확인</button>
        </div>
    </div>
</div>