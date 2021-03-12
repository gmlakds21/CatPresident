// 카테고리에 마우스 올렸을때 카테고리 정보 가져오기
$('#HD_Category').on('mouseover', function () {   });


$('#cate1').on('click', function( ) {

    // cate1sub = cate1sub*-1

    if (cate1sub = 'N') {
        cate1sub = 'Y';
    } else {
        cate1sub = 'N';
    }
})








$(document).ready(function(){
    $(".CT_lead").click(function(){
        let submenu = $(this).next("div");
        $(this).find("img").toggleClass('CT_imgflip');

        if( submenu.is(":visible") ){
            submenu.slideUp();
        }else{
            submenu.slideDown();
        }
    });

    $(".CT_sub .CT_subbtn").click(function() {
        let param = '?cate=' + $(this).val() + '&cp=1';
        location.href = '/Category/list' + param;
    });
});