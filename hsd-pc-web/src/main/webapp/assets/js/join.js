$(function(){
    //  비밀번호 확인(가입, 수정)
    $("#newPassword, #newPasswordRe").on("focusout",function(){
        if($("#newPassword").val() != "" && $("#newPasswordRe").val() != ""){

            if($("#newPassword").val() != $("#newPasswordRe").val()){
                $(".pwResultFalse").show();
                $(".pwResultTrue").hide();
            }else{
                $(".pwResultFalse").hide();
                $(".pwResultTrue").show();
            }

        } else {
            $(".pwResultFalse, .pwResultTrue").hide();
        }
    });
});

// 휴대폰 본인인증 팝업
function fnAuthMobile(){
    var PCC_window = window.open("/join/auth_cert", "_target", "width=410, height=500, scrollbar=yes");
    if(PCC_window == null){
        alert(" ※ 윈도우 XP SP2 또는 인터넷 익스플로러 7 사용자일 경우에는 \n    화면 상단에 있는 팝업 차단 알림줄을 클릭하여 팝업을 허용해 주시기 바랍니다. \n\n※ MSN,야후,구글 팝업 차단 툴바가 설치된 경우 팝업허용을 해주시기 바랍니다.");
    }
    PCC_window.focus();
}

// 휴대폰 본인인증 팝업 로그인 비밀번호 5회이상 실패시
function fnAuthMobileForLogin(){
  var PCC_window = window.open("/login/auth_cert", "_target", "width=410, height=500, scrollbar=yes");
  if(PCC_window == null){
    alert(" ※ 윈도우 XP SP2 또는 인터넷 익스플로러 7 사용자일 경우에는 \n    화면 상단에 있는 팝업 차단 알림줄을 클릭하여 팝업을 허용해 주시기 바랍니다. \n\n※ MSN,야후,구글 팝업 차단 툴바가 설치된 경우 팝업허용을 해주시기 바랍니다.");
  }
  PCC_window.focus();
}

// 휴대폰 본인인증 후 호출되는 함수(가입)
function fnAuthData(name, cellNo, di, reqNum) {
    if($("#authForm").length > 0) { // 가입
        $("#name").val(name);
        $("#mobilePhone").val(cellNo);
        $("#di").val(di);
        $("#mobileCertificationReqNum").val(reqNum);

        fnGetMember();
    }else if($("#modifyForm").length > 0){ // 정보수정

        fnAuthModify(name, cellNo, di, reqNum);
    } else if($("#authFormForLogin").length > 0) {
      $("#name").val(name);
      $("#mobilePhone").val(cellNo);
      $("#di").val(di);
      $("#mobileCertificationReqNum").val(reqNum);

      $("#authFormForLogin").submit();

    } else{
        alert("잘못된 접근입니다.");
    }
}

// 정보수정
function fnAuthModify(name, cellNo, di, reqNum) {
    $.ajax({
        url: "/api/member/modify_auth",
        type: "POST",
        headers: {
            Accept : "application/json; charset=utf-8",
            "Content-Type": "application/json; charset=utf-8"
        },
        data: JSON.stringify({name: name, mobile_phone: cellNo, di: di, mobile_certification_req_num: reqNum})
    }).done(function(){
        $(".username").text(name);
        $("#phone").val(cellNo);
        $(".hpResultTrue").show();

        tss.util.alert("인증처리가 완료되었습니다.");

    }).fail(function() {
        tss.util.alert("일시적인 오류가 발생했습니다.\n화면을 새로고침 한 이후에 다시 시도해 주세요.");
    });
}

// 회원가입여부 체크(가입)
function fnGetMember() {
    $.ajax({
        url: "/api/member/find",
        type: "POST",
        headers: {
            Accept : "application/json; charset=utf-8",
            "Content-Type": "application/json; charset=utf-8"
        },
        data: JSON.stringify(tss.util.serializeObject($("#authForm")))
    }).done(function(data){

        if(data){
            tss.util.alert("인증을 완료하였습니다.");
            $("#authForm").submit();
        }else{
            tss.util.alert("고객님께서는 이미 한솥도시락 회원으로 가입되어 있습니다.\n로그인 화면으로 이동합니다.");
            location.href = "/login";
        }

    }).fail(function() {
        tss.util.alert("일시적인 오류가 발생했습니다.\n화면을 새로고침 한 이후에 다시 시도해 주세요.");
    });
}

// 아이디 중복확인(회원가입)
function chkId(){
    var memId = $.trim($("#memId").val());
    if(memId == ""){
        tss.util.alert("아이디를 입력해주세요.");
        $("#memId").focus();
        $(".idResultTrue").hide();
        $(".idResultFalse").hide();
        return;
    }

    if(!tss.validate.id(memId)){
       tss.util.alert("아이디는 영문,숫자의 조합으로 6자~20자로 입력해 주세요.");
        $("#memId").focus();
        $(".idResultTrue").hide();
        $(".idResultFalse").hide();
        return;
    }

    $.ajax({
        url: "/api/member/idchk",
        type: "POST",
        data: "id=" + memId,
        success: function(data){
            if(data != ""){ // 사용가능
                $(".idResultTrue").show();
                $(".idResultFalse").hide();
                $("#id").val(data);
                document.complateForm.id.value = data;
            }else{
                $(".idResultTrue").hide();
                $(".idResultFalse").show();
                $("#id").val("");
                document.complateForm.id.value = "";
            }
        }
    }).fail(function() {
        tss.util.alert("일시적인 오류가 발생했습니다.\n화면을 새로고침 한 이후에 다시 시도해 주세요.");
    });

}

// 회원탈퇴(회원정보수정)
function memberOut()
{
    if(confirm("정말 탈퇴하시겠습니까?")){
        $.ajax({
            type: 'DELETE',
            url: "/api/member/current",
            headers: {
                Accept : "application/json; charset=utf-8",
                "Content-Type": "application/json; charset=utf-8"
            }
        }).done(function(data) {
            tss.util.alert("탈퇴하였습니다.");
            location.reload();
        }).fail(function() {
            tss.util.alert("일시적인 오류가 발생했습니다.\n화면을 새로고침 한 이후에 다시 시도해 주세요.");
        });
    }
}
