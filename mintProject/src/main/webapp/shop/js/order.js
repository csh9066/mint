/**
 * 한문희
 */
const addrBtn = document.querySelector("#addrSearchBtn");
//배송자 주소 검색
addrBtn.addEventListener("click", function(){
   daum.postcode.load(function(){
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
                // 예제를 참고하여 다양한 활용법을 확인해 보세요.
                var addr = ''; // 주소 변수
                var extraAddr = '';
                 //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("delivery_addr1").value = extraAddr;
                
                } else {
                    document.getElementById("delivery_addr2").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById("delivery_addr1").value = `${addr} [${data.zonecode}]`;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("delivery_addr2").focus();
            }
                

        }).open();
    });
})

$(document).ready(function(){
	var cnt = $(".price").length; //상품갯수
	let qty = new Array(cnt); //수량
	
	let stock = new Array(cnt); //재고 
	let mainSubject = new Array(cnt); //상품명 
	
	var price = new Array(cnt); //가격
	var discountRate = new Array(cnt); //할인율
	var discountPriceMinus = new Array(cnt); //할인된금액
	var discountPrice = new Array(cnt); //할인적용가
	var onePrdPrice = new Array(cnt); //상품개당 가격
	let totDiscountPrice = new Array(cnt); //할인적용가 * 수량
	let totPrice = new Array(cnt); //상품정가 * 수량
	let totSalePrice = new Array(cnt); //할인금액합계
	
	let lastPrice = 0; //결제금액합계
	let lastTotPrice = 0; //정가금액합계
	let lastTotSalePrice = 0; //할인금액합계
	
	let deleveryPrice = 0; //배송비
	
	let lastPriceSet = 0;
	
	dataSet(); //상품정보 박스 데이터가공(할인적용가, 최종결제금액)
	paymentDataSet() //결제창 데이터 가공

	//상품정보 박스 데이터가공(할인적용가, 최종결제금액)
	function dataSet() {
		for(var i=0; i<cnt; i++) {
			price[i] = parseInt($('.price span').eq(i).text()); //정가
			discountRate[i] = parseInt($('.discountRate span').eq(i).text()); //할인율
			discountPriceMinus[i] = price[i]*(discountRate[i] / 100); //할인된금액
			discountPrice[i] = parseInt(price[i] - discountPriceMinus[i]); //할인적용가
			qty[i] = parseInt($('.ctCount span').eq(i).text()); //수량
			stock[i] = parseInt($('.stock span').eq(i).text());
			mainSubject[i] = $('.mainSubject').eq(i).text();
			
			$(".dp").eq(i).text(discountPrice[i]);
			$(".salesPrice").eq(i).text(discountPrice[i] * qty[i]);
			
			totDiscountPrice[i] = parseInt($(".salesPrice").eq(i).text());
			totPrice[i] = price[i] * qty[i];
			totSalePrice[i] = discountPriceMinus[i] * qty[i];
			
			lastPrice += totDiscountPrice[i]; //최종결제금액
			lastTotPrice += totPrice[i]; //정가금액합계
			lastTotSalePrice += totSalePrice[i]; //할인금액합계
		}
		
		let pmDeleveryPrice_comma = document.querySelector(".pmDeleveryPrice"); //배송비
		
		function removeComma(str){
		    return parseInt(str.replace(",",""));
		}
		
		let pmDeleveryPrice = removeComma(pmDeleveryPrice_comma.innerText);
		deleveryPrice = pmDeleveryPrice;
		
		$('#lastPrice').text(lastPrice); 
		
		$('.bill-tb__total-price span').text(lastPrice + deleveryPrice); 
		$('.bill-tb__product-price span').text(lastTotPrice);
		$('.bill-tb__col_sale span').text(lastTotSalePrice);
	}
	
	
	//데이터 가공 후 결제창에 붙여주는작업
	function paymentDataSet() {
		let topProductName = $('.mainSubject').eq(0).text(); //
		let otherCnt = cnt-1; //상품 몇개 외....
		$('#topProductName').text(topProductName);	
		$('#productListCount').text(otherCnt);
		
		let name = '';
		let tel = $('#memberTel').text();
		let addr1 = '';
		let addr2 = '';
		let delevery = $('#deleveryPrice').text();
		
		let pointadd = $('#totalPoint').text();
		
		let tel1 = tel.substring(1,4);
		let tel2 = tel.substring(4,8);
		let tel3 = tel.substring(8,12);
		
		$('.tel1').val(tel1);
		$('.tel2').val(tel2);
		$('.tel3').val(tel3);

		let productCode = new Array(cnt);

		for(i=0; i<cnt; i++) {
			productCode[i] = $('.productCode').eq(i).text();
			onePrdPrice[i] = parseInt(discountPrice[i]); //개당 가격
			$(".onePrdPrice").eq(i).text(onePrdPrice[i]);
		}
		
		lastPriceSet = parseInt($('.bill-tb__total-price .lastTotalPrice').text());
		
		//결제하기 클릭 결제하기
		document.getElementById('btnPayment').onclick = function(){
			$.ajax({
				type: 'post',
				url: '/mintProject/shop/goods/checkStock',
				data: JSON.stringify({productCode : productCode}),
				contentType: "application/json; charset=utf-8",
				dataType: 'json',
				success: function(result){
					let flag = true;
					let list = result.list;
					for (var i = 0; i < list.length ; i++) {
						if(list[i].STOCK < 0 || list[i].STOCK - qty[i] < 0) {
							swal('앗! 품절된 상품이 있습니다! \n' + mainSubject[i]);
							flag = false;
						} 
					}
					

					let request = $('#request').val();
					let pointuse = $('.pointUse').text();
					name = $('#recipient').val();
					let setTel = $('#tel1').val() + $('#tel2').val() + $('#tel3').val();
					addr1 = $('#delivery_addr1').val();
					addr2 = $('#delivery_addr2').val();
					
					if(flag === true) {
						var IMP = window.IMP; // 생략가능
						IMP.init('imp22922268'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
						IMP.request_pay({
							pg: 'html5_inicis', // version 1.1.0부터 지원.  
							pay_method: 'card',
							merchant_uid : 'merchant_' + new Date().getTime(),
							name: topProductName+"외"+otherCnt, //결제창에서 보여질 이름
							//amount: lastPriceSet, //가격
							amount: 100, //가격
							buyer_name: name,
							buyer_tel:  setTel,
							buyer_addr: addr1,
							buyer_postcode: addr2,
							m_redirect_url: '/mintProject/shop/goods/redirect' // 나중에 수정
						}, function (rsp) {
							if (rsp.success) {
								var msg = '결제가 완료되었습니다.';
								
								$.ajax({
									type: 'POST',
									url: "/mintProject/shop/goods/redirectServer",
									contentType: 'application/json; charset=utf-8',
									data: JSON.stringify({
										buyer_name: rsp.buyer_name,
										buyer_tel: rsp.buyer_tel,
										buyer_addr: rsp.buyer_addr,
										buyer_postcode: rsp.buyer_postcode,
										request: request,
										fprice: lastPriceSet,
										dprice: delevery,
										pointuse: pointuse,
										pointadd: pointadd,
										productCode: productCode,
										qty: qty,
										price: price,
										discountRate: discountRate,
									})
								}).then((data) => {
									swal({
										text : msg,
										buttons : false,
										timer : 2000
									});
									location.href='/mintProject/shop/main/index';
								})
								
							} else {
								var msg = '결제에 실패하였습니다.';
								msg += '에러내용 : ' + rsp.error_msg;
								swal({
									text : msg,
									buttons : false,
									timer : 2000
								});
							}
						});
					}
					
				},
				error: function(err){
					console.log(err);
				}
			});

		};
	}
	
	let myPoint = $('#memberPoint').text();
	
	$('#pointChk').change(function(){
		
		if($('#pointChk').is(':checked')){
			$('.check-label').addClass('checked');
			$('#myPoint').val(myPoint);
			$('.pointUse').text(myPoint);
			
			lastPriceSet = parseInt($('.bill-tb__total-price span').text());
			lastPriceSet -= myPoint;
			$('.bill-tb__total-price span').text(lastPriceSet);
			
		}else {
			$('.check-label').removeClass('checked');
			$('#myPoint').val(0);
			$('.pointUse').text('0');
			
			lastPriceSet += parseInt(myPoint);
			$('.bill-tb__total-price span').text(lastPriceSet);
		}
	});

});




