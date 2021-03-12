<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<div>
    <div class="hd_lists marginCenter">

        <%-- 고양이 대통령 로고를 담는 공간 --%>
        <div class="hd_list1">
            <a class="marginCenter" href="/"><img src="/img/Header_Logo.jpg"></a>
        </div>

        <%-- 알람, 마이페이지, 장바구니 --%>
        <div class="hd_list2">
            <button type="button" class="dropdown" data-toggle="dropdown">
                <span class="bi bi-bell">
                    <span class="hd_list2_txt">알 림</span>
                </span>
            </button>
            <div class="dropdown-menu">
                <c:if test="${empty UID}">
                    <a class="dropdown-item" href="/members/sign-in">로그인</a></button>
                    <a class="dropdown-item" href="/members/agree">회원가입</a></button>
                </c:if>
                <c:if test="${not empty UID}">
                    <a class="dropdown-item" href="/members/logout">로그아웃</a></button>
                </c:if>
            </div>
            <button type="button" class="dropdown" data-toggle="dropdown">
                <span class="bi bi-person">
                    <span class="hd_list2_txt">M Y</span>
                </span>
            </button>
            <div class="dropdown-menu">
                <c:if test="${empty UID}">
                    <a class="dropdown-item" href="#">최근 본</a>
                    <a class="dropdown-item" href="#">주문조회</a>
                    <a class="dropdown-item" href="#">배송취소</a>
                    <a class="dropdown-item" href="#">교환하기</a>
                    <a class="dropdown-item" href="#">반품하기</a>
                    <a class="dropdown-item" href="#">고객센터</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="/members/sign-in">로그인</a></button>
                    <a class="dropdown-item" href="/members/agree">회원가입</a></button>
                </c:if>
                <c:if test="${not empty UID}">
                    <a class="dropdown-item" href="#">자주구매</a>
                    <a class="dropdown-item" href="#">관심</a>
                    <a class="dropdown-item" href="#">최근본</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">주문배송</a>
                    <a class="dropdown-item" href="#">주문취소</a>
                    <a class="dropdown-item" href="#">교환하기</a>
                    <a class="dropdown-item" href="#">반품하기</a>
                    <a class="dropdown-item" href="#">구매후기</a>
                    <a class="dropdown-item" href="#">고객센터</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">스티커</a>
                    <a class="dropdown-item" href="#">보유현금</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="/members/logout">로그아웃</a></button>
                </c:if>
            </div>
            <button type="button" href="">
                <span class="bi bi-cart3">
                    <span class="hd_list2_txt">장바구니</span>
                </span>
            </button>
        </div>


        <div class="hd_list3"></div>


            <div class="input-group HD_Search">
                <input type="text" class="form-control" placeholder="3만원 이상 구매 시, 무료배송">
                <div class="input-group-append">
                    <button class="btn" type="button">
                        <i class="bi bi-search"></i></button>
                </div>
            </div> <!-- 검색 -->
        <div class="hd_list4"></div>
        <div class="hd_list5"></div>
    </div>
</div>

<div class="RESET"></div>



<header id="header" class="col-9 Header">  <!-- 헤더 -->

    <ul class="nav nav-tabs HD_Category" role="tablist">
        <li class="dropdown HD_Category_1st" id="HD_Category"> <!-- 카테고리 드롭다운 -->
            <a class="nav-item dropdown" href="/CategoryPage">
                <i class="bi bi-justify"></i>
                <span>카테고리</span>
            </a>

            <div class="dropdown-menu HD_Category_Cate">

<%--
                <c:forEach var="cate" items="${cates}">
                    <c:if test="${(cate.ctno % 100)= 0}">
                        <a class="dropdown-item" href="/Category/list?cate=${cate.ctno}">${cate.catename}</a>
                    </c:if>
                    <div class="dropdown-menu">
                        <c:if test="${(cate.ctno % 100) != 0}">
                                <a class="dropdown-item" href="/Category/list?cate=${cate.ctno}">${cate.catename}</a>
                        </c:if>
                    </div>
                </c:forEach>
