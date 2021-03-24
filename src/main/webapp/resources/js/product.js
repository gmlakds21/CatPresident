/* 카테고리 리스트 */
$(document).ready(function(){
    $(".ct_lead").click(function(){
        let submenu = $(this).next("div");
        $(this).find("img").toggleClass('ct_imgflip');

        if( submenu.is(":visible") ){
            submenu.slideUp();
        }else{
            submenu.slideDown();
        }
    });

    $(".ct_sub .ct_subbtn").click(function() {
        let param = '?cate=' + $(this).val() + '&order=time&cp=1';
        location.href = '/category/list' + param;
    });
});


/* 설명 모달 */
$('#info_modalX').on('click',function (){
    $('#info_modal').modal('hide');})