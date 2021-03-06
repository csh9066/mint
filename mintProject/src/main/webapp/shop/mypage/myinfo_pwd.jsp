<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="mypage_main.jsp"/>

<seciton class="service">
    <div class="snb">
        <h2 class="snb__title">마이페이지</h2>
        <ul class="snb__list">
            <li class="snb__item"><a href="/mintProject/shop/mypage/myOrderList">주문내역</a></li>
            <li class="snb__item"><a href="">늘 사는 것</a></li>
            <li class="snb__item"><a href="/mintProject/shop/mypage/review">상품 후기</a></li>
            <li class="snb__item"><a href="">적립금</a></li>
            <li class="snb__item current"><a href="/mintProject/shop/mypage/myinfo_pwd">개인 정보 수정</a></li>
            <li class="snb__item"><a href="/mintProject/shop/mypage/attendance">출석체크</a></li>
        </ul>
    </div>
    <div class="service__main">
        <h2 class="service__main-title">개인 정보 수정</h2>
        <div class="my-wrap">
            <div class="conf-tit">
                <img src="https://www.kurly.com//shop/data/skin/designgj/img/common/h_pass_rember.gif">
            </div>
            <form action="">
                <div class="conf-main">
                    <div class="conf-info">
                        <div>아이디</div>
                        <div>${memId }</div>
                        <div>비밀번호</div>
                        <input type="password" id="pwd" style="width: 120px;">
                    </div>
                </div>
                <div class=conf-btn id="pwd_conf_btn">확인</div>
          </form> 
        </div>
    </div>
</seciton>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="/mintProject/shop/js/myinfo.js"></script>