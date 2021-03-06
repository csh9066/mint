<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<link rel="icon" type="image/png" sizes="32x32" href="/mintProject/shop/storage/mint/icon/main_logo.png">


<!-- fontawome  -->
<script src="https://kit.fontawesome.com/09d022f581.js"
	crossorigin="anonymous"></script>

<!-- 구글폰트 -->
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet" />

<!-- include libraries(jQuery, bootstrap) -->
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet" />
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

<!-- include summernote css/js -->
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.css"
	rel="stylesheet" />
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.js"></script>

<!-- 다음 우편번호 -->
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<!-- swiper api -->
<link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.css" />
<link rel="stylesheet"
	href="https://unpkg.com/swiper/css/swiper.min.css" />

<script src="https://unpkg.com/swiper/js/swiper.js"></script>
<script src="https://unpkg.com/swiper/js/swiper.min.js"></script>

<!-- 스윗 알러트 -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css" />

<link rel="stylesheet" href="/mintProject/shop/css/reset.css" />
<link rel="stylesheet" href="/mintProject/shop/css/style.css" />
<link rel="stylesheet" href="/mintProject/shop/css/service.css" />
<link rel="stylesheet" href="/mintProject/shop/css/login.css" />
<link rel="stylesheet" href="/mintProject/shop/css/join.css" />
<link rel="stylesheet" href="/mintProject/shop/css/notice.css" />
<link rel="stylesheet" href="/mintProject/shop/css/productList.css" />
<link rel="stylesheet" href="/mintProject/shop/css/productView.css" />
<link rel="stylesheet" href="/mintProject/shop/css/main.css">

