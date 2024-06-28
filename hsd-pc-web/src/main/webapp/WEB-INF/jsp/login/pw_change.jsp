<html>
<head>
    <title>한솥도시락 > 비밀번호 정기 변경</title>
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
    <section class="pw_change mo_version">
        <!-- 아이디/비밀번호 찾기 -->
        <div class="pw_change_wrap">
            <h2 class="h2_tit">비밀번호 정기 변경</h2>
            <div class="change_text">
                <p>
                    <span class="s_block"><em class="mo_br">한솥도시락 회원님의</em>소중한 개인정보 보호를 위해</span>
                    <span class="s_block"><em class="emphasis">정기적인 비밀번호 변경</em>을 권장합니다.</span>
                </p>
                <!-- btn -->
                <div class="btn_wrap col_02">
                    <span class="btn btn_st03"><a href="javascript:afterPwChange();" class="c_03">나중에 변경</a></span>
                    <span class="btn btn_st03"><a href="${cp}/join/modify" class="active c_01">지금변경</a></span>
                </div>
                <!-- //btn -->
            </div>
            <div class="change_info">
                <p class="change_info_txt">
                    <span class="s_block">한솥 도시락은 회원님의 개인정보를 안전하게 보호하고 개인정보 유출 및 도용으로 인한 피해를 미리 예방하고자,</span>
                    <span class="s_block">3개월 이상 비밀번호를 변경하지 않은 경우 비밀번호 변경 안내를 시행 중에 있습니다.</span>
                    <span class="s_block mo_block">나중에 변경하기 버튼을 클릭 하시면 3개월 후 비밀번호 변경 재안내를 드리고 있으니 불편하시더라도, 비밀번호를 꼭! 변경해주세요.</span>
                </p>
            </div>
        </div>
        <!-- //아이디/비밀번호 찾기 -->
    </section>
</div>
<script type="text/javascript">
    function afterPwChange(){

        $.post("${cp}/api/member/after", function(){
            location.href = "${cp}/";
        }).fail(function(){
            location.href = "${cp}/";
        });
    }
</script>
</body>
</html>
