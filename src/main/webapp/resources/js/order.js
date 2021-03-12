
/* 상세 페이지 */

// 수량 감소 버튼
$('#VIMinus').on('click', function(){
    var amount = Number( $('#PP_amount').text() );
    var price = Number( $('#PP_price').text() );
    if (amount > 1)
        amount = amount - 1;
    $('#PP_amount').text(amount);
    $('#PP_totprice').text(amount * price);})

// 수량 증가 버튼
$('#VIPlus').on('click', function(){
    var amount = Number( $('#PP_amount').text() );
    var price = Number( $('#PP_price').text() );
        amount = amount + 1;
    $('#PP_amount').text(amount);
    $('#PP_totprice').text(amount * price);})


// 장바구니에 담기 버튼
$('#VI_goBasketbtn').on('click', function (){
    var amount = Number( $('#PP_amount').text() );
    $("#amount").val(amount)
    $('#VI_PPInfo').attr("action", "/Products/View-Basket")
    $('#VI_PPInfo').attr("method", "post")
    $('#VI_PPInfo').submit();})

// 주문하기 버튼
$('#VI_goOrderbtn').on('click', function (){
    var amount = Number( $('#PP_amount').text() );
    $("#amount").val(amount)
    $('#VI_PPInfo').attr("action", "/Products/View-Order")
    $('#VI_PPInfo').attr("method", "post")
    $('#VI_PPInfo').submit()})


/* 장바구니 */
// 수량 감소 버튼
$('#VIMinus${i}').on('click', function(){
    var amount = Number( $('#PP_amount${i}').text() );
    var price = Number( $('#PP_price${i}').text() );
    if (amount > 1)
        amount = amount - 1;
    $('#PP_amount${i}').text(amount);})

// 수량 증가 버튼
$('#VIPlus${i}').on('click', function(){
    var amount = Number( $('#PP_amount${i}').text() );
    var price = Number( $('#PP_price${i}').text() );
    amount = amount + 1;
    $('#PP_amount${i}').text(amount);})

// 구매하기 버튼
$('#BA_okbtn').on('click', function (){
    $('#BA_buylst').attr("action", "/Order/Basket-Order")
    $('#BA_buylst').attr("method", "post")
    $('#BA_buylst').submit();})