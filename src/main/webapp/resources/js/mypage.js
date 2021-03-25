
// pet_add 고양이 등록
$('#ap_okbtn').on('click', function () {

    if ($('#ap_nameInput').val() == "") alert('고양이 이름을 입력하세요');
    else if ($('#ap_kindInput').val() == "" || $('#ap_kindInput').val() == undefined) alert('품종을 선택해주세요');
    else if ($('#ap_yearInput').val() == "" || $('#ap_yearInput').val() == null) alert('태어난 년도를 선택해주세요');
    else if ($('#ap_monthInput').val() == "" || $('#ap_monthInput').val() == null) alert('태어난 월을 선택해주세요');
    else if (!($('#ap_genderM').is(":checked") || $('#ap_genderF').is(":checked"))) alert('성별을 선택해주세요');
    else if ($('#ap_weightInput input').val() == "") alert('고양이 무게를 입력하지 않았거나 숫자 이외의 문자가 포함되어 있습니다.');

    else { // 양식에서 받은 데이터를 전송.
        $('#catname').val($('#ap_nameInput').val());
        $('#catkind').val($('#ap_kindInput').val());
        $('#catyear').val($('#ap_yearInput').val());
        $('#catmonth').val($('#ap_monthInput').val());
        if($('#ap_genderM').is(":checked")) $('#catgender').val("남아");
        if($('#ap_genderF').is(":checked")) $('#catgender').val("여아");
        $('#catweight').val($('#ap_weightInput').val());
        if ($('#ap_priInput').is(":checked")) {
            $('#prima').val('Y')
        } else {
            $('#prima').val('N')
        }

        $('#newCat').attr('action', '/mypage/pet_add')
        $('#newCat').attr('method', 'post')
        $('#newCat').submit();
    }});

$('#ap_nobtn').on('click', function () {
    location.href = '/mypage/main';});

// pet_update 고양이 등록
$('#ap_upbtn').on('click', function () {

    if ($('#ap_nameInput').val() == "") alert('고양이 이름을 입력하세요');
    else if ($('#ap_kindInput').val() == "" || $('#ap_kindInput').val() == undefined) alert('품종을 선택해주세요');
    else if ($('#ap_yearInput').val() == "" || $('#ap_yearInput').val() == null) alert('태어난 년도를 선택해주세요');
    else if ($('#ap_monthInput').val() == "" || $('#ap_monthInput').val() == null) alert('태어난 월을 선택해주세요');
    else if (!($('#ap_genderM').is(":checked") || $('#ap_genderF').is(":checked"))) alert('성별을 선택해주세요');
    else if ($('#ap_weightInput input').val() == "") alert('고양이 무게를 입력하지 않았거나 숫자 이외의 문자가 포함되어 있습니다.');

    else { // 양식에서 받은 데이터를 전송.
        $('#catname').val($('#ap_nameInput').val());
        $('#catkind').val($('#ap_kindInput').val());
        $('#catyear').val($('#ap_yearInput').val());
        $('#catmonth').val($('#ap_monthInput').val());
        if($('#ap_genderM').is(":checked")) $('#catgender').val("남아");
        if($('#ap_genderF').is(":checked")) $('#catgender').val("여아");
        $('#catweight').val($('#ap_weightInput').val());
        if ($('#ap_priInput').is(":checked")) {
            $('#prima').val('Y')
        } else {
            $('#prima').val('N')
        }

        $('#newCat').attr('action', '/mypage/pet_update')
        $('#newCat').attr('method', 'post')
        $('#newCat').submit();
    }});














$("#MY_updpwbtn").on('click', function () {
    if ($('#MY_inputoldpw').val() == "") alert('기존 비밀번호를 입력하세요.');
    else if ($('#MY_inputoldpw').val() != $('#passwd').val()) alert('입력하신 기존 비밀번호가 일치하지 않습니다.');
    else if ($('#MY_inputnewpw').val() == "") alert('새로운 비밀번호를 입력하세요.')
    else if ($('#MY_inputnewpw_re').val() == "") alert('새로운 비밀번호를 한번 더 입력하세요.')
    else if ($('#MY_inputnewpw').val() != $('#MY_inputnewpw_re').val())
        alert('새로 설정하려는 비밀번호가 서로 다릅니다');
    else {
        $('#passwd').val($('#MY_inputnewpw').val());
        $('#MY_passwdModal').modal('hide');
    }
});

$('#MY_updphbtn').on('click', function () {
    if ($('#MY_inputph').val() == "") alert('연락처 입력란이 비어있습니다.');
    else {
        $('#phone').val($('#MY_inputph').val());
        $('#MY_phoneModal').modal('hide');
    }

});

$("#MY_updcompbtn").on('click', function () {
    $('#uno').val()
    $('#phone').val()
    $('#passwd').val()

    $('#MY_updateusr').attr("action", "/mypage/update")
    $('#MY_updateusr').attr("method", "post")

    $('#MY_updateusr').submit()

});