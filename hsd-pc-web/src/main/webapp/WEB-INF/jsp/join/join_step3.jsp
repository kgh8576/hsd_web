<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>한솥도시락 > 회원가입 > 03.개인정보 입력</title>

    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.join.css" />
    <script type="text/javascript" src="${cp}/assets/js/join.js"></script>

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

<div class="content join"><!--1depth-->
    <section class="join_step_03 mo_version"><!--2depth-->
        <!-- 회원가입_약관동의 -->
        <div class="join_step_wrap">
            <h2 class="h2_tit h2_01">회원가입</h2>
            <div class="join_step_cont cont_st01">
                <!-- join_left -->
                <div class="join_tit">
                    <h3 class="h3_tit">개인정보 입력</h3>
                    <p>
                        <span class="s_block"><em class="emphasis">${name}</em>님, 환영합니다.</span>
                        <span class="s_block">간단한 개인정보를 입력해주시면</span>
                        <span class="s_block">회원가입이 완료됩니다.</span>
                    </p>
                </div>
                <!-- //join_left -->
                <!-- join_right -->
                <div class="join_sub">
                <form:form id="joinForm" name="joinForm" method="post" action="">
                    <input type="hidden" name="name" value="${name}" />
                    <input type="hidden" name="mobile_phone" value="${mobilePhone}" />
                    <input type="hidden" name="di" value="${di}" />
                    <input type="hidden" name="mobile_certification_req_num" value="${mobileCertificationReqNum}" />
                    <input type="hidden" name="agree_use" value="${agree_use}" />
                    <input type="hidden" name="agree_personal" value="${agree_personal}" />
                    <input type="hidden" name="agree_3rd" value="${agree_3rd}" />
                    <input type="hidden" id="id" name="id" value="" />
                    <!-- 필수 입력 사항 -->
                    <div class="join_form">
                        <h4 class="h4_tit">필수 입력 사항</h4>
                        <!-- 아이디입력 -->
                        <div class="in_box">
                            <dl class="in_box_th">
                                <dt>아이디</dt>
                                <dd>
                                    <span class="form text">
                                        <input type="text" id="memId" maxlength="20" name="memId">
                                        <label for="memId">아이디를 입력해 주세요</label>
                                        <a href="javascript:chkId();" class="btn_overlap">중복확인</a>
                                    </span>
                                    <p class="result_comment true idResultTrue" style="display:none;">사용 가능한 아이디 입니다</p>
                                    <p class="result_comment false idResultFalse" style="display:none;">이미 등록된 아이디 입니다</p>
                                </dd>
                            </dl>
                            <!-- 캡션 -->
                            <p class="caption">영문, 숫자로만 6~20자</p>
                            <!-- //캡션 -->
                        </div>
                        <!-- //아이디입력 -->
                        <!-- 비밀번호 -->
                        <div class="in_box in_pw">
                            <dl class="in_box_th">
                                <dt>비밀번호</dt>
                                <dd>
                                    <!--비밀번호-->
                                    <span class="form text">
                                        <input type="password" id="newPassword" name="newPassword">
                                        <label for="newPassword">비밀번호를 입력해주세요</label>
                                    </span>
                                    <!--비밀번호-->
                                    <!--비밀번호 확인-->
                                    <span class="form text">
                                        <input type="password" id="newPasswordRe" name="newPasswordRe">
                                        <label for="newPasswordRe">비밀번호를 한번 더 입력해주세요</label>
                                    </span>
                                    <p class="result_comment true pwResultTrue" style="display:none;">비밀번호가 일치합니다</p>
                                    <p class="result_comment false pwResultFalse" style="display:none;">비밀번호가 일치하지 않습니다</p>
                                </dd>
                            </dl>
                            <!-- 캡션 -->
                            <p class="caption">영문(대소문자 구별),숫자,특수문자 8자 이상</p>
                            <!-- //캡션 -->
                        </div>
                        <!-- //비밀번호 -->
                        <!-- 이메일 -->
                        <div class="in_box">
                            <dl class="in_box_th">
                                <dt>이메일</dt>
                                <dd>
                                    <span class="form text">
                                        <input type="text" id="email" name="email" style="ime-mode:active">
                                        <label for="email">이메일 주소를 입력해주세요</label>
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
                                        <input type="text" id="phone" disabled="disabled" class="loadtext" value="${mobilePhone}">
                                        <label for="phone"></label>
                                    </span>
                                </dd>
                            </dl>
                            <!-- 캡션 -->
                            <p class="result_comment true">인증이 완료되었습니다</p>
                            <!-- //캡션 -->
                        </div>
                        <!-- //휴대폰 -->
                    </div>
                    <!-- //필수 입력 사항 -->
                    <!-- 광고성 정보 수신동의 -->
                    <div class="ad_wrap">
                        <h4 class="h4_tit">광고성 정보 수신 동의</h4>
                        <p class="ad_txt">이벤트 및 각종 할인 혜택에 대한 정보를 이메일/SMS 로 수신하겠습니다.
                            ※ 마케팅 활용 및 개인정보 보유 기간은 수신 거부 또는 회원 탈퇴시 까지입니다.
                            귀하는 수신 동의를 거부하실 권리가 있으며, 동의를 거부하실 경우 정보 제공이 제한될 수 있습니다.</p>
                        <span class="form checkbox">
                            <input type="checkbox" id="fck_email_agree" name="email_reception_flag" value="Y">
                            <label for="fck_email_agree">온라인 사이트 이메일 수신 동의</label>
                            <em class="txt_select">(선택)</em>
                        </span>
                        <span class="form checkbox">
                            <input type="checkbox" id="fck_letter_agree" name="sms_reception_flag" value="Y">
                            <label for="fck_letter_agree">온라인 사이트 문자 수신 동의</label>
                            <em class="txt_select">(선택)</em>
                        </span>
                    </div>
                    <!-- //광고성 정보 수신동의 -->

                    <!-- btn -->
                    <div class="btn_wrap">
                        <span class="btn btn_st03">
                            <a href="#none" class="c_01" onclick="$('#joinForm').submit();">가입하기</a>
                        </span>
                    </div>
                    <!-- //btn -->
                </form:form>

                <form:form id="complateForm" name="complateForm" method="post" action="${cp}/join/join_step4">
                <input type="hidden" name="id" value="" />
                <input type="hidden" name="name" value="${name}" />
                </form:form>
                </div>
                <!-- //join_right -->
            </div>
        </div>
        <!-- //회원가입_약관동의 -->
    </section>
