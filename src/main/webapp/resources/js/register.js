// agree
$('#ag_okbtn').on('click', function () {
    if (!$('#agree1').is(':checked'))
        alert('이용약관에 동의하지 않으면 회원가입을 할 수 없습니다.');
    else if (!$('#agree2').is(':checked'))
        alert('개인정보 활용에 동의하지 않으면 회원가입을 할 수 없습니다.')
    else
        location.href = '/member/info';});
$('#ag_nobtn').on('click', function () {
    location.href = '/';});


// info
$('#in_nameInput').on('blur', function () {
    let val = $('#in_nameInput').val();
    if (val == '') {
        $('#in_name').text("이름이 입력되어 있지 않습니다.");
        $('#in_name').attr('style', 'color:red; margin-top: 5px; !important');
    }});
$('#in_idInput').on('blur', function () {
    let val = $('#in_idInput').val();
    checkID();
    if (val == '') {
        $('#in_id').text("이메일이 입력되어 있지 않습니다.");
        $('#in_id').attr('style', 'color:red; margin-top: 5px; !important');
    }});
$('#in_pwInput').on('blur', function () {
    let val = $('#in_pwInput').val();
    if (val == '') {
        $('#in_pw').text("비밀번호를 입력하세요.");
        $('#in_pw').attr('style', 'color:red; margin-top: 5px; !important');
    }});
$('#in_rpInput').on('blur', function () {
    let val = $('#in_rpInput').val();
    if (val == '') {
        $('#in_rp').text("비밀번호를 다시 한 번 입력하세요.");
        $('#in_rp').attr('style', 'color:red; margin-top: 5px; !important');
    }});

// 이메일 중복검사.
function checkID() {
    let email = $('#in_idInput').val();
    $.ajax({ // 비동기 요청 설정
        url: '/member/checkID',
        type: 'GET', data: {email: email}
    })
        .done(function (data) { // 성공시
            let msg = ' 이미 가입되어 있는 E-Mail 주소입니다.';
            $('#in_id').attr('style', 'color:red; margin-top: 5px; !important');
            if (data.trim() == '0') {
                msg = ' 사용할 수 있는 E-Mail 주소입니다.';
                $('#in_id').attr('style', 'color:blue; margin-top: 5px; !important');
            }
            $('#in_id').text(msg);})
        .fail(function (xhr, status, error) { // 실패시
            alert(xhr.status, +"/" + error);});
    }

// 체크박스 체크여부에 따라 컬럼 alarm 에 Y/N 값을 입력
$('#in_okbtn').on('click', function () {
    if ($('#in_nameInput').val() == "") alert('이름을 입력하세요');
    else if ($('#in_idInput').val() == "") alert('이메일을 입력하세요.');
    else if ($('#in_pwInput').val() == "") alert('비밀번호를 입력하세요');
    else if ($('#in_rpInput').val() == "") alert('비밀번호를 다시 한 번 입력하세요');
    else if ($('#in_pwInput').val() != $('#in_rpInput').val()) alert('비밀번호가 서로 일치하지 않습니다');
    else if ($('#zip1').val() == "" || $('#zip2').val() == "" || $('#in_adInput').val() == "") alert('우편번호를 검색하세요');
    else if ($('#in_adInput').val() == "") alert('주소를 입력하세요');
    else if ($('#JM_check').is(":checked") == false) alert('본인은 만 14세 이상 동의를 체크하세요');

    else { // 양식에서 받은 데이터를 전송. 실제전송은 joinme 부분 hidden에서 이루어짐.
        $('#username').val($('#in_nameInput').val());
        $('#passwd').val($('#in_pwInput').val());
        $('#email').val($('#in_idInput').val());
        $('#zipcode').val($('#zip1').val() + '-' + $('#zip2').val());
        $('#addr').val($('#in_adInput').val());
        if ($('#in_alarm').is(":checked") == true) {
            $('#alarm').val('Y')
        } else {
            $('#alarm').val('N')
        }
        $('#newMember').attr('action', '/member/info')
        $('#newMember').attr('method', 'post')
        $('#newMember').submit();
    }});

// zip modal 닫기
$('#zip_modalX').on('click', function () {
    // 기존 검색결과 제거
    $('#zip_addr').find("option").remove();
    $('#dong').val('');
    // 검색창 닫음
    $('#zip_modal').modal('hide');});

