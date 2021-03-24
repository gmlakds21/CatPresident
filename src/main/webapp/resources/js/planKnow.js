// 공유하기 모달창 닫기
$('#share_modalX').on('click',function (){
    $('#share_modal').modal('hide');})

// url 버튼 클릭시 url을 클립보드에 복사 / 복사완료 모달창띄우기
$('#url_modal').on('click',function () {
    var inputDump = document.createElement('input'),
        hrefText = window.location.href;
    document.body.appendChild(inputDump);
    inputDump.value = hrefText;
    inputDump.select();
    document.execCommand('copy');
    document.body.removeChild(inputDump);})

// 복사완료 모달창 닫기
$('#url_modalX').on('click',function (){
    $('#url_modal').modal('hide');
    $('#share_modal').modal('hide');})

// 상품 임시 장바구니
function computePrice(bd_form) {
    var totalPrice = 0
    var PDCount = bd_form.pd_select.length
    var realCount = 0
    var a = ''

    for(var i = 0; i < PDCount; i++) {
        if(bd_form.pd_select[i].checked == true) {
            totalPrice += Number(bd_form.pd_select[i].value);
            realCount += 1
        }
    }
    totalPrice = totalPrice.toLocaleString() // 천단위 (,) 찍기
    document.getElementById('cart_price').innerText = totalPrice + '원'
    document.getElementById('cart_count').innerText = realCount + '개의 제품'
    document.getElementById('cart_button').innerText = '장바구니에 담기'}



















// OrderView
// 배송요청사항 에서 직접입력 클릭시 textarea 태그 보이게 함
// 최근 배송지 출력에 사용될 코드들 숨김
$(function() {
    $("#selboxDirect").hide();
    $("#selectAddr2").hide();

    $("#selbox").change(function (){
        if($("#selbox").val() == "selOption"){
            $("#selboxDirect").show();
        } else {
            $("#selboxDirect").hide();
        }
    })
});

// 아무것도 입력안하고 전송버튼 눌렀을때 placeholder값 변경
// 입력한뒤 전송버튼 눌렀을때 랜덤수가 생성되는 modal창 띄우기
function clickSend() {
    var holder = ''
    var random = 0

    if($("#phone").val() == ''){
        holder =  document.getElementById('phone')
        holder.placeholder = '11자리 번호를 입력해주세요.'
    }else {
        $("#sendok").modal();

        random = Math.floor (( Math.random() * 10000 ))
        document.getElementById('random').innerText = random

        document.getElementById('randomNum').value = random
    }
}

// 전송 모달창 닫고 인증번호입력, 확인버튼 활성화 시키고
// '전송' 버튼 문구를 '재전송' 으로 변경
function clickOk() {
    $('#sendok').modal('hide');
    $('#checkNum').attr('disabled',false)
    $('#checkNumBtn').attr('disabled',false)

    // btn 속성바꾸기
    $('#checkNumBtn').addClass('checkNumBtn')
    $('#checkNumBtn').removeClass('OR_btn2')


    document.getElementById('send').innerHTML = '재전송'
}

// modal창에 띄웠던 랜덤숫자값과 input태그에 입력한 숫자값이 일치하면 인증번호 일치! 창을 띄움
function checkNum() {
    if($('#checkNum').val() == $('#randomNum').val()){
        alert('인증번호 일치!')
    } else {
        document.getElementById('falseNum').innerHTML = '인증번호 불일치! 다시 입력해주세요!'
        $('#falseNum').css('color','red')
    }
}

// 신규 배송지 버튼 클릭시 '신규 배송지' css 변경
function newAddr() {
    $('#newAddr2').show()
    $('#selectAddr2').hide()

    $('#selectAddr').removeClass('addrBtn')
    $('#newAddr').addClass('addrBtn')

    $('#newAddr').hover(function () {
        $(this).addClass('Btn_hover')
    },function () {
        $(this).removeClass('Btn_hover')
    })
}

// 배송지 선택 버튼 클릭시 '신규 배송지' css제거 한뒤 '배송지 선택'에 css추가하기
function selectAddr() {
    $('#newAddr2').hide()
    $('#selectAddr2').show();

    $('#newAddr').removeClass('addrBtn')
    $('#selectAddr').addClass('addrBtn')

    $('#selectAddr').hover(function () {
        $(this).addClass('Btn_hover')
    },function () {
        $(this).removeClass('Btn_hover')
    })
}

