<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>한솥도시락 > 내 정보 수정</title>

    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.join.css" />

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-111772169-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-111772169-1');
    </script>

    <!-- HSD GA4 Google tag (gtag.js) 2024.05.28 -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=G-H1K45E95JV"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'G-H1K45E95JV');
	</script>

    <!-- Global site tag (gtag.js) - AdWords: 864658366 -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=AW-864658366"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'AW-864658366');
    </script>

    <!-- kakao pixcel -->
    <script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
    <script type="text/javascript">
        kakaoPixel('5575357302971415199').pageView();
    </script>

    <!-- Facebook Pixel Code -->
    <script>
        !function(f,b,e,v,n,t,s)
        {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
            n.callMethod.apply(n,arguments):n.queue.push(arguments)};
            if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
            n.queue=[];t=b.createElement(e);t.async=!0;
            t.src=v;s=b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t,s)}(window,document,'script',
            'https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '241666853119648');
        fbq('track', 'PageView');
    </script>
    <noscript>
        <img height="1" width="1" src="https://www.facebook.com/tr?id=241666853119648&ev=PageView&noscript=1"/>
    </noscript>
    <!-- End Facebook Pixel Code -->

</head>
<body>

<div class="content join">
    <section class="modify mo_version">
        <!-- 내 정보 수정 -->
        <div class="join_step_wrap tab_st01">
            <h2 class="h2_tit h2_01">내정보 수정</h2>
            <div class="tab_wrap">
                <ul class="tab_menu col_02">
                    <li class="active"><a href="#none">내정보 수정</a></li>
                    <li><a href="${cp}/join/question_list">1:1 문의</a></li>
                </ul>
            </div>
            <div class="join_step_cont cont_st01">
                <!-- join_left -->
                <div class="join_tit">
                    <h3 class="h3_tit blind">내 정보</h3>
                    <!-- pc -->
                    <p class="pc_s_block">
                        <span class="s_block"><em class="emphasis username">${currentUser.name}</em>님,</span>
                        <span class="s_block">안녕하세요.</span>
                        <span class="s_block">회원님의 아이디는</span>
                        <span class="s_block"><em class="emphasis">${currentUser.id}</em></span>
                        <span class="s_block">입니다.</span>
                    </p>
                    <!-- //pc -->
                    <!-- mobile -->
                    <p class="mo_s_block">
                        <span class="s_block"><em class="emphasis username">${currentUser.name}</em>님, 안녕하세요.</span>
                        <span class="s_block">회원님의 아이디는</span>
                        <span class="s_block"><em class="emphasis">${currentUser.id}</em> 입니다.</span>
                    </p>
                    <!-- //mobile -->
                </div>
                <!-- //join_left -->
                <!-- join_right -->
                <div class="join_sub">
                    <!-- 개인 정보 변경 -->
                    <form:form name="modifyForm" id="modifyForm" method="post">
                    <div class="join_form">
                        <h4 class="h4_tit">개인 정보 변경</h4>
                        <!-- 비밀번호 -->
                        <div class="in_box in_pw">
                            <dl class="in_box_th">
                                <dt>비밀번호</dt>
                                <dd>
                                    <span class="form text">
                                        <input type="password" id="orgPassword" name="orgPassword">
                                        <label for="orgPassword">현재 비밀번호를 입력해주세요</label>
                                    </span>
                                    <span class="form text">
                                        <input type="password" id="newPassword" name="newPassword">
                                        <label for="newPassword">새 비밀번호를 입력해주세요</label>
                                    </span>
                                    <span class="form text">
                                        <input type="password" id="newPasswordRe" name="newPasswordRe">
                                        <label for="newPasswordRe">새 비밀번호를 한번 더 입력해주세요</label>
                                    </span>
                                    <p class="result_comment true pwResultTrue" style="display:none;">비밀번호가 일치합니다</p>
                                    <p class="result_comment false pwResultFalse" style="display:none;">비밀번호가 일치하지 않습니다.</p>
                                </dd>
                            </dl>
                            <!-- 캡션 -->
                            <p class="caption">영문(대소문자 구별),숫자,특수문자 8자이상</p>
                            <!-- //캡션 -->
                        </div>
                        <!-- //비밀번호 -->
                        <!-- 이메일 -->
                        <div class="in_box">
                            <dl class="in_box_th">
                                <dt>이메일</dt>
                                <dd>
                                    <span class="form text">
                                        <input type="text" id="email" name="email" value="${currentUser.email}" style="ime-mode:active" />
                                    </span>
                                </dd>
                            </dl>
                        </div>
                        <!-- //이메일 -->
                        <!-- 휴대폰 -->
                        <div class="in_box">
                            <dl class="in_box_th">
                                <dt>휴대폰</dt>
                                <dd>
                                    <span class="form text">
                                        <input type="text" id="phone" value="${currentUser.mobile_phone}" class="loadtext" disabled="disabled" />
                                        <a href="#none" onclick="fnAuthMobile();" class="btn_overlap">재인증</a>
                                    </span>
                                    <p class="result_comment true hpResultTrue" style="display:none;">인증이 완료되었습니다.</p>
                                </dd>
                            </dl>
                        </div>
                        <!-- //휴대폰 -->
                    </div>
                    <!-- //개인 정보 변경 -->
                    <!-- 광고성 정보 수신동의 -->
                    <div class="ad_wrap">
                        <h4 class="h4_tit">광고성 정보 수신 동의</h4>
                        <p class="ad_txt">수신 동의하시고 한솥 도시락의 다양한 혜택과 이벤트 소식을 받아보세요.</p>
                        <span class="form checkbox">
                            <input type="checkbox" id="fck_email_agree" name="email_reception_flag" value="Y" <c:if test="${currentUser.email_reception_flag eq 'Y'}">checked</c:if> />
                            <label for="fck_email_agree">온라인 사이트 이메일 수신 동의</label>
                            <em class="txt_select">(선택)</em>
                        </span>
                        <span class="form checkbox">
                            <input type="checkbox" id="fck_letter_agree" name="sms_reception_flag" value="Y" <c:if test="${currentUser.sms_reception_flag eq 'Y'}">checked</c:if> />
                            <label for="fck_letter_agree">온라인 사이트 문자 수신 동의</label>
                            <em class="txt_select">(선택)</em>
                        </span>
                    </div>
                    <!-- //광고성 정보 수신동의 -->

                   <!-- btn -->
                    <div class="modify_btn_wrap">
                        <!-- 탈퇴btn -->
                        <div class="btn_wrap fl_l">
                            <span class="btn btn_st04"><a href="#none" class="c_04" onclick="memberOut();">회원탈퇴</a></span>
                        </div>
                        <!-- //탈퇴btn -->
                        <!-- btn -->
                        <div class="btn_wrap col_02 fl_r">
                            <span class="btn btn_st03"><a href="#none" onclick="location.href='${cp}/';" class="c_03">취소</a></span>
                            <span class="btn btn_st03"><a href="#none" onclick="$('#modifyForm').submit();" class="active c_01" >수정</a></span>
                        </div>
                        <!--// btn -->
                    </div>
                    <!-- //btn -->
                    </form:form>
                </div>
                <!-- //join_right -->
            </div>
        </div>
        <!-- //내 정보 수정 -->
    </section>
</div>
<script type="text/javascript" src="${cp}/assets/js/join.js"></script>
<script type="text/javascript">
    $(function(){
        $.validator.addMethod("equalPassword", function(value, element) {
            var orgPassword = $("#orgPassword").val();
            if(orgPassword && orgPassword.length > 0) {
                var isSuccess = false;
                $.ajax({
                    type: 'POST',
                    url: "${cp}/api/member/current",
                    headers: {
                        Accept : "application/json; charset=utf-8",
                        "Content-Type": "application/json; charset=utf-8"
                    },
                    async: false,
                    data: JSON.stringify({ password: value }),
                    success: function(data){
                        isSuccess = data;
                    }
                });
                return isSuccess;
            } else {
                return true;
            }
        }, '');

        // validate & submit
        $('#modifyForm').validate({
            rules: {
                orgPassword: {
                    required: true,
                    equalPassword : true
                },
                newPassword: {
                    chkPassword : true
                },
                newPasswordRe: {
                    required: function(element){
                        return $("#newPassword").val() != "";
                    },
                    equalTo: "#newPassword"
                },
                email: {
                    required: true,
                    email: true
                },
                phone: {
                    required: true
                }
            },
            messages: {
                orgPassword: {
                    required: "현재 비밀번호를 입력해 주세요.",
                    equalPassword: "현재 비밀번호가 일치하지 않습니다."
                },
                newPassword: {
                    chkPassword : "비밀번호는 영문(대소문자 구별), 숫자, 특수문자의 조합으로 8자~16자로 입력해 주세요."
                },
                newPasswordRe: {
                    required: "새 비밀번호를 다시한번 입력해 주세요.",
                    equalTo: "새로 설정하실 비밀번호 정보가 일치하지 않습니다. 다시 확인해 주세요."
                },
                email: {
                    required: "이메일을 입력해 주세요.",
                    email: "이메일을 정확히 입력해 주세요."
                },
                phone: {
                    required: "휴대폰번호 인증이 필요합니다."
                }
            },
            submitHandler : function(form){
                $.ajax({
                    type: 'PUT',
                    url: "${cp}/api/member/current",
                    headers: {
                        Accept : "application/json; charset=utf-8",
                        "Content-Type": "application/json; charset=utf-8"
                    },
                    data: JSON.stringify(tss.util.serializeObject($(form)))
                }).done(function(data) {
                    tss.util.alert("정보 변경이 완료되었습니다.");
                    location.reload();
                }).fail(function() {
                    tss.util.alert("일시적인 오류가 발생했습니다.\n화면을 새로고침 한 이후에 다시 시도해 주세요.");
                });
            }
        });
    });
</script>

</body>
</html>