<title>민트</title>
</head>
<body>
	<header class="header">
		
		<ul class="my-page">
			<li class="my-page__item"><a
				href="/mintProject/shop/member/join">회원가입</a></li>
			<li class="my-page__item"><a
				href="/mintProject/shop/member/login">로그인</a></li>
			<li class="my-page__item my-page__qna"><a
				href="/mintProject/shop/service/notice?pg=1">고객센터</a>
				<ul class="qna__menu">
					<li><a href="/mintProject/shop/service/notice?pg=1">공지사항</a>
					</li>
					<li><a href="/mintProject/shop/service/faq">자주하는
							질문</a></li>
					<li><a href="/mintProject/qnaboard/getQnaBoardList">1:1 문의</a>
					</li>
					<li><a href="/mintProject/shop/service/offer">상품
							제안</a></li>
				</ul></li>
			<li class="my-page__item"><a href="">배송안내</a></li>
		</ul>
		<div class="header__main-wrap">
			<a href="/mintProject/shop/main/index"><img
				src="/mintProject/shop/storage/mint/icon/main_logo.png"
				alt="마켓컬리 로고" class="header__main-logo" /></a>
			<!-- <a href="/mintProject/shop/main/index"><img src="https://res.kurly.com/images/marketkurly/logo/logo_x2.png" alt="마켓컬리 로고" class="header__main-logo"></a> -->
			<a href="" class="cart_count" role="button">
				<span class="screen_out">장바구니로 가기</span>
			</a>
		</div>
	</header>
	<div id="lnbMenu" class="lnb_menu lnb_menu_main" style="top: 60px;">
		<div class="inner_lnb">
			<ul class="list">
				<li><a href="" class="on">민트추천<span class="bg_on"></span></a></li>
				<li><a href="">신상품</a></li>
				<li><a href="">베스트</a></li>
				<li><a href="">알뜰쇼핑</a></li>
				<li><a href="" class="">이벤트</a></li>
			</ul>
		</div>
	</div>
	<header id="header-bottom" class="menu_shortcut">
		<ul id="userMenu" class="list">
			<li><a href="" class="shortcut_home on">홈</a></li>
			<li><a href="" class="shortcut_menu ">카테고리</a></li>
			<li><a href="#none" id="search-area-open" class="shortcut_search ">검색</a></li>
			<li><a href="" class="shortcut_mypage "> 마이컬리</a></li>
		</ul>
	</header>
	<nav class="gnb">
		<ul class="gnb__list">
			<li class="gnb__item"><a href=""><span><i
						class="fas fa-bars"></i>전체 카테고리</span></a>
				<div class="gnb__category">
					<ul class="gnb__menu">
						<li><a
							href="/mintProject/productList/getProductList?mainCategory=101&gubun=1&pg=1">농산물</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=211&gubun=2&pg=1">과일</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=212&gubun=2&pg=1">기본채소</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=213&gubun=2&pg=1">쌈채소</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=214&gubun=2&pg=1">브로콜리·특수채소</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=215&gubun=2&pg=1">피망·고추</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=216&gubun=2&pg=1">곡류</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=217&gubun=2&pg=1">버섯류</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=218&gubun=2&pg=1">견과류</a>
						</li>
					</ul>
					<ul class="gnb__menu">
						<li><a
							href="/mintProject/productList/getProductList?mainCategory=102&gubun=1&pg=1">수산물</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=221&gubun=2&pg=1">생선류</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=222&gubun=2&pg=1">조개류</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=223&gubun=2&pg=1">갑각류</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=224&gubun=2&pg=1">해조류</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=225&gubun=2&pg=1">건어물</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=226&gubun=2&pg=1">오징어</a>
						</li>
					</ul>
					<ul class="gnb__menu">
						<li><a
							href="/mintProject/productList/getProductList?mainCategory=103&gubun=1&pg=1">축산물</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=231&gubun=2&pg=1">소고기</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=232&gubun=2&pg=1">돼지고기</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=233&gubun=2&pg=1">닭고기</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=234&gubun=2&pg=1">계란류</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=235&gubun=2&pg=1">오리고기</a>
						</li>
					</ul>
					<ul class="gnb__menu">
						<li><a
							href="/mintProject/productList/getProductList?mainCategory=104&gubun=1&pg=1">일반식품</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=241&gubun=2&pg=1">유제품</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=242&gubun=2&pg=1">만두류</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=243&gubun=2&pg=1">라면</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=244&gubun=2&pg=1">과자</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=245&gubun=2&pg=1">국수</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=246&gubun=2&pg=1">어묵</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=247&gubun=2&pg=1">햄</a>
						</li>
					</ul>
					<ul class="gnb__menu">
						<li><a
							href="/mintProject/productList/getProductList?mainCategory=105&gubun=1&pg=1">반찬류</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=251&gubun=2&pg=1">김치</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=252&gubun=2&pg=1">국·찌개</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=253&gubun=2&pg=1">전·부침</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=254&gubun=2&pg=1">간편식</a>
						</li>
						<li><a
							href="/mintProject/productList/getProductList?subCategory=255&gubun=2&pg=1">통조림</a>
						</li>
					</ul>
				</div></li>
			<li class="gnb__item"><a
				href="/mintProject/productList/getProductList?gubun=3&headGubun=1&pg=1"><span>신상품</span></a>
			</li>
			<li class="gnb__item"><a
				href="/mintProject/productList/getProductList?gubun=3&headGubun=2&pg=1"><span>베스트</span></a>
			</li>
			<li class="gnb__item"><a
				href="/mintProject/productList/getProductList?gubun=3&headGubun=3&pg=1"><span>알뜰쇼핑</span></a>
			</li>
			<li class="gnb__item">
				<!--<a href="/mintProject/productList/getProductList?gubun=3&headGubun=4&pg=1">-->
				<a href="/mintProject/shop/goods/event"><span>이벤트</span></a>
			</li>
			<li class="gnb__search"><input type="text"
				class="gnb__search-txt" id="sword_m" name="sword" />
				<button class="gnb__search-btn" onclick="search_from_main()">
					<img
						src="https://res.kurly.com/pc/service/common/1908/ico_search_x2.png"
						alt="검색버튼" />
				</button></li>

			<li class="gnb__cart"><img
				src="https://res.kurly.com/pc/ico/1908/ico_cart_x2_v2.png"
				alt="장바구니" onclick="location.href='/mintProject/shop/goods/cart';" />
				
				<c:if test="${memCart != null }">
					<span class="gnb__cart-count">${memCart }</span>
				</c:if>
			</li>
		</ul>
	</nav>

	<jsp:include page="${display}" />
	
	<div class="page-top-btn">
		<img
			src="https://res.kurly.com/pc/service/common/1903/btn_pagetop_v2.png"
			alt=""
		/>
	</div>
	<footer class="footer">
		<div class="inner">
			<p>
				Copyright © 2019 team mint All Rights Resevered
			</p>
		</div>
	</footer>
</body>
<script src="/mintProject/shop/js/index.js"></script>
<script>
        let memId = '${memId}';
        let memName = '${memName}';
        let memEmail = '${memEmail}';
        checkMemId(memId, memName);
        $('#logoutForm').append(
            '<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">',
        );
</script>
</html>