</div>
<script type="text/javascript">
    $(function(){
        // validate & submit
        $('#joinForm').validate({
            rules: {
                memId: {
                  required: true,
                  chkId: true
                },
                id: {
                  equalTo: $("#memId")
                },
                newPassword: {
                    required: true,
                    chkPassword : true
                },
                newPasswordRe: {
                    required: true,
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
                memId:{
                  required: "아이디를 입력해 주세요.",
                  chkId: "아이디는 영문,숫자의 조합으로 6자~20자로 입력해 주세요."
                },
                id: {
                  equalTo: "아이디 중복확인을 해주세요."
                },
                newPassword: {
                    required: "비밀번호를 입력해 주세요.",
                    chkPassword : "비밀번호는 영문(대소문자 구별), 숫자, 특수문자의 조합으로 8자~16자로 입력해 주세요."
                },
                newPasswordRe: {
                    required: "비밀번호를 다시한번 입력해 주세요.",
                    equalTo: "비밀번호와 비밀번호 확인이 다릅니다. 다시 확인해 주세요."
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
                    url: "${cp}/api/member/join",
                    headers: {
                        Accept : "application/json; charset=utf-8",
                        "Content-Type": "application/json; charset=utf-8"
                    },
                    data: JSON.stringify(tss.util.serializeObject($(form))),
                    dataType : "json"
                }).done(function(data) {
                    if(data.msg == "bad"){
                        tss.util.alert("잘못된 접근입니다.");
                    }else if(data.msg == "already"){
                        tss.util.alert("이미 등록된 아이디 입니다.");
                    }else if(data.msg == "ok"){
                        $("#complateForm").submit();
                    }else{
                       alert(data.msg);
                    }
                }).fail(function() {
                    tss.util.alert("일시적인 오류가 발생했습니다.\n화면을 새로고침 한 이후에 다시 시도해 주세요.");
                });
            }
        });
    });
</script>
</body>
</html>
