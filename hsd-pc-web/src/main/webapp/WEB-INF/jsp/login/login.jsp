<html>
<head>
    <title>한솥도시락 > 로그인</title>

    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.login.css" />

    <!-- HSD GA4 Google tag (gtag.js) 2024.05.28 -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=G-H1K45E95JV"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'G-H1K45E95JV');
	</script>

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-111772169-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-111772169-1');
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

<div class="content login bg_none">
    <section class="login_page mo_version">
        <!-- 로그인 form -->
        <div class="login_wrap">
            <div class="login_formcont">
                <h2 class="h2_tit">로그인</h2>
                <!-- form -->
                <form:form id="loginForm" name="loginForm" method="post" action="${cp}/authentication" cssClass="login_form">
                    <input type="hidden" id="_targetUrl" name="_targetUrl" value="${param._targetUrl}"/>
                    <fieldset>
                        <legend>로그인</legend>
                        <!-- id,pw 입력폼 -->
                        <div class="area_login">
                            <!-- 아이디 -->
                            <div class="in_box">
                            <span class="form text">
                                <input type="text" id="userid" minlength="6" maxlength="20" name="userid">
                                <label for="userid">아이디</label>
                            </span>
                            </div>
                            <!-- //아이디 -->
                            <!-- 비밀번호 -->
                            <div class="in_box">
                            <span class="form text">
                                <input type="password" id="userpwd" minlength="8" name="userpwd" autocomplete="new-password">
                                <label for="userpwd">비밀번호</label>
                            </span>
                            </div>
                            <!-- //비밀번호 -->
                        </div>
                        <!--// id,pw 입력폼 -->
                        <!-- check -->
                        <div class="area_check">
                            <span class="form checkbox">
                                <input type="checkbox" id="saveid">
                                <label for="saveid">아이디 저장</label>
                            </span>
                            <span class="find_idpw">
                                <a href="${cp}/login/login_find">아이디/비밀번호찾기</a>
                            </span>
                        </div>
                        <!-- //check -->
                        <!-- 로그인 btn -->
                        <div class="btn_wrap">
                            <span class="btn btn_st02"><a href="#none" class="c_01 disabled" id="btnlogin" onclick="checkSubmit();">로그인</a></span>
                            <c:if test="${param.error != null}">
                            <p class="result_comment false lo_false">아이디 또는 비밀번호를 잘못 입력하셨습니다</p>
                            </c:if>
                        </div>
                        <!-- //로그인 btn -->
                    </fieldset>
                </form:form>
                <!-- //form -->
            </div>
        </div>
        <!-- //로그인 form -->
        <!-- 회원가입 선택 -->
        <div class="join_select">
            <span><img src="${cp}/assets/images/login/join_temp_01.jpg" alt="bg" /></span>
            <div class="join_formcont">
                <h3 class="h3_tit">한솥 회원이 아니신가요?</h3>
                <p class="txt">회원이 되시면 한솥 도시락의 다양한 정보와 이벤트를 만나보실 수 있습니다.</p>
                <!-- btn -->
                <div class="btn_wrap">
                    <span class="btn btn_st02"><a href="${cp}/join/join_step1" class="c_02">회원가입</a></span>
                </div>
                <!-- //btn -->
            </div>
        </div>
        <!-- //회원가입 선택 -->
    </section>
</div>

<script type="text/javascript">
//<![CDATA[

$(function() {
    $("#userpwd").on("keyup",function(event){
        if(event.keyCode == 13) checkSubmit();
    });
    // 로그인 버튼 활성화
    $("#loginForm > :text, :password").keyup(function(){
        if($("#userid").val() !="" && $("#userpwd").val() != "")
            $("#btnlogin").removeClass("disabled");
        else
            $("#btnlogin").addClass("disabled");
    });

    // 아이디 저장
    if($.cookie("saveid") != "" && $.cookie("saveid") != undefined) {
        $("#userid").val($.cookie("saveid"));
        $("#saveid").attr("checked", true);
        $("#userpwd").focus();
    }else{
        $("#userid").focus();
    }

});

// 로그인
function checkSubmit(){

    if($("#btnlogin").hasClass("disabled")){
        return;
    }

    if($("#saveid").is(":checked")) {
        $.cookie("saveid", $("#userid").val(), {expires:30, path : "<c:url value='/' />"});
    }else{
        $.cookie("saveid","", {expires:-1});
    }

    document.loginForm.submit();
}
//]]>
</script>

</body>
</html>
