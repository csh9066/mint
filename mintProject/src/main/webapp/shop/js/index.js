window.addEventListener('scroll', function() {
    const scrollTop = document.documentElement.scrollTop;
    const gnb = document.querySelector('.gnb');
    if (scrollTop > 98) {
        gnb.classList.add('fixed');
 
    } else {
        gnb.classList.remove('fixed');

    }
});

const pageTopBtn = document.querySelector('.page-top-btn');
window.addEventListener('scroll', function() {
    const scrollTop = document.documentElement.scrollTop;

    if (scrollTop > 300) {
        pageTopBtn.classList.add('btn--up');
    } else {
        pageTopBtn.classList.remove('btn--up');
    }
});
pageTopBtn.addEventListener('click', () => {
    window.scrollTo({ top: 0, behavior: 'smooth' });
});

//로그인 여부 확인. 로그인 되어 있으면 '회원가입/로그인' => 'OOO님 로그인' 으로 변경.
function checkMemId(memId, memName) {
    if (memId != '') {
        $('ul.my-page >:first-child>:first-child').remove();
        if (memId == 'admin') {
            $('ul.my-page >:first-child')
                .attr('class', 'my-page__item my-page__mypage')
                .append(
                    `<a href="#"> ${memName} 님 </a>
											 <ul class="my-page__menu">
									            <li>
									            	<form id="logoutForm" method="post" action="/mintProject/shop/member/logout">
														<a href="javascript:void(0)" onclick="document.getElementById('logoutForm').submit();">로그아웃</a></li>
									            	</form>
									       	</ul>`
                );
        } else {
            $('ul.my-page >:first-child').attr(
                'class',
                'my-page__item my-page__mypage'
            ).append(`<a href="#"> ${memName} 님 </a>
                		<ul class="my-page__menu">
							<li><a href="/mintProject/shop/mypage/myOrderList">주문내역</a></li>
							<li><a href="#">위시 리스트</a></li>
							<li><a href="/mintProject/shop/mypage/review">상품 후기</a></li>
							<li><a href="/mintProject/shop/mypage/myinfo_pwd">개인정보 수정</a></li>
							<li><a href="/mintProject/shop/mypage/attendance">출석체크</a></li>
							<li>
							<form id="logoutForm" method="post" action="/mintProject/shop/member/logout">
							<a href="javascript:void(0)" onclick="document.getElementById('logoutForm').submit();">로그아웃</a></li>
							</form>
					</ul>`);
        }
        $('ul.my-page >:first-child')
            .next()
            .remove();
    }
}

function search_from_main() {
    location.href =
        '/mintProject/shop/product/productSearch?sword=' + $('#sword_m').val();
}

//엔터키 입력 가능
$('#sword_m').keypress(function(e) {
    if (e.keyCode == 13) {
        location.href =
            '/mintProject/shop/product/productSearch?sword=' +
            $('#sword_m').val();
    }
});

function search_from_spage() {
    location.href =
        '/mintProject/shop/product/productSearch?sword=' +
        $('#sword_spg').val();
}
