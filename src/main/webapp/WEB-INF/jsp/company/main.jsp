<%@ page pageEncoding="UTF-8" %>
<div class="body">
    <div class="mainPage">
        <br><br><br><br>
        <h3><a href="https://blog.naver.com/binary_one">Binary_one</a></h3>
        <p> 자기소개 및 수업필기 </p>
        <br><br>
        <br>
        <div class="mainPageText">
            코딩의 <b>목표</b>로 잡은 웹 사이트는 <a href="https://catpre.com/">고양이 대통령</a>입니다.<br>
            <br>
            실무에서 홈페이지를 제작하게 될 때, 코드를 보고 만드는 것이 아닌,<br>
            이미지 파일이나, 손으로 그린 시안을 주로 받게 될 것이라 생각 하였습니다.<br>
            <br>
            <a href="https://catpre.com/">고양이 대통령</a>이라는 홈페이지를 모방 할 때에도 소스 코드를 보지 않고<br>
            디자인만 보면서 <b>스스로 생각</b>하고 <b>고민</b>하며 <b>코드를 직접</b> 작성해 보았습니다.<br>
            우측 상단 <button class="rounded-circle mainPageButton">Code</button>버튼을 누르시면 각 페이지별 상세한 설명을 보실 수 있습니다.<br>
        </div>
        <div class="mainPageList">
            <p><b>2021-03-12</b> ~ <b>2021-00-00</b></p><br>
            <p><b>카테고리</b> &minus; 카테고리 페이지, 카테고리 리스트 구현 </p>
            <p><b>게시글</b> &minus; 기획전 및 노하우 페이지, 리스트</p>
            <p><b>제품목록</b> &minus; 오늘의 딜, 랭킹, 신상품, 스티커샵 구현 </p>
            <p><b>제품목록</b> &minus; 제품 검색, 카테고리 정렬, 조건 정렬 </p>
            <p><b>회원가입</b> &minus; 약관동의, 정보입력, 가입완료 </p>
            <p><b>로그인</b> &minus; 로그인, 로그아웃 </p>
            <p><b>마이페이지</b> &minus; 메인페이지, 고양이 등록, 고양이 수정</p>
            <p><b>구현중</b></p>
            <p><b>마이페이지</b>&minus; 고양이 삭제, 회원정보 수정</p>
            <p><b>주문</b>&minus; 장바구니</p>
            <p><b></b>  </p>
        </div>
        <br class="clear">
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
                    <b>header</b><br>
                    검색기능을 이용하여 원하는 제품을 찾아보실 수 있습니다.<br>
                    MY 페이지를 이용하여 회원가입 및 로그인 서비스를 이용하실 수 있습니다.<br>
                    페이지 상단 제품 카테고리들을 이용하여 원하시는 제품군을 선택하실수 있습니다.<br>
                    <br>
                    <b>footer</b><br>
                    다양한 버튼들을 이용하여 기업에 대한 정보를 보실 수 있습니다.<br>
                </p>
                <p><b>Point</b></p>
                <p>
                    1. 알림, 로그인, 카테고리등 자동 드롭다운 기능(DropDown)<br>
                    2. 페이지 상단 검색창 (버튼 클릭, Enter)<br>
                    3. 페이지 하단 4가지 링크<br>
                    4. 페이지 하단 회사 소개, 입점 문의, 이용 약관, 개인 정보<br>
                    5. 페이지 하단 트위터, 구글, 페이스북, 인스타<br>
                    6. 페이지 하단 채팅문의<br>
                    7. 페이지 하단 기업정보<br>
                </p>
            </div>
            <div class="modal_divider"></div>
            <button type="button" class="btn info_closeBtn" id="info_modalX">확인</button>
        </div>
    </div>
</div>