<html>
<head>
    <title>한솥도시락 > 아이디/비밀번호 찾기</title>

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

<div class="content login">
    <section class="login_complete mo_version">
        <!-- 아이디/비밀번호 찾기 -->
        <div class="find_wrap login_pa tab_st01">
            <h2 class="h2_tit h2_02">아이디/비밀번호 찾기</h2>
            <div class="tab_wrap">
                <ul class="tab_menu col_02">
                    <li <c:if test="${mode eq 'id'}"> class="active" </c:if> ><a href="${cp}/login/login_find?mode=id">아이디 찾기</a></li>
                    <li <c:if test="${mode eq 'pw'}"> class="active" </c:if> ><a href="${cp}/login/login_find?mode=pw">비밀번호 찾기</a></li>
                </ul>
            </div>

            <c:if test="${mode eq 'id'}">
            <!-- 아이디찾기 -->
            <div class="tab_cont id_complete active">
                <h3 class="h3_tit blind">아이디 결과</h3>

                <div class="result true">
                    <p class="resule_txt"><span>${name}</span>님의 아이디를 찾았습니다!</p>
                    <p class="resule_id">${id}</p>
                    <!-- 로그인 btn -->
                    <div class="btn_wrap">
                        <span class="btn btn_st02"><a href="${cp}/login" class="c_02">로그인</a></span>
                        <span class="btn btn_login btn_main"><a href="${cp}/">메인으로 가기</a></span>
                    </div>
                    <!-- 로그인 btn -->
                </div>
            </div>
            <!-- //아이디찾기 -->
            </c:if>


            <c:if test="${mode eq 'pw'}">
            <!-- 비밀번호 찾기 -->
            <div class="tab_cont pw_complete active">
                <h3 class="h3_tit blind">비밀번호 결과</h3>
                <div class="result true">
                    <p class="resule_txt">
                        <span class="s_block"><em class="emphasis">${name}</em>님의 휴대폰으로</span>
                        <span class="s_block">임시 비밀번호를 보내드렸습니다.</span>
                        <span class="s_block">임시 비밀번호를 확인 후 로그인 해주세요.</span>
                    </p>
                    <p class="resule_id"><ui:phonenumber phone="${mobile_phone}" /></p>
                    <div class="btn_wrap">
                        <span class="btn btn_st02"><a href="${cp}/login" class="c_02">로그인</a></span>
                        <span class="btn btn_login btn_main"><a href="${cp}/">메인으로 가기</a></span>
                    </div>
                </div>
            </div>
            <!-- //비밀번호 찾기 -->
            </c:if>
        </div>
        <!-- //아이디/비밀번호 찾기 -->
    </section>
</div>

</body>
</html>