// ZIP modal 에서 검색하기  누를시
$('#zip_find').on('click', function () {
    if ($('#dong').val() == "") alert('동을 입력하세요');
    else {
        $.ajax({
            url: '/member/findZip',
            type: 'GET',
            data: {dong: $('#dong').val()}
        })
            .done(function (data) {
                let opts = "";
                $.each(data, function () { // 행단위 반복처리
                    let zip = "";
                    $.each(this, function (k, v) { // 열단위 반복처리
                        if (v != null) zip += v + " ";
                    });
                    opts += '<option>' + zip + '</option>'; // option 태그를 만든다.
                });
                // 기존 option 태그 제거
                $('#zip_addr').find("option").remove();
                // 새로만든 option 태그를 추가.
                $('#zip_addr').append(opts);})
            .fail(function (xhr, status, error) {
                alert(xhr.status, +"/" + error);});
    }});

// 우편번호 보내기
$('#zip_sendBtn').on('click', function () {
    let addr = $('#zip_addr option:selected').val();

    // 주소가 선택되지 않았을 경우 예외를 처리하는 부분
    if (addr == undefined) {
        alert('주소가 선택되지 않았습니다.')
        return;
    }

    let addr1 = addr.substring(0, 7);    // 123-456
    let addr2 = addr.substring(7);      // 가나다라마바사

    $('#zip1').val(addr1.split('-')[0]);
    $('#zip2').val(addr1.split('-')[1]);
    $('#in_adInput').val(addr2);

    // 기존 검색결과를 제거.
    $('#zip_addr').find("option").remove();
    $('#dong').val('');

    // 우편번호 검색창 닫음.
    $('#zip_modal').modal('hide');});


// joinok
!$('#goMain').on('click', function () {
    location.href = '/';
});
!$('#addPet').on('click', function () {
    location.href = '/members/add-pet';
});

// add-pet 고양이 등록
$('#AP_okbtn').on('click', function () {
    if ($('#AP_nameInput').val() == "") alert('고양이 이름을 입력하세요');
    else if ($('#AP_kindInput').val() == "" || $('#AP_kindInput').val() == undefined) alert('품종을 선택해주세요');
    else if ($('#AP_yearInput').val() == "" || $('#AP_yearInput').val() == null) alert('태어난 년도를 선택해주세요');
    else if ($('#AP_monthInput').val() == "" || $('#AP_monthInput').val() == null) alert('태어난 월을 선택해주세요');
    else if ($('#AP_genderInput').val() == "" || $('#AP_genderInput').val() == null) alert('성별을 선택해주세요');
    else if ($('#AP_weightInput').val() == "") alert('고양이 무게를 입력하지 않았거나 숫자 이외의 문자가 포함되어 있습니다.');

    else { // 양식에서 받은 데이터를 전송.
        $('#catname').val($('#AP_nameInput').val());
        $('#catkind').val($('#AP_kindInput').val());
        $('#catyear').val($('#AP_yearInput').val());
        $('#catmonth').val($('#AP_monthInput').val());
        $('#catgender').val($('#AP_genderInput').val());
        $('#catweight').val($('#AP_weightInput').val());
        if ($('#AP_priInput').is(":checked") == true) {
            $('#prima').val('Y')
        } else {
            $('#prima').val('N')
        }

        $('#AP_okbtn').attr('action', '/members/add-pet') // 이 action을 해당 주소에서 실행한다.
        $('#AP_okbtn').attr('method', 'post')


        // 값이 잘 입력되었는지를 판별. 실제 시스템 구동에는 필요없는 부분.
        alert($('#AP_nameInput').val() + "/" + $('#AP_kindInput').val() + "/" +
            $('#AP_yearInput').val() + "/" + $('#AP_monthInput').val() + "/"
            + $('#AP_genderInput').val() + "/" + $('#AP_weightInput').val() + "/" + $('#prima').val());
        // true = 값이 없음(비정상) / false = 값이 존재(정상)
        alert(($('#AP_genderInput').val() == "" || $('#AP_weightInput').val() == ""));

        $('#AP_okbtn').submit();
    }
});


// sign-in 로그인 처리
$("#LI_okbtn").on('click', function () {
    if ($('#LI_emailInput').val() == '') alert('아이디를 입력하세요');
    else if ($('#LI_pwInput').val() == '') alert('비밀번호를 입력하세요');
    else {
        $("#email").val($('#LI_emailInput').val())
        $("#passwd").val($('#LI_pwInput').val())

        $('#logMember').attr("action", "/login/login")
        $('#logMember').attr("method", "post")

        alert($('#email').val() + "/" + $('#passwd').val());

        $('#logMember').submit()
    }
});

$("#LI_nobtn").on('click', function () {
    location.href = '/members/agree';
});


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