// 우편번호, 주소 보내기
$('#ZIP_sendbtn2').on('click', function () {
    let addr = $('#ZIP_addr option:selected').val();

    // 주소가 선택되지 않았을 경우 예외를 처리하는 부분
    if (addr == undefined) {
        alert('주소가 선택되지 않았습니다.')
        return;
    }

    let addr1 = addr.substring(0,7);    // 123-456
    let addr2 = addr.substring(7);      // 가나다라마바사

    $('#postNum').val(addr1);
    $('#addr1').val(addr2);

    // 기존 검색결과를 제거.
    $('#ZIP_addr').find("option").remove();
    $('#dong').val('');

    // 우편번호 검색창 닫음.
    $('#ZIP_modal').modal('hide');

});

// 결제하기 버튼 눌렀을때 확인버튼
function payok() {
    let pay = document.getElementById('payCash').innerText
    let radioVal = $('input[name="radioTxt"]:checked').val();

    if($('#phone').val() == '') alert('휴대번호 인증을 해주세요!')
    else if($('#recip').val() == '') alert('받으시는 분의 성함을 입력하세요!')
    else if($('#addrPhone').val() == '') alert('휴대전화 번호를 입력하세요!')
    else if($('#postNum').val() == '') alert('우편번호를 입력하세요!')
    else if($('#addr1').val() == '') alert('주소를 입력하세요!')
    else if($('#addr2').val() == '') alert('상세주소를 입력하세요!')
    else if(!$('#godae').is(':checked') && !$('#credit').is(':checked') && !$('#naver').is(':checked')
        && !$('#kakao').is(':checked') && !$('#payco').is(':checked') && !$('#bank').is(':checked')
        && !$('#realBank').is(':checked') && !$('#phonePay').is(':checked')) alert('결제 방법을 반드시 선택해주세요!')
    else {
        $('#sendpay').modal()
        document.getElementById('pay2').innerHTML = pay + '을 ' + radioVal + '로 결제를 진행 하시겠습니까?'
    }
}

// 결제 완료 버튼 클릭시 모달창 닫기
function payOk() {
    $('#sendpay').hide()
}

// // 할인쿠폰 클릭시 모달 표시
// function clickCoupon() {
//     $('#sendCoupon').modal()
// }
//
// // 할인쿠폰 등록하기 클릭시 모달 표시
// function openNewCoupon() {
//     $('#cpNumber').hide()
//     $('#couponWrite').modal()
// }
//
// // 할인쿠픈 등록 모달 -> 취소버튼 클릭시
// function canCoupon() {
//     $('#couponWrite').hide()
//     $('#sendCoupon').hide()
// }
//
// // 확인 버튼을 누르면 할인쿠폰 모달에 입력된 쿠폰번호를 표시
// function okCoupon() {
//     let cpNum
//
//     if($('#cpNum1').val() == '') {
//         alert('쿠폰번호를 등록해주세요!')
//     } else {
//     cpNum  =  $('#cpNum1').val()
//     document.getElementById('cpNum2').innerHTML = cpNum
//     document.getElementById('cpNum2').value = cpNum
//
//     $('#couponWrite').hide()
//     $('#newCpBtn').hide()
//     $('#cpNumber').show()
//
//     }
// }
//
// // 할인쿠폰 모달에서 적용하기 버튼 누르면 문구 바꾸기
// function sendCpNum() {
//     let applyCp = $('#cpNum2').val()
//
//     console.log(applyCp)
//     document.getElementById('applyCp').innerHTML = applyCp + '쿠폰이 적용되었습니다.'
//     $('#sendCoupon').hide()
// }
//
// // 보유현금 -> 전액사용 체크시
// $('#cash').on('change',function () {
//     let cash = document.getElementById('realCash').innerHTML
//     let realCash = cash.toString().split('원')[0]
//
//     if($('#cash').is(':checked')) {
//         document.getElementById('cash2').value = realCash
//     } else {
//         document.getElementById('cash2').value = 0
//     }
// })


