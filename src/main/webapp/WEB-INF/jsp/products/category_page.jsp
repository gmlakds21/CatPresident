<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div>
    <div class="page_header">
        <div class="page_nav">
            <span> 홈 </span>
            <span class="page_nav_bi bi bi-chevron-right"> </span>
            <span> 카테고리 </span>
        </div>
    </div>
</div>

<div class="body">
    <ul class="ct_page">
        <c:forEach var="cate" items="${cates}">
            <li>
                <a href="/category/list?cate=${cate.ctno}&order=time&cp=1">
                    <img src="/img/CateThumb/${cate.ctno}.jpg">
                    <span class="ct_pageText">${cate.catename}</span>
                </a>
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
                    카테고리 페이지에서는 고유 번호인 ctno 를 이용하여<br>
                    해당하는 카테고리 번호와 이름을 가져옵니다. <br>
                    ex) select * from Category where ctno like = '%00'<br>
                    <br>
                    카테고리의 대분류는 aa00 형식으로,<br>
                    소분류는 aa01, aa02 형식으로 담았습니다.<br>
                    ex) aa00 - 사료 전체 / aa01 - 사료 - 건식사료<br>
                    ex) bb00 - 간식 전체 / bb03 - 간식 - 스틱<br>
                    <br>
                    대분류에 해당되는 카테고리들은 List(CategoryVO) 형태로<Br>
                    foreach 문을 이용하여 화면에 배열합니다.<br>
                    ex) (c:forEach var="cate" items="$(cates)")<br>
                    <br>
                    해당 게시물들은 onclick 이벤트로 클릭시<br>
                    카테고리 고유번호인 ctno 를 이용하여 리스트 페이지로 이동합니다.
                </p>
            </div>
            <div class="modal_divider"></div>
            <button type="button" class="btn info_closeBtn" id="info_modalX">확인</button>
        </div>
    </div>
</div>