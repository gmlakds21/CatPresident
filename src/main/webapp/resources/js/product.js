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

// 제품 검색 버튼
$('#hd_find').on('click',function () {
    let find =  $('#hd_findText').val();
    location.href = "/find/list?find="+find+"&cate=1000&order=time&cp=1";
})

// 제품 검색 엔터
let findPD = document.querySelector('#hd_findText');
findPD.addEventListener('keyup',function(e){
    if (e.keyCode === 13) {
        let find =  $('#hd_findText').val();
        location.href = "/find/list?find="+find+"&cate=1000&order=time&cp=1";
    }
});


/* 설명 모달 */
$('#info_modalX').on('click',function (){
    $('#info_modal').modal('hide');})