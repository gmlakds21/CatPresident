<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<div class="hd_lists">

    <%-- 고양이 대통령 로고를 담는 공간 --%>
    <div class="hd_list1">
        <a href="/"><img src="/img/template/Header_Logo.jpg"></a>
    </div>


    <%-- 알람, 마이페이지, 장바구니 --%>
    <div class="hd_list2">
        <span class="dropdown hdDropDown">
            <button type="button" class="dropdown" onclick="location.href='/mypage/main'">
                <i class="bi bi-bell"></i>
                <span class="hd_list2Text">알 림</span>
            </button>
            <div class="dropdown-menu hdDropMenu">
                <c:if test="${empty user}">
                    <a class="dropdown-item" href="/member/login">로그인</a></button>
                    <a class="dropdown-item" href="/member/agree">회원가입</a></button>
                </c:if>
                <c:if test="${not empty user}">
                    <a class="dropdown-item" href="/member/logout">로그아웃</a></button>
                </c:if>
            </div>
        </span>
        <span class="dropdown hdDropDown">
            <button type="button" class="dropdown" onclick="location.href='/mypage/main'">
                <i class="bi bi-person"></i>
                <span class="hd_list2Text">M Y</span>
            </button>
            <div class="dropdown-menu hdDropMenu">
                <c:if test="${empty user}">
                    <a class="dropdown-item" href="#">최근 본</a>
                    <a class="dropdown-item" href="#">주문조회</a>
                    <a class="dropdown-item" href="#">배송취소</a>
                    <a class="dropdown-item" href="#">교환하기</a>
                    <a class="dropdown-item" href="#">반품하기</a>
                    <a class="dropdown-item" href="#">고객센터</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="/member/login">로그인</a></button>
                    <a class="dropdown-item" href="/member/agree">회원가입</a></button>
                </c:if>
                <c:if test="${not empty user}">
                    <a class="dropdown-item" href="/mypage/main">마이 페이지</a>
                    <a class="dropdown-item" href="/mypage/add-pet">고양이 등록</a>
                    <a class="dropdown-item" href="#">자주구매</a>
                    <a class="dropdown-item" href="#">관심</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">최근 본</a>
                    <a class="dropdown-item" href="#">주문조회</a>
                    <a class="dropdown-item" href="#">배송취소</a>
                    <a class="dropdown-item" href="#">교환하기</a>
                    <a class="dropdown-item" href="#">반품하기</a>
                    <a class="dropdown-item" href="#">구매후기</a>
                    <a class="dropdown-item" href="#">고객센터</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">스티커</a>
                    <a class="dropdown-item" href="#">보유현금</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="/member/logout">로그아웃</a></button>
                </c:if>
            </div>
        </span>
        <button type="button" href="">
            <i class="bi bi-cart3"></i>
            <span class="hd_list2Text">장바구니</span>
        </button>
    </div>


    <%-- 검색 --%>
    <div class="hd_list3 input-group">
        <input type="text" class="form-control" id="hd_findText" placeholder="3만원 이상 구매 시, 무료배송">
        <div class="input-group-append">
            <button class="btn" type="button" id="hd_find">
                <i class="bi bi-search"></i></button>
        </div>
    </div>

    <%-- 알림 메시지 --%>
    <div class="hd_list4">
        <button type="button" disabled>
            365일 <img src="/img/template/Header_leaf.jpg"> <span>신선한 사료&간식</span> 유통기한 100% 책임제
        </button>
    </div>


    <%-- 카테고리 --%>
    <div class="hd_list5">
        <div class="dropdown ctDropDown hd_category">
            <a href="/category/page">
                <i class="bi bi-justify"></i>
                <span>카테고리</span>
            </a>
            <div class="dropdown-menu ctDropMenu hd_catelist">
                <a class="dropdown-item" href="/category/list?cate=1100&order=time&cp=1">사료</a>
                <a class="dropdown-item" href="/category/list?cate=1200&order=time&cp=1">간식</a>
                <a class="dropdown-item" href="/category/list?cate=1300&order=time&cp=1">건강관리</a>
                <a class="dropdown-item" href="/category/list?cate=1400&order=time&cp=1">모래</a>
                <a class="dropdown-item" href="/category/list?cate=1500&order=time&cp=1">화장실/위생</a>
                <a class="dropdown-item" href="/category/list?cate=1600&order=time&cp=1">미용/목욕</a>
                <a class="dropdown-item" href="/category/list?cate=1700&order=time&cp=1">급식기/급수기</a>
                <a class="dropdown-item" href="/category/list?cate=1800&order=time&cp=1">스크래쳐/캣타워</a>
                <a class="dropdown-item" href="/category/list?cate=1900&order=time&cp=1">하우스</a>
                <a class="dropdown-item" href="/category/list?cate=2000&order=time&cp=1">이동장</a>
                <a class="dropdown-item" href="/category/list?cate=2100&order=time&cp=1">의류/액세서리</a>
                <a class="dropdown-item" href="/category/list?cate=2200&order=time&cp=1">목줄/가슴줄</a>
                <a class="dropdown-item" href="/category/list?cate=2300&order=time&cp=1">장난감</a>
                <a class="dropdown-item" href="/category/list?cate=2400&order=time&cp=1">생활/가전</a>
            </div>
        </div>
        <span class="hd_pdlist">
            <ul class="nav nav-tabs" role="tablist">
                <li class="nav-item"><a class="nav-link" href="/today's/list">오늘의딜</a></li>
                <li class="nav-item"><a class="nav-link" href="/best/list?cate=1000&order=best">랭킹</a></li>
                <li class="nav-item"><a class="nav-link" href="/recent/list?where=recent&order=time&cp=1">신상품</a></li>
                <li class="nav-item"><a class="nav-link" href="/planned/page">기획전</a></li>
                <li class="nav-item"><a class="nav-link" href="/knowHow/page">노하우</a></li>
                <li class="nav-item"><a class="nav-link" href="/sticker/list?cate=1000&order=time&cp=1">스티커샵</a></li>
            </ul>
        </span>
    </div>
    <br class="clear">
</div>