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
        let param = '?cate=' + $(this).val() + '&cp=1';
        location.href = '/Category/list' + param;
    });
});