--%>

                <a class="dropdown-item" href="/Category/list?cate=0100&cp=1">사료</a>
<%--
                    <div class="dropdown-menu HD_Category_sub">
                        <a class="dropdown-item" href="/Category/list?cate=0100">전체</a>
                        <a class="dropdown-item" href="/Category/list?cate=0101">건식사료</a>
                        <a class="dropdown-item" href="/Category/list?cate=0102">캔</a>
                        <a class="dropdown-item" href="/Category/list?cate=0103">파우치</a>
                        <a class="dropdown-item" href="/Category/list?cate=0104">건조생식</a>
                        <a class="dropdown-item" href="/Category/list?cate=0105">분유</a>
                   </div>
--%>
                <a class="dropdown-item" href="/Category/list?cate=0200&cp=1">간식</a>
<%--
                    <div class="dropdown-menu HD_Category_sub">
                        <a class="dropdown-item" href="/Category/list?cate=0200">전체</a>
                        <a class="dropdown-item" href="/Category/list?cate=0201">캔</a>
                        <a class="dropdown-item" href="/Category/list?cate=0202">파우치</a>
                        <a class="dropdown-item" href="/Category/list?cate=0203">스틱</a>
                        <a class="dropdown-item" href="/Category/list?cate=0204">건조간식</a>
                        <a class="dropdown-item" href="/Category/list?cate=0205">저키</a>
                        <a class="dropdown-item" href="/Category/list?cate=0206">통살/소시지</a>
                        <a class="dropdown-item" href="/Category/list?cate=0207">스낵</a>
                        <a class="dropdown-item" href="/Category/list?cate=0208">캣닢/캣그라스</a>
                        <a class="dropdown-item" href="/Category/list?cate=0209">음료</a>
                    </div>
--%>
                <a class="dropdown-item" href="/Category/list?cate=0300&cp=1">건강관리</a>
                <a class="dropdown-item" href="/Category/list?cate=0400&cp=1">모래</a>
                <a class="dropdown-item" href="/Category/list?cate=0500&cp=1">화장실/위생</a>
                <a class="dropdown-item" href="/Category/list?cate=0600&cp=1">미용/목욕</a>
                <a class="dropdown-item" href="/Category/list?cate=0700&cp=1">급식기/급수기</a>
                <a class="dropdown-item" href="/Category/list?cate=0800&cp=1">스크래쳐/캣타워</a>
                <a class="dropdown-item" href="/Category/list?cate=0900&cp=1">하우스</a>
                <a class="dropdown-item" href="/Category/list?cate=1000&cp=1">이동장</a>
                <a class="dropdown-item" href="/Category/list?cate=1100&cp=1">의류/액세서리</a>
                <a class="dropdown-item" href="/Category/list?cate=1200&cp=1">목줄/가슴줄</a>
                <a class="dropdown-item" href="/Category/list?cate=1300&cp=1">장난감</a>
                <a class="dropdown-item" href="/Category/list?cate=1400&cp=1">생활/가전</a>

            </div>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="/Today-Deals/list?cp=1">
                <span class="HD_Category_txt"> 오늘의 딜 </span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="/Best-Products/list?cp=1">
                <span class="HD_Category_txt"> 랭킹 </span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="/Recent-Product/list?cp=1">
                <span class="HD_Category_txt"> 신상품 </span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="/Planned/list">
                <span class="HD_Category_txt"> 기획전 </span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="/Knowhow/list">
                <span class="HD_Category_txt"> 노하우 </span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="/StickerShop/list?cp=1">
                <span class="HD_Category_txt"> 스티커샵 </span>
            </a>
        </li>
    </ul> <!-- 헤더 카테고리 -->

    <div class="HD_Notify">
        <button type="button" disabled>
            365일 <img src="/img/Header_leaf.jpg"> <span class="HD_Notify_span">신선한 사료&간식</span> 유통기한 100% 책임제
        </button>
    </div>
</